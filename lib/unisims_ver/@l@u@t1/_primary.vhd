library verilog;
use verilog.vl_types.all;
entity LUT1 is
    generic(
        INIT            : vl_logic_vector(0 to 1) := (Hi0, Hi0)
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end LUT1;
