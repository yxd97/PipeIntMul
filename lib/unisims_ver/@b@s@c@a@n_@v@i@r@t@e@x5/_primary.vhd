library verilog;
use verilog.vl_types.all;
entity BSCAN_VIRTEX5 is
    generic(
        JTAG_CHAIN      : integer := 1
    );
    port(
        CAPTURE         : out    vl_logic;
        DRCK            : out    vl_logic;
        RESET           : out    vl_logic;
        SEL             : out    vl_logic;
        SHIFT           : out    vl_logic;
        TDI             : out    vl_logic;
        UPDATE          : out    vl_logic;
        TDO             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of JTAG_CHAIN : constant is 2;
end BSCAN_VIRTEX5;
