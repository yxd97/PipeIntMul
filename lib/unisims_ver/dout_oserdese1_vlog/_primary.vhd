library verilog;
use verilog.vl_types.all;
entity dout_oserdese1_vlog is
    generic(
        FFD             : integer := 1;
        FFCD            : integer := 1;
        MXD             : integer := 1;
        MXR1            : integer := 1
    );
    port(
        data1           : in     vl_logic;
        data2           : in     vl_logic;
        CLK             : in     vl_logic;
        BUFO            : in     vl_logic;
        SR              : in     vl_logic;
        OCE             : in     vl_logic;
        OQ              : out    vl_logic;
        d2rnk2          : out    vl_logic;
        DATA_RATE_OQ    : in     vl_logic;
        INIT_OQ         : in     vl_logic;
        SRVAL_OQ        : in     vl_logic;
        DDR3_MODE       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FFD : constant is 1;
    attribute mti_svvh_generic_type of FFCD : constant is 1;
    attribute mti_svvh_generic_type of MXD : constant is 1;
    attribute mti_svvh_generic_type of MXR1 : constant is 1;
end dout_oserdese1_vlog;
