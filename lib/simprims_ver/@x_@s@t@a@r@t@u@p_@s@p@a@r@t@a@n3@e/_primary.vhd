library verilog;
use verilog.vl_types.all;
entity X_STARTUP_SPARTAN3E is
    port(
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic;
        MBT             : in     vl_logic
    );
end X_STARTUP_SPARTAN3E;
