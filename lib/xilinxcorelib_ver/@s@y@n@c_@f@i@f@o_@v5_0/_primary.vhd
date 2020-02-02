library verilog;
use verilog.vl_types.all;
entity SYNC_FIFO_V5_0 is
    generic(
        c_dcount_width  : integer := 9;
        c_enable_rlocs  : integer := 0;
        c_has_dcount    : integer := 1;
        c_has_rd_ack    : integer := 1;
        c_has_rd_err    : integer := 1;
        c_has_wr_ack    : integer := 1;
        c_has_wr_err    : integer := 1;
        c_memory_type   : integer := 0;
        c_ports_differ  : integer := 0;
        c_rd_ack_low    : integer := 0;
        c_rd_err_low    : integer := 0;
        c_read_data_width: integer := 16;
        c_read_depth    : integer := 0;
        c_write_data_width: integer := 16;
        c_write_depth   : integer := 16;
        c_wr_ack_low    : integer := 1;
        c_wr_err_low    : integer := 1;
        addr_max        : vl_notype
    );
    port(
        CLK             : in     vl_logic;
        SINIT           : in     vl_logic;
        DIN             : in     vl_logic_vector;
        WR_EN           : in     vl_logic;
        RD_EN           : in     vl_logic;
        DOUT            : out    vl_logic_vector;
        FULL            : out    vl_logic;
        EMPTY           : out    vl_logic;
        RD_ACK          : out    vl_logic;
        WR_ACK          : out    vl_logic;
        RD_ERR          : out    vl_logic;
        WR_ERR          : out    vl_logic;
        DATA_COUNT      : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of c_dcount_width : constant is 1;
    attribute mti_svvh_generic_type of c_enable_rlocs : constant is 1;
    attribute mti_svvh_generic_type of c_has_dcount : constant is 1;
    attribute mti_svvh_generic_type of c_has_rd_ack : constant is 1;
    attribute mti_svvh_generic_type of c_has_rd_err : constant is 1;
    attribute mti_svvh_generic_type of c_has_wr_ack : constant is 1;
    attribute mti_svvh_generic_type of c_has_wr_err : constant is 1;
    attribute mti_svvh_generic_type of c_memory_type : constant is 1;
    attribute mti_svvh_generic_type of c_ports_differ : constant is 1;
    attribute mti_svvh_generic_type of c_rd_ack_low : constant is 1;
    attribute mti_svvh_generic_type of c_rd_err_low : constant is 1;
    attribute mti_svvh_generic_type of c_read_data_width : constant is 1;
    attribute mti_svvh_generic_type of c_read_depth : constant is 1;
    attribute mti_svvh_generic_type of c_write_data_width : constant is 1;
    attribute mti_svvh_generic_type of c_write_depth : constant is 1;
    attribute mti_svvh_generic_type of c_wr_ack_low : constant is 1;
    attribute mti_svvh_generic_type of c_wr_err_low : constant is 1;
    attribute mti_svvh_generic_type of addr_max : constant is 3;
end SYNC_FIFO_V5_0;
