library verilog;
use verilog.vl_types.all;
entity X_BSCAN_SPARTAN3 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        CAPTURE         : out    vl_logic;
        DRCK1           : out    vl_logic;
        DRCK2           : out    vl_logic;
        RESET           : out    vl_logic;
        SEL1            : out    vl_logic;
        SEL2            : out    vl_logic;
        SHIFT           : out    vl_logic;
        TDI             : out    vl_logic;
        UPDATE          : out    vl_logic;
        TDO1            : in     vl_logic;
        TDO2            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BSCAN_SPARTAN3;
