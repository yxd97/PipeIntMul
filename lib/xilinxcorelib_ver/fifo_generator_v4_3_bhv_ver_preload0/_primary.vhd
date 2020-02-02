library verilog;
use verilog.vl_types.all;
entity fifo_generator_v4_3_bhv_ver_preload0 is
    generic(
        C_DOUT_RST_VAL  : string  := "";
        C_DOUT_WIDTH    : integer := 8;
        C_HAS_RST       : integer := 0;
        C_USE_DOUT_RST  : integer := 0;
        C_USERVALID_LOW : integer := 0;
        C_USERUNDERFLOW_LOW: integer := 0
    );
    port(
        RD_CLK          : in     vl_logic;
        RD_RST          : in     vl_logic;
        RD_EN           : in     vl_logic;
        FIFOEMPTY       : in     vl_logic;
        FIFODATA        : in     vl_logic_vector;
        USERDATA        : out    vl_logic_vector;
        USERVALID       : out    vl_logic;
        USERUNDERFLOW   : out    vl_logic;
        USEREMPTY       : out    vl_logic;
        USERALMOSTEMPTY : out    vl_logic;
        RAMVALID        : out    vl_logic;
        FIFORDEN        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of C_DOUT_RST_VAL : constant is 1;
    attribute mti_svvh_generic_type of C_DOUT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_RST : constant is 1;
    attribute mti_svvh_generic_type of C_USE_DOUT_RST : constant is 1;
    attribute mti_svvh_generic_type of C_USERVALID_LOW : constant is 1;
    attribute mti_svvh_generic_type of C_USERUNDERFLOW_LOW : constant is 1;
end fifo_generator_v4_3_bhv_ver_preload0;
