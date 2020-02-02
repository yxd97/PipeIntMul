library verilog;
use verilog.vl_types.all;
entity X_KEEPER is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_KEEPER;
