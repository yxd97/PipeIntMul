module IterIntMul_ctrl(
	input val_op,
	output commit,
	output shiftA,
	output shiftB,
	output accP,
	output clrP,
	output loadA,
	output loadB,
	input clk,
	input reset
);
	// state def
	localparam IDLE = 2'd0;
	localparam LOAD = 2'd1;
	localparam CALC = 2'd2;
	localparam DONE = 2'd3;
	
	// state reg
	reg [1:0] current_state;
	reg [1:0] next_state;
	
	// calucation counter
	reg [4:0] calc_cnt;
	localparam lat = 4'd8;
	reg calc_ov;
	always @(posedge clk)
		if (reset == 1'b1)
			calc_cnt <= 4'd0;
		else
			case (current_state)
			IDLE: calc_cnt <= 4'd0;
			LOAD: calc_cnt <= 4'd0;
			CALC: 
				if (calc_cnt == lat)
					calc_cnt <= 1'b0;
				else
					calc_cnt <= calc_cnt + 1'b1;
			DONE: calc_cnt <= 4'd0;
			endcase
	
	always @* 
		if (calc_cnt == lat) 
			calc_ov = 1'b1;
		else
			calc_ov = 1'b0;
	
	// state transition
	always @(posedge clk)
		if (reset == 1'b1)
			current_state <= IDLE;
		else
			current_state <= next_state;
	
	// next state logic
	always @*
		case (current_state)
		IDLE:
			if (val_op == 1'b1)
				next_state = LOAD;
			else
				next_state = IDLE;
		LOAD:
			next_state = CALC;
		CALC:
			if (calc_ov == 1'b0)
				next_state = CALC;
			else
				next_state = DONE;
		DONE:
			next_state = IDLE;
		endcase
	
	// output logic
	reg commit_REG,shiftA_REG,shiftB_REG,loadA_REG,loadB_REG,accP_REG,clrP_REG;
	always @*
		case (current_state)
		IDLE: begin 
			commit_REG = 1'b0;
			shiftA_REG = 1'b0;
			shiftB_REG = 1'b0;
			accP_REG = 1'b0;
			clrP_REG = 1'b1;
			loadA_REG = 1'b0;
			loadB_REG = 1'b0;
		end
		
		LOAD: begin 
			commit_REG = 1'b0;
			shiftA_REG = 1'b0;
			shiftB_REG = 1'b0;
			accP_REG = 1'b0;
			clrP_REG = 1'b0;
			loadA_REG = 1'b1;
			loadB_REG = 1'b1;
		end
			
		CALC: begin 
			commit_REG = 1'b0;
			clrP_REG = 1'b0;
			loadA_REG = 1'b0;
			loadB_REG = 1'b0;
			if (calc_ov == 1'b0) begin
				shiftA_REG = 1'b1;
				shiftB_REG = 1'b1;
				accP_REG = 1'b1;
			end
			else begin
				shiftA_REG = 1'b0;
				shiftB_REG = 1'b0;
				accP_REG = 1'b0;
			end
		end
		
		DONE: begin
			commit_REG = 1'b1;
			shiftA_REG = 1'b0;
			shiftB_REG = 1'b0;
			accP_REG = 1'b0;
			clrP_REG = 1'b0;
			loadA_REG = 1'b0;
			loadB_REG = 1'b0;
		end
		endcase
	assign commit = commit_REG;
	assign shiftA = shiftA_REG;
	assign shiftB = shiftB_REG;
	assign loadA = loadA_REG;
	assign loadB = loadB_REG;
	assign accP = accP_REG;
	assign clrP = clrP_REG;
endmodule
