library verilog;
use verilog.vl_types.all;
entity STARTUP_SPARTAN3A is
    port(
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic
    );
end STARTUP_SPARTAN3A;
