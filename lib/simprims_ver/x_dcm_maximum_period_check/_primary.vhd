library verilog;
use verilog.vl_types.all;
entity x_dcm_maximum_period_check is
    generic(
        clock_name      : string  := "";
        maximum_period  : integer := 0
    );
    port(
        clock           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clock_name : constant is 1;
    attribute mti_svvh_generic_type of maximum_period : constant is 1;
end x_dcm_maximum_period_check;
