library verilog;
use verilog.vl_types.all;
entity X_STARTUP_SPARTAN6 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        CFGCLK          : out    vl_logic;
        CFGMCLK         : out    vl_logic;
        EOS             : out    vl_logic;
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic;
        KEYCLEARB       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_STARTUP_SPARTAN6;
