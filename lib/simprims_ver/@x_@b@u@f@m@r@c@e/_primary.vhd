library verilog;
use verilog.vl_types.all;
entity X_BUFMRCE is
    generic(
        LOC             : string  := "UNPLACED";
        CE_TYPE         : string  := "SYNC";
        INIT_OUT        : integer := 0
    );
    port(
        O               : out    vl_logic;
        CE              : in     vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of CE_TYPE : constant is 1;
    attribute mti_svvh_generic_type of INIT_OUT : constant is 2;
end X_BUFMRCE;
