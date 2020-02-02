library verilog;
use verilog.vl_types.all;
entity X_BUFIODQS is
    generic(
        DQSMASK_ENABLE  : string  := "FALSE";
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        DQSMASK         : in     vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DQSMASK_ENABLE : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BUFIODQS;
