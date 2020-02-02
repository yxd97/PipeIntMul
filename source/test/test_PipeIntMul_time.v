`timescale 1ns / 100ps
`include "H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/netgen/par/PipeIntMul_timesim.v"


////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:41 01/23/2020
// Design Name:   PipeIntMul
// Module Name:   H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/test_PipeIntMul.v
// Project Name:  PipeIntMul_Base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PipeIntMul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_PipeIntMul;
	
	// clock generate
	localparam clk_halfperiod = 10;
	reg clk;
	initial clk = 1'b0;
	always #clk_halfperiod clk = ~clk;
	
	//----------------------------------------------
	// Test Pipeline Integer Multiplier 
	//----------------------------------------------
	
	// Test parameters
	localparam caseN = 3;    // change HERE!!!
	localparam itemN = 208;   // change HERE!!!
	localparam inputN = 64;  // change HERE!!!
	localparam outputN = 64; // change HERE!!!
	
	// Test source memory
	reg [inputN:0] PipeIntMul_srcmem [itemN-1:0];
  reg [outputN:0] PipeIntMul_sinkmem [itemN-1:0];
	integer srcCI = 0;
  integer sinkCI = 0;
	reg EOCsrc = 0; //End Of Case
  reg EOCsink = 0; //End Of Case
	reg [inputN - 1:0] PipeIntMul_testcase_msg;
	reg [outputN - 1:0] PipeIntMul_testcase_resp;
	
	// Initialize test source/ test sink mem
	initial $readmemb("H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/request_PipeIntMul.dat",PipeIntMul_srcmem);
  initial $readmemb("H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/response_PipeIntMul.dat",PipeIntMul_sinkmem);
	integer srcaddr = 0;
  integer sinkaddr = 0;
	
	// testcase list
	localparam casename_len = 256;
	reg [8*casename_len-1:0] caselist [caseN - 1:0];
	initial begin // change HERE!!!
		caselist[0] = "Mul_test_basic";
		caselist[1] = "Mul_test_pos_pos";
		caselist[2] = "Mul_test_rand_rand";
		
	end
	
	// Initialize statistics
	integer Passed = 0;
	integer Failed = 0;
	integer Total = caseN;
	reg case_passing = 1;
  reg item_passed = 1;

	// Inputs
	reg [31:0] intA;
	reg [31:0] intB;
	reg val_op;
	reg sys_rst;
  reg core_reset;
  reg sti_rst;
	reg [inputN-1:0] PipeIntMul_inpv;
  always @* core_reset = sys_rst | sti_rst;
	always @* {intA,intB} = PipeIntMul_inpv; // change HERE!!!
	
	// Outputs
	wire [63:0] longP;
	wire commit;
  wire oprand_rdy;
	reg [outputN-1:0] PipeIntMul_outv;
	always @* PipeIntMul_outv = {longP}; // change HERE!!!

  // initial ignition
  reg start = 1'b1;	

	// Instantiate the Unit Under Test (UUT)
	PipeIntMul uut (
		.intA(intA), 
		.intB(intB), 
		.longP(longP), 
		.val_op(val_op),
    .oprand_rdy(oprand_rdy), 
		.commit(commit), 
		.clk(clk), 
		.reset(core_reset)
	);

	initial begin
		// Initialize Inputs
		PipeIntMul_inpv = {64'd0}; // change HERE!!!
    sys_rst = 1'b1;
    sti_rst = 1'b1;


		// Wait 10 cycles for global reset to finish
		#(20*clk_halfperiod);

		// Add stimulus here
		#(clk_halfperiod);
    sys_rst = 1'b0;
    sti_rst = 1'b0;
  end
  
  // test source
  reg EOCreset = 0;
  always @(posedge clk) begin
    if (srcaddr < itemN && !(sys_rst))
      if (start) begin
        start <= 1'b0;
        sti_rst <= 1'b0;
        val_op <= 1'b1;
        PipeIntMul_inpv <= PipeIntMul_srcmem[srcaddr][inputN - 1:0];
        EOCsrc <= PipeIntMul_srcmem[srcaddr][inputN];
        srcaddr <= srcaddr + 1;
      end else if (!oprand_rdy) begin
        sti_rst <= 1'b0;
        val_op <= 1'b1;
        PipeIntMul_inpv <= PipeIntMul_srcmem[srcaddr][inputN - 1:0];
        EOCsrc <= PipeIntMul_srcmem[srcaddr][inputN];
      end else if (EOCreset) begin
        sti_rst <= 1'b0;
        PipeIntMul_inpv <= PipeIntMul_srcmem[srcaddr][inputN - 1:0];
        val_op <= 1'b1;
        EOCsrc <= PipeIntMul_srcmem[srcaddr][inputN];
        EOCreset <= 0;
      end else if (EOCsrc) begin
        if (srcaddr == sinkaddr)begin
          sti_rst <= 1'b1;
          PipeIntMul_inpv <= 0;
          val_op <= 1'b0;
          EOCsrc <= 0;
          EOCreset <= 1;
          srcaddr <= srcaddr + 1;
          srcCI <= srcCI + 1;
        end
      end else begin
        sti_rst <= 1'b0;
        PipeIntMul_inpv <= PipeIntMul_srcmem[srcaddr][inputN - 1:0];
        val_op <= 1'b1;
        EOCsrc <= PipeIntMul_srcmem[srcaddr][inputN];
        srcaddr <= srcaddr + 1;
      end
    else
      val_op <= 1'b0;
  end

  // test sink
  always @(posedge clk) begin
    if (sinkaddr < itemN && !(sys_rst)) begin
      if (commit) begin
        if (PipeIntMul_outv == PipeIntMul_sinkmem[sinkaddr][outputN - 1:0]) begin
          item_passed <= 1'b1;
          case_passing <= case_passing & 1'b1;
        end else begin
          item_passed <= 1'b0;
          case_passing <= 1'b0;
          $display("Case %0s FAILED at item %0d:",caselist[sinkCI],sinkaddr);
          $display("\tExpected:%0h(%0d), Actual:%0h(%0d).",PipeIntMul_sinkmem[sinkaddr][outputN - 1:0],PipeIntMul_sinkmem[sinkaddr][outputN - 1:0],PipeIntMul_outv,PipeIntMul_outv);
        end
        
        if (PipeIntMul_sinkmem[sinkaddr][outputN] == 1'b1) begin
          sinkCI <= sinkCI + 1;
          if(case_passing) begin
            $display("Case %0s PASSED.",caselist[sinkCI]);
            Passed <= Passed + 1;
          end else Failed <= Failed + 1;
        end
          
        sinkaddr <= sinkaddr + 1;

      end
    end  
  end

  // print results
  always @(sinkaddr) begin
    if(sinkaddr >= itemN) begin
      $display("----- [ %0d PASSED, %0d FAILED, of %0d testcases] -----",Passed,Failed,Total);
      $stop;
    end
  end
	
  
      
endmodule

