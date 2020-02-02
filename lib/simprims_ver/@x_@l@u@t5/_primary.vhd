library verilog;
use verilog.vl_types.all;
entity X_LUT5 is
    generic(
        INIT            : integer := 0;
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        ADR0            : in     vl_logic;
        ADR1            : in     vl_logic;
        ADR2            : in     vl_logic;
        ADR3            : in     vl_logic;
        ADR4            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_LUT5;
