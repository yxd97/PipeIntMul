library verilog;
use verilog.vl_types.all;
entity STARTUP_FPGACORE is
    port(
        CLK             : in     vl_logic;
        GSR             : in     vl_logic
    );
end STARTUP_FPGACORE;
