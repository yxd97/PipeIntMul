library verilog;
use verilog.vl_types.all;
entity X_RAMD64_ADV is
    generic(
        INIT            : vl_logic_vector(0 to 63) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
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
        RADR5           : in     vl_logic;
        WADR0           : in     vl_logic;
        WADR1           : in     vl_logic;
        WADR2           : in     vl_logic;
        WADR3           : in     vl_logic;
        WADR4           : in     vl_logic;
        WADR5           : in     vl_logic;
        WE              : in     vl_logic;
        WE1             : in     vl_logic;
        WE2             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_RAMD64_ADV;
