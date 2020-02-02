library verilog;
use verilog.vl_types.all;
entity BUFGDLL is
    generic(
        DUTY_CYCLE_CORRECTION: string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DUTY_CYCLE_CORRECTION : constant is 1;
end BUFGDLL;
