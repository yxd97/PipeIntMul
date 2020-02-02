library verilog;
use verilog.vl_types.all;
entity ADDMACC_MACRO is
    generic(
        DEVICE          : string  := "VIRTEX6";
        LATENCY         : integer := 4;
        WIDTH_PREADD    : integer := 25;
        WIDTH_MULTIPLIER: integer := 18;
        WIDTH_PRODUCT   : integer := 48
    );
    port(
        PRODUCT         : out    vl_logic_vector;
        CARRYIN         : in     vl_logic;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        LOAD            : in     vl_logic;
        LOAD_DATA       : in     vl_logic_vector;
        MULTIPLIER      : in     vl_logic_vector;
        PREADD2         : in     vl_logic_vector;
        PREADD1         : in     vl_logic_vector;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of LATENCY : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_PREADD : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_MULTIPLIER : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_PRODUCT : constant is 1;
end ADDMACC_MACRO;
