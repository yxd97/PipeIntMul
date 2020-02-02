library verilog;
use verilog.vl_types.all;
entity FIFO_SYNC_MACRO is
    generic(
        ALMOST_EMPTY_OFFSET: vl_logic_vector(0 to 8) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        ALMOST_FULL_OFFSET: vl_logic_vector(0 to 8) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        DATA_WIDTH      : integer := 4;
        DEVICE          : string  := "VIRTEX5";
        DO_REG          : integer := 0;
        INIT            : vl_logic_vector(0 to 71) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SRVAL           : vl_logic_vector(0 to 71) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        FIFO_SIZE       : string  := "18Kb";
        SIM_MODE        : string  := "SAFE"
    );
    port(
        ALMOSTEMPTY     : out    vl_logic;
        ALMOSTFULL      : out    vl_logic;
        DO              : out    vl_logic_vector;
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        RDCOUNT         : out    vl_logic_vector;
        RDERR           : out    vl_logic;
        WRCOUNT         : out    vl_logic_vector;
        WRERR           : out    vl_logic;
        CLK             : in     vl_logic;
        DI              : in     vl_logic_vector;
        RDEN            : in     vl_logic;
        RST             : in     vl_logic;
        WREN            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ALMOST_EMPTY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of ALMOST_FULL_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 2;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of DO_REG : constant is 2;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of SRVAL : constant is 1;
    attribute mti_svvh_generic_type of FIFO_SIZE : constant is 1;
    attribute mti_svvh_generic_type of SIM_MODE : constant is 1;
end FIFO_SYNC_MACRO;
