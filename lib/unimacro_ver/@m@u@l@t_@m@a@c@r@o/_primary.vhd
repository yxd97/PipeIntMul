library verilog;
use verilog.vl_types.all;
entity MULT_MACRO is
    generic(
        DEVICE          : string  := "VIRTEX5";
        LATENCY         : integer := 3;
        STYLE           : string  := "DSP";
        WIDTH_A         : integer := 18;
        WIDTH_B         : integer := 18;
        MODEL_TYPE      : integer := 0;
        VERBOSITY       : integer := 0
    );
    port(
        P               : out    vl_logic_vector;
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of LATENCY : constant is 1;
    attribute mti_svvh_generic_type of STYLE : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_A : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_B : constant is 1;
    attribute mti_svvh_generic_type of MODEL_TYPE : constant is 1;
    attribute mti_svvh_generic_type of VERBOSITY : constant is 1;
end MULT_MACRO;
