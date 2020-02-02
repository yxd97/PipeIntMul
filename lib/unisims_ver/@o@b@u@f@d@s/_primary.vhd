library verilog;
use verilog.vl_types.all;
entity OBUFDS is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CAPACITANCE : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of SLEW : constant is 1;
end OBUFDS;
