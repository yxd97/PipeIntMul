library verilog;
use verilog.vl_types.all;
entity RAMB32_S64_ECC is
    generic(
        DO_REG          : integer := 0;
        SIM_COLLISION_CHECK: string  := "ALL"
    );
    port(
        DO              : out    vl_logic_vector(63 downto 0);
        STATUS          : out    vl_logic_vector(1 downto 0);
        DI              : in     vl_logic_vector(63 downto 0);
        RDADDR          : in     vl_logic_vector(8 downto 0);
        RDCLK           : in     vl_logic;
        RDEN            : in     vl_logic;
        SSR             : in     vl_logic;
        WRADDR          : in     vl_logic_vector(8 downto 0);
        WRCLK           : in     vl_logic;
        WREN            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DO_REG : constant is 2;
    attribute mti_svvh_generic_type of SIM_COLLISION_CHECK : constant is 1;
end RAMB32_S64_ECC;
