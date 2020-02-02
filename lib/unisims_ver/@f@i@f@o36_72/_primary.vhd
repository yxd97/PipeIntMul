library verilog;
use verilog.vl_types.all;
entity FIFO36_72 is
    generic(
        ALMOST_EMPTY_OFFSET: vl_logic_vector(0 to 8) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        ALMOST_FULL_OFFSET: vl_logic_vector(0 to 8) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        DO_REG          : integer := 1;
        EN_ECC_WRITE    : string  := "FALSE";
        EN_ECC_READ     : string  := "FALSE";
        EN_SYN          : string  := "FALSE";
        FIRST_WORD_FALL_THROUGH: string  := "FALSE";
        SIM_MODE        : string  := "SAFE"
    );
    port(
        ALMOSTEMPTY     : out    vl_logic;
        ALMOSTFULL      : out    vl_logic;
        DBITERR         : out    vl_logic;
        DO              : out    vl_logic_vector(63 downto 0);
        DOP             : out    vl_logic_vector(7 downto 0);
        ECCPARITY       : out    vl_logic_vector(7 downto 0);
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        RDCOUNT         : out    vl_logic_vector(8 downto 0);
        RDERR           : out    vl_logic;
        SBITERR         : out    vl_logic;
        WRCOUNT         : out    vl_logic_vector(8 downto 0);
        WRERR           : out    vl_logic;
        DI              : in     vl_logic_vector(63 downto 0);
        DIP             : in     vl_logic_vector(7 downto 0);
        RDCLK           : in     vl_logic;
        RDEN            : in     vl_logic;
        RST             : in     vl_logic;
        WRCLK           : in     vl_logic;
        WREN            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ALMOST_EMPTY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of ALMOST_FULL_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of DO_REG : constant is 2;
    attribute mti_svvh_generic_type of EN_ECC_WRITE : constant is 1;
    attribute mti_svvh_generic_type of EN_ECC_READ : constant is 1;
    attribute mti_svvh_generic_type of EN_SYN : constant is 1;
    attribute mti_svvh_generic_type of FIRST_WORD_FALL_THROUGH : constant is 1;
    attribute mti_svvh_generic_type of SIM_MODE : constant is 1;
end FIFO36_72;
