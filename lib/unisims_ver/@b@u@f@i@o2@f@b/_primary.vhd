library verilog;
use verilog.vl_types.all;
entity BUFIO2FB is
    generic(
        DIVIDE_BYPASS   : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE_BYPASS : constant is 1;
end BUFIO2FB;
