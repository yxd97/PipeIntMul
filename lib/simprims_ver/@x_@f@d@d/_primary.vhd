library verilog;
use verilog.vl_types.all;
entity X_FDD is
    generic(
        INIT            : vl_logic := Hi0;
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic;
        RST             : in     vl_logic;
        SET             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_FDD;
