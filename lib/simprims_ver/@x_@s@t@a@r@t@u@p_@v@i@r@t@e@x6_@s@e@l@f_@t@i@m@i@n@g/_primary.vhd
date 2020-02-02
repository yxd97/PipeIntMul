library verilog;
use verilog.vl_types.all;
entity X_STARTUP_VIRTEX6_SELF_TIMING is
    generic(
        LOC             : string  := "UNPLACED";
        PROG_USR        : string  := "FALSE"
    );
    port(
        CFGCLK          : out    vl_logic;
        CFGMCLK         : out    vl_logic;
        DINSPI          : out    vl_logic;
        EOS             : out    vl_logic;
        PREQ            : out    vl_logic;
        TCKSPI          : out    vl_logic;
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic;
        KEYCLEARB       : in     vl_logic;
        PACK            : in     vl_logic;
        USRCCLKO        : in     vl_logic;
        USRCCLKTS       : in     vl_logic;
        USRDONEO        : in     vl_logic;
        USRDONETS       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of PROG_USR : constant is 1;
end X_STARTUP_VIRTEX6_SELF_TIMING;
