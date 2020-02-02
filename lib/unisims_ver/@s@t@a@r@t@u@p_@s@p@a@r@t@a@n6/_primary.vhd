library verilog;
use verilog.vl_types.all;
entity STARTUP_SPARTAN6 is
    port(
        CFGCLK          : out    vl_logic;
        CFGMCLK         : out    vl_logic;
        EOS             : out    vl_logic;
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic;
        KEYCLEARB       : in     vl_logic
    );
end STARTUP_SPARTAN6;
