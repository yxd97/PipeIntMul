library verilog;
use verilog.vl_types.all;
entity X_SUH is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        I               : in     vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_SUH;
