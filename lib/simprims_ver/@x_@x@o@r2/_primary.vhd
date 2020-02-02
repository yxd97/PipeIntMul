library verilog;
use verilog.vl_types.all;
entity X_XOR2 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_XOR2;
