library verilog;
use verilog.vl_types.all;
entity rank12d_oserdese1_vlog is
    generic(
        FFD             : integer := 1;
        FFCD            : integer := 1;
        MXD             : integer := 1;
        MXR1            : integer := 1
    );
    port(
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        D4              : in     vl_logic;
        D5              : in     vl_logic;
        D6              : in     vl_logic;
        d2rnk2          : in     vl_logic;
        SHIFTIN1        : in     vl_logic;
        SHIFTIN2        : in     vl_logic;
        C               : in     vl_logic;
        CLKDIV          : in     vl_logic;
        SR              : in     vl_logic;
        OCE             : in     vl_logic;
        data1           : out    vl_logic;
        data2           : out    vl_logic;
        SHIFTOUT1       : out    vl_logic;
        SHIFTOUT2       : out    vl_logic;
        DATA_RATE_OQ    : in     vl_logic;
        DATA_WIDTH      : in     vl_logic_vector(3 downto 0);
        SERDES_MODE     : in     vl_logic;
        load            : out    vl_logic;
        IOCLK_GLITCH    : out    vl_logic;
        INIT_OQ         : in     vl_logic;
        SRVAL_OQ        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FFD : constant is 1;
    attribute mti_svvh_generic_type of FFCD : constant is 1;
    attribute mti_svvh_generic_type of MXD : constant is 1;
    attribute mti_svvh_generic_type of MXR1 : constant is 1;
end rank12d_oserdese1_vlog;
