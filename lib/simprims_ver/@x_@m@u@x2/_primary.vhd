library verilog;
use verilog.vl_types.all;
entity X_MUX2 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        IA              : in     vl_logic;
        IB              : in     vl_logic;
        SEL             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_MUX2;
