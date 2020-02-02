library verilog;
use verilog.vl_types.all;
entity MACC_MACRO is
    generic(
        DEVICE          : string  := "VIRTEX5";
        LATENCY         : integer := 3;
        WIDTH_A         : integer := 25;
        WIDTH_B         : integer := 18;
        WIDTH_P         : integer := 48;
        MODEL_TYPE      : integer := 0;
        VERBOSITY       : integer := 0
    );
    port(
        P               : out    vl_logic_vector;
        A               : in     vl_logic_vector;
        ADDSUB          : in     vl_logic;
        B               : in     vl_logic_vector;
        CARRYIN         : in     vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        LOAD            : in     vl_logic;
        LOAD_DATA       : in     vl_logic_vector;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of LATENCY : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_A : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_B : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_P : constant is 1;
    attribute mti_svvh_generic_type of MODEL_TYPE : constant is 1;
    attribute mti_svvh_generic_type of VERBOSITY : constant is 1;
end MACC_MACRO;
