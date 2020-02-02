library verilog;
use verilog.vl_types.all;
entity IDELAYE2 is
    generic(
        CINVCTRL_SEL    : string  := "FALSE";
        DELAY_SRC       : string  := "IDATAIN";
        HIGH_PERFORMANCE_MODE: string  := "FALSE";
        IDELAY_TYPE     : string  := "FIXED";
        IDELAY_VALUE    : integer := 0;
        PIPE_SEL        : string  := "FALSE";
        REFCLK_FREQUENCY: real    := 2.000000e+002;
        SIGNAL_PATTERN  : string  := "DATA"
    );
    port(
        CNTVALUEOUT     : out    vl_logic_vector(4 downto 0);
        DATAOUT         : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        CINVCTRL        : in     vl_logic;
        CNTVALUEIN      : in     vl_logic_vector(4 downto 0);
        DATAIN          : in     vl_logic;
        IDATAIN         : in     vl_logic;
        INC             : in     vl_logic;
        LD              : in     vl_logic;
        LDPIPEEN        : in     vl_logic;
        REGRST          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CINVCTRL_SEL : constant is 1;
    attribute mti_svvh_generic_type of DELAY_SRC : constant is 1;
    attribute mti_svvh_generic_type of HIGH_PERFORMANCE_MODE : constant is 1;
    attribute mti_svvh_generic_type of IDELAY_TYPE : constant is 1;
    attribute mti_svvh_generic_type of IDELAY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of PIPE_SEL : constant is 1;
    attribute mti_svvh_generic_type of REFCLK_FREQUENCY : constant is 2;
    attribute mti_svvh_generic_type of SIGNAL_PATTERN : constant is 1;
end IDELAYE2;
