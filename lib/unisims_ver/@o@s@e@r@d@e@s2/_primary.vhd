library verilog;
use verilog.vl_types.all;
entity OSERDES2 is
    generic(
        BYPASS_GCLK_FF  : string  := "FALSE";
        DATA_RATE_OQ    : string  := "DDR";
        DATA_RATE_OT    : string  := "DDR";
        DATA_WIDTH      : integer := 2;
        OUTPUT_MODE     : string  := "SINGLE_ENDED";
        SERDES_MODE     : string  := "NONE";
        TRAIN_PATTERN   : integer := 0
    );
    port(
        OQ              : out    vl_logic;
        SHIFTOUT1       : out    vl_logic;
        SHIFTOUT2       : out    vl_logic;
        SHIFTOUT3       : out    vl_logic;
        SHIFTOUT4       : out    vl_logic;
        TQ              : out    vl_logic;
        CLK0            : in     vl_logic;
        CLK1            : in     vl_logic;
        CLKDIV          : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        D4              : in     vl_logic;
        IOCE            : in     vl_logic;
        OCE             : in     vl_logic;
        RST             : in     vl_logic;
        SHIFTIN1        : in     vl_logic;
        SHIFTIN2        : in     vl_logic;
        SHIFTIN3        : in     vl_logic;
        SHIFTIN4        : in     vl_logic;
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        TCE             : in     vl_logic;
        TRAIN           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BYPASS_GCLK_FF : constant is 1;
    attribute mti_svvh_generic_type of DATA_RATE_OQ : constant is 1;
    attribute mti_svvh_generic_type of DATA_RATE_OT : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 2;
    attribute mti_svvh_generic_type of OUTPUT_MODE : constant is 1;
    attribute mti_svvh_generic_type of SERDES_MODE : constant is 1;
    attribute mti_svvh_generic_type of TRAIN_PATTERN : constant is 2;
end OSERDES2;
