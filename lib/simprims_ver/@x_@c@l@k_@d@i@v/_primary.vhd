library verilog;
use verilog.vl_types.all;
entity X_CLK_DIV is
    generic(
        DIVIDE_BY       : integer := 2;
        DIVIDER_DELAY   : integer := 0;
        LOC             : string  := "UNPLACED"
    );
    port(
        CLKDV           : out    vl_logic;
        CDRST           : in     vl_logic;
        CLKIN           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE_BY : constant is 1;
    attribute mti_svvh_generic_type of DIVIDER_DELAY : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_CLK_DIV;
