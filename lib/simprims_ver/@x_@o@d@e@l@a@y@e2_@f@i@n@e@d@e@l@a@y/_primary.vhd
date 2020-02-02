library verilog;
use verilog.vl_types.all;
entity X_ODELAYE2_FINEDELAY is
    generic(
        CINVCTRL_SEL    : string  := "FALSE";
        DELAY_SRC       : string  := "ODATAIN";
        FINEDELAY       : string  := "BYPASS";
        HIGH_PERFORMANCE_MODE: string  := "FALSE";
        ODELAY_TYPE     : string  := "FIXED";
        ODELAY_VALUE    : integer := 0;
        PIPE_SEL        : string  := "FALSE";
        REFCLK_FREQUENCY: real    := 2.000000e+002;
        SIGNAL_PATTERN  : string  := "DATA";
        LOC             : string  := "UNPLACED";
        SIM_DELAY_D     : integer := 0
    );
    port(
        CNTVALUEOUT     : out    vl_logic_vector(4 downto 0);
        DATAOUT         : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        CINVCTRL        : in     vl_logic;
        CLKIN           : in     vl_logic;
        CNTVALUEIN      : in     vl_logic_vector(4 downto 0);
        INC             : in     vl_logic;
        LD              : in     vl_logic;
        LDPIPEEN        : in     vl_logic;
        ODATAIN         : in     vl_logic;
        OFDLY           : in     vl_logic_vector(2 downto 0);
        REGRST          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CINVCTRL_SEL : constant is 1;
    attribute mti_svvh_generic_type of DELAY_SRC : constant is 1;
    attribute mti_svvh_generic_type of FINEDELAY : constant is 1;
    attribute mti_svvh_generic_type of HIGH_PERFORMANCE_MODE : constant is 1;
    attribute mti_svvh_generic_type of ODELAY_TYPE : constant is 1;
    attribute mti_svvh_generic_type of ODELAY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of PIPE_SEL : constant is 1;
    attribute mti_svvh_generic_type of REFCLK_FREQUENCY : constant is 2;
    attribute mti_svvh_generic_type of SIGNAL_PATTERN : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of SIM_DELAY_D : constant is 2;
end X_ODELAYE2_FINEDELAY;
