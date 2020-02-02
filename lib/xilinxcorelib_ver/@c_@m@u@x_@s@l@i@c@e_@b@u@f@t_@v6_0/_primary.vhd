library verilog;
use verilog.vl_types.all;
entity C_MUX_SLICE_BUFT_V6_0 is
    generic(
        C_WIDTH         : integer := 16
    );
    port(
        I               : in     vl_logic_vector;
        T               : in     vl_logic;
        O               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of C_WIDTH : constant is 1;
end C_MUX_SLICE_BUFT_V6_0;
