library verilog;
use verilog.vl_types.all;
entity X_BUFIO2_2CLK is
    generic(
        DIVIDE          : integer := 3;
        I_INVERT        : string  := "FALSE";
        LOC             : string  := "UNPLACED"
    );
    port(
        DIVCLK          : out    vl_logic;
        IOCLK           : out    vl_logic;
        SERDESSTROBE    : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of I_INVERT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BUFIO2_2CLK;
