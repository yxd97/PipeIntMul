library verilog;
use verilog.vl_types.all;
entity BUFIO2_2CLK is
    generic(
        DIVIDE          : integer := 3
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
end BUFIO2_2CLK;
