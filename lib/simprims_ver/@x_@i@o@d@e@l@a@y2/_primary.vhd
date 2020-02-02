library verilog;
use verilog.vl_types.all;
entity X_IODELAY2 is
    generic(
        LOC             : string  := "UNPLACED";
        COUNTER_WRAPAROUND: string  := "WRAPAROUND";
        DATA_RATE       : string  := "SDR";
        DELAY_SRC       : string  := "IO";
        IDELAY2_VALUE   : integer := 0;
        IDELAY_MODE     : string  := "NORMAL";
        IDELAY_TYPE     : string  := "DEFAULT";
        IDELAY_VALUE    : integer := 0;
        ODELAY_VALUE    : integer := 0;
        SERDES_MODE     : string  := "NONE";
        SIM_IDATAIN_INDELAY: integer := 110;
        SIM_ODATAIN_INDELAY: integer := 110;
        SIM_TAPDELAY_VALUE: integer := 75
    );
    port(
        BUSY            : out    vl_logic;
        DATAOUT         : out    vl_logic;
        DATAOUT2        : out    vl_logic;
        DOUT            : out    vl_logic;
        TOUT            : out    vl_logic;
        CAL             : in     vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        IDATAIN         : in     vl_logic;
        INC             : in     vl_logic;
        IOCLK0          : in     vl_logic;
        IOCLK1          : in     vl_logic;
        ODATAIN         : in     vl_logic;
        RST             : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of COUNTER_WRAPAROUND : constant is 1;
    attribute mti_svvh_generic_type of DATA_RATE : constant is 1;
    attribute mti_svvh_generic_type of DELAY_SRC : constant is 1;
    attribute mti_svvh_generic_type of IDELAY2_VALUE : constant is 2;
    attribute mti_svvh_generic_type of IDELAY_MODE : constant is 1;
    attribute mti_svvh_generic_type of IDELAY_TYPE : constant is 1;
    attribute mti_svvh_generic_type of IDELAY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of ODELAY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of SERDES_MODE : constant is 1;
    attribute mti_svvh_generic_type of SIM_IDATAIN_INDELAY : constant is 2;
    attribute mti_svvh_generic_type of SIM_ODATAIN_INDELAY : constant is 2;
    attribute mti_svvh_generic_type of SIM_TAPDELAY_VALUE : constant is 2;
end X_IODELAY2;
