library verilog;
use verilog.vl_types.all;
entity X_UPAD is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        PAD             : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_UPAD;
