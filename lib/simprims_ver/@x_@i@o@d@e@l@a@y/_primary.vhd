library verilog;
use verilog.vl_types.all;
entity X_IODELAY is
    generic(
        DELAY_SRC       : string  := "I";
        HIGH_PERFORMANCE_MODE: string  := "TRUE";
        IDELAY_TYPE     : string  := "DEFAULT";
        IDELAY_VALUE    : integer := 0;
        ODELAY_VALUE    : integer := 0;
        REFCLK_FREQUENCY: real    := 2.000000e+002;
        SIGNAL_PATTERN  : string  := "DATA";
        ILEAK_ADJUST    : real    := 1.000000;
        D_IODELAY_OFFSET: real    := 0.000000;
        LOC             : string  := "UNPLACED";
        SIM_DELAY_D     : integer := 0
    );
    port(
        DATAOUT         : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        DATAIN          : in     vl_logic;
        IDATAIN         : in     vl_logic;
        INC             : in     vl_logic;
        ODATAIN         : in     vl_logic;
        RST             : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELAY_SRC : constant is 1;
    attribute mti_svvh_generic_type of HIGH_PERFORMANCE_MODE : constant is 1;
    attribute mti_svvh_generic_type of IDELAY_TYPE : constant is 1;
    attribute mti_svvh_generic_type of IDELAY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of ODELAY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of REFCLK_FREQUENCY : constant is 2;
    attribute mti_svvh_generic_type of SIGNAL_PATTERN : constant is 1;
    attribute mti_svvh_generic_type of ILEAK_ADJUST : constant is 1;
    attribute mti_svvh_generic_type of D_IODELAY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of SIM_DELAY_D : constant is 2;
end X_IODELAY;
