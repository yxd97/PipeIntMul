library verilog;
use verilog.vl_types.all;
entity FIFO36 is
    generic(
        ALMOST_EMPTY_OFFSET: vl_logic_vector(0 to 12) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        ALMOST_FULL_OFFSET: vl_logic_vector(0 to 12) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        DATA_WIDTH      : integer := 4;
        DO_REG          : integer := 1;
        EN_SYN          : string  := "FALSE";
        FIRST_WORD_FALL_THROUGH: string  := "FALSE";
        SIM_MODE        : string  := "SAFE"
    );
    port(
        ALMOSTEMPTY     : out    vl_logic;
        ALMOSTFULL      : out    vl_logic;
        DO              : out    vl_logic_vector(31 downto 0);
        DOP             : out    vl_logic_vector(3 downto 0);
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        RDCOUNT         : out    vl_logic_vector(12 downto 0);
        RDERR           : out    vl_logic;
        WRCOUNT         : out    vl_logic_vector(12 downto 0);
        WRERR           : out    vl_logic;
        DI              : in     vl_logic_vector(31 downto 0);
        DIP             : in     vl_logic_vector(3 downto 0);
        RDCLK           : in     vl_logic;
        RDEN            : in     vl_logic;
        RST             : in     vl_logic;
        WRCLK           : in     vl_logic;
        WREN            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ALMOST_EMPTY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of ALMOST_FULL_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 2;
    attribute mti_svvh_generic_type of DO_REG : constant is 2;
    attribute mti_svvh_generic_type of EN_SYN : constant is 1;
    attribute mti_svvh_generic_type of FIRST_WORD_FALL_THROUGH : constant is 1;
    attribute mti_svvh_generic_type of SIM_MODE : constant is 1;
end FIFO36;
