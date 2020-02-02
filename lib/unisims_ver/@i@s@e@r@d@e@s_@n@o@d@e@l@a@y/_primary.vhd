library verilog;
use verilog.vl_types.all;
entity ISERDES_NODELAY is
    generic(
        BITSLIP_ENABLE  : string  := "FALSE";
        DATA_RATE       : string  := "DDR";
        DATA_WIDTH      : integer := 4;
        INIT_Q1         : vl_logic := Hi0;
        INIT_Q2         : vl_logic := Hi0;
        INIT_Q3         : vl_logic := Hi0;
        INIT_Q4         : vl_logic := Hi0;
        INTERFACE_TYPE  : string  := "MEMORY";
        NUM_CE          : integer := 2;
        SERDES_MODE     : string  := "MASTER"
    );
    port(
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Q4              : out    vl_logic;
        Q5              : out    vl_logic;
        Q6              : out    vl_logic;
        SHIFTOUT1       : out    vl_logic;
        SHIFTOUT2       : out    vl_logic;
        BITSLIP         : in     vl_logic;
        CE1             : in     vl_logic;
        CE2             : in     vl_logic;
        CLK             : in     vl_logic;
        CLKB            : in     vl_logic;
        CLKDIV          : in     vl_logic;
        D               : in     vl_logic;
        OCLK            : in     vl_logic;
        RST             : in     vl_logic;
        SHIFTIN1        : in     vl_logic;
        SHIFTIN2        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BITSLIP_ENABLE : constant is 1;
    attribute mti_svvh_generic_type of DATA_RATE : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 2;
    attribute mti_svvh_generic_type of INIT_Q1 : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q2 : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q3 : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q4 : constant is 1;
    attribute mti_svvh_generic_type of INTERFACE_TYPE : constant is 1;
    attribute mti_svvh_generic_type of NUM_CE : constant is 2;
    attribute mti_svvh_generic_type of SERDES_MODE : constant is 1;
end ISERDES_NODELAY;
