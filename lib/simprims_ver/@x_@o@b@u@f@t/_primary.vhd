library verilog;
use verilog.vl_types.all;
entity X_OBUFT is
    generic(
        LOC             : string  := " UNPLACED";
        CAPACITANCE     : string  := "DONT_CARE";
        DRIVE           : integer := 12;
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        CTL             : in     vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of CAPACITANCE : constant is 1;
    attribute mti_svvh_generic_type of DRIVE : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of SLEW : constant is 1;
end X_OBUFT;
