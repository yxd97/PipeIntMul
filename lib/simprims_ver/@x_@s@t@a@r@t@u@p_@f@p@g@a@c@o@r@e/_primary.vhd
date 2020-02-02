library verilog;
use verilog.vl_types.all;
entity X_STARTUP_FPGACORE is
    port(
        CLK             : in     vl_logic;
        GSR             : in     vl_logic
    );
end X_STARTUP_FPGACORE;
