library verilog;
use verilog.vl_types.all;
entity X_BSCAN_VIRTEX6 is
    generic(
        DISABLE_JTAG    : string  := "FALSE";
        JTAG_CHAIN      : integer := 1;
        LOC             : string  := "UNPLACED"
    );
    port(
        CAPTURE         : out    vl_logic;
        DRCK            : out    vl_logic;
        RESET           : out    vl_logic;
        RUNTEST         : out    vl_logic;
        SEL             : out    vl_logic;
        SHIFT           : out    vl_logic;
        TCK             : out    vl_logic;
        TDI             : out    vl_logic;
        TMS             : out    vl_logic;
        UPDATE          : out    vl_logic;
        TDO             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DISABLE_JTAG : constant is 1;
    attribute mti_svvh_generic_type of JTAG_CHAIN : constant is 2;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BSCAN_VIRTEX6;
