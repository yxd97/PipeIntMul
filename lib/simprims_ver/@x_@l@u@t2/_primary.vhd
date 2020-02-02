library verilog;
use verilog.vl_types.all;
entity X_LUT2 is
    generic(
        INIT            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        ADR0            : in     vl_logic;
        ADR1            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_LUT2;
