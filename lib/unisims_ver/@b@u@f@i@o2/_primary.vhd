library verilog;
use verilog.vl_types.all;
entity BUFIO2 is
    generic(
        DIVIDE_BYPASS   : string  := "TRUE";
        DIVIDE          : integer := 1;
        I_INVERT        : string  := "FALSE";
        USE_DOUBLER     : string  := "FALSE"
    );
    port(
        DIVCLK          : out    vl_logic;
        IOCLK           : out    vl_logic;
        SERDESSTROBE    : out    vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE_BYPASS : constant is 1;
    attribute mti_svvh_generic_type of DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of I_INVERT : constant is 1;
    attribute mti_svvh_generic_type of USE_DOUBLER : constant is 1;
end BUFIO2;
