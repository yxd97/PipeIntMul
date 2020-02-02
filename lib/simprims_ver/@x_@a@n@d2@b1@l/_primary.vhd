library verilog;
use verilog.vl_types.all;
entity X_AND2B1L is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        SRI             : in     vl_logic;
        DI              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_AND2B1L;
