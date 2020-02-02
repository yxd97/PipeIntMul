library verilog;
use verilog.vl_types.all;
entity X_OPAD is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        PAD             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_OPAD;
