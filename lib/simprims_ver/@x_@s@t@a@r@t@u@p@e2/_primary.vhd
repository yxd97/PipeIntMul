library verilog;
use verilog.vl_types.all;
entity X_STARTUPE2 is
    generic(
        LOC             : string  := "UNPLACED";
        PROG_USR        : string  := "FALSE";
        SIM_CCLK_FREQ   : real    := 0.000000e+000
    );
    port(
        CFGCLK          : out    vl_logic;
        CFGMCLK         : out    vl_logic;
        EOS             : out    vl_logic;
        PREQ            : out    vl_logic;
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
    attribute mti_svvh_generic_type of SIM_CCLK_FREQ : constant is 2;
end X_STARTUPE2;
