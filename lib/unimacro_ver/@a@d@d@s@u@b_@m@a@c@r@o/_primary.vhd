library verilog;
use verilog.vl_types.all;
entity ADDSUB_MACRO is
    generic(
        DEVICE          : string  := "VIRTEX5";
        LATENCY         : integer := 2;
        STYLE           : string  := "DSP";
        WIDTH           : integer := 48;
        WIDTH_B         : integer := 48;
        WIDTH_RESULT    : integer := 48;
        MODEL_TYPE      : integer := 0;
        VERBOSITY       : integer := 0
    );
    port(
        CARRYOUT        : out    vl_logic;
        RESULT          : out    vl_logic_vector;
        A               : in     vl_logic_vector;
        ADD_SUB         : in     vl_logic;
        B               : in     vl_logic_vector;
        CARRYIN         : in     vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of LATENCY : constant is 1;
    attribute mti_svvh_generic_type of STYLE : constant is 1;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_B : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_RESULT : constant is 1;
    attribute mti_svvh_generic_type of MODEL_TYPE : constant is 1;
    attribute mti_svvh_generic_type of VERBOSITY : constant is 1;
end ADDSUB_MACRO;
