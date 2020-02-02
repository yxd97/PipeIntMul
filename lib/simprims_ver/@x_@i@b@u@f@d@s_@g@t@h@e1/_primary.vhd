library verilog;
use verilog.vl_types.all;
entity X_IBUFDS_GTHE1 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_IBUFDS_GTHE1;
