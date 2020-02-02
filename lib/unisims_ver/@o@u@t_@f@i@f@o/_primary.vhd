library verilog;
use verilog.vl_types.all;
entity OUT_FIFO is
    generic(
        ALMOST_EMPTY_VALUE: integer := 1;
        ALMOST_FULL_VALUE: integer := 1;
        ARRAY_MODE      : string  := "ARRAY_MODE_8_X_4";
        OUTPUT_DISABLE  : string  := "FALSE";
        SYNCHRONOUS_MODE: string  := "FALSE"
    );
    port(
        ALMOSTEMPTY     : out    vl_logic;
        ALMOSTFULL      : out    vl_logic;
        EMPTY           : out    vl_logic;
        FULL            : out    vl_logic;
        Q0              : out    vl_logic_vector(3 downto 0);
        Q1              : out    vl_logic_vector(3 downto 0);
        Q2              : out    vl_logic_vector(3 downto 0);
        Q3              : out    vl_logic_vector(3 downto 0);
        Q4              : out    vl_logic_vector(3 downto 0);
        Q5              : out    vl_logic_vector(7 downto 0);
        Q6              : out    vl_logic_vector(7 downto 0);
        Q7              : out    vl_logic_vector(3 downto 0);
        Q8              : out    vl_logic_vector(3 downto 0);
        Q9              : out    vl_logic_vector(3 downto 0);
        D0              : in     vl_logic_vector(7 downto 0);
        D1              : in     vl_logic_vector(7 downto 0);
        D2              : in     vl_logic_vector(7 downto 0);
        D3              : in     vl_logic_vector(7 downto 0);
        D4              : in     vl_logic_vector(7 downto 0);
        D5              : in     vl_logic_vector(7 downto 0);
        D6              : in     vl_logic_vector(7 downto 0);
        D7              : in     vl_logic_vector(7 downto 0);
        D8              : in     vl_logic_vector(7 downto 0);
        D9              : in     vl_logic_vector(7 downto 0);
        RDCLK           : in     vl_logic;
        RDEN            : in     vl_logic;
        RESET           : in     vl_logic;
        WRCLK           : in     vl_logic;
        WREN            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ALMOST_EMPTY_VALUE : constant is 2;
    attribute mti_svvh_generic_type of ALMOST_FULL_VALUE : constant is 2;
    attribute mti_svvh_generic_type of ARRAY_MODE : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_DISABLE : constant is 1;
    attribute mti_svvh_generic_type of SYNCHRONOUS_MODE : constant is 1;
end OUT_FIFO;
