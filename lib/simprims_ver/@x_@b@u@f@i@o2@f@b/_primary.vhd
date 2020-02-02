library verilog;
use verilog.vl_types.all;
entity X_BUFIO2FB is
    generic(
        DIVIDE_BYPASS   : string  := "TRUE";
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE_BYPASS : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BUFIO2FB;
