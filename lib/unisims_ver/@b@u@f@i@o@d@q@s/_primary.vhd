library verilog;
use verilog.vl_types.all;
entity BUFIODQS is
    generic(
        DQSMASK_ENABLE  : string  := "FALSE"
    );
    port(
        O               : out    vl_logic;
        DQSMASK         : in     vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DQSMASK_ENABLE : constant is 1;
end BUFIODQS;
