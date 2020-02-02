library verilog;
use verilog.vl_types.all;
entity X_ISERDES2 is
    generic(
        BITSLIP_ENABLE  : string  := "FALSE";
        DATA_RATE       : string  := "SDR";
        DATA_WIDTH      : integer := 1;
        INTERFACE_TYPE  : string  := "NETWORKING";
        SERDES_MODE     : string  := "NONE";
        LOC             : string  := "UNPLACED"
    );
    port(
        CFB0            : out    vl_logic;
        CFB1            : out    vl_logic;
        DFB             : out    vl_logic;
        FABRICOUT       : out    vl_logic;
        INCDEC          : out    vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Q4              : out    vl_logic;
        SHIFTOUT        : out    vl_logic;
        VALID           : out    vl_logic;
        BITSLIP         : in     vl_logic;
        CE0             : in     vl_logic;
        CLK0            : in     vl_logic;
        CLK1            : in     vl_logic;
        CLKDIV          : in     vl_logic;
        D               : in     vl_logic;
        IOCE            : in     vl_logic;
        RST             : in     vl_logic;
        SHIFTIN         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BITSLIP_ENABLE : constant is 1;
    attribute mti_svvh_generic_type of DATA_RATE : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 2;
    attribute mti_svvh_generic_type of INTERFACE_TYPE : constant is 1;
    attribute mti_svvh_generic_type of SERDES_MODE : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_ISERDES2;
