library verilog;
use verilog.vl_types.all;
entity X_RAMD32 is
    generic(
        INIT            : integer := 0;
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic;
        RADR0           : in     vl_logic;
        RADR1           : in     vl_logic;
        RADR2           : in     vl_logic;
        RADR3           : in     vl_logic;
        RADR4           : in     vl_logic;
        WADR0           : in     vl_logic;
        WADR1           : in     vl_logic;
        WADR2           : in     vl_logic;
        WADR3           : in     vl_logic;
        WADR4           : in     vl_logic;
        WE              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_RAMD32;
