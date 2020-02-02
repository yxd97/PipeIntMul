library verilog;
use verilog.vl_types.all;
entity DCM_CLKGEN is
    generic(
        SPREAD_SPECTRUM : string  := "NONE";
        STARTUP_WAIT    : string  := "FALSE";
        CLKFXDV_DIVIDE  : integer := 2;
        CLKFX_DIVIDE    : integer := 1;
        CLKFX_MULTIPLY  : integer := 4;
        CLKFX_MD_MAX    : real    := 0.000000e+000;
        CLKIN_PERIOD    : real    := 0.000000e+000
    );
    port(
        CLKFX           : out    vl_logic;
        CLKFX180        : out    vl_logic;
        CLKFXDV         : out    vl_logic;
        LOCKED          : out    vl_logic;
        PROGDONE        : out    vl_logic;
        STATUS          : out    vl_logic_vector(2 downto 1);
        CLKIN           : in     vl_logic;
        FREEZEDCM       : in     vl_logic;
        PROGCLK         : in     vl_logic;
        PROGDATA        : in     vl_logic;
        PROGEN          : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SPREAD_SPECTRUM : constant is 1;
    attribute mti_svvh_generic_type of STARTUP_WAIT : constant is 1;
    attribute mti_svvh_generic_type of CLKFXDV_DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of CLKFX_DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of CLKFX_MULTIPLY : constant is 2;
    attribute mti_svvh_generic_type of CLKFX_MD_MAX : constant is 2;
    attribute mti_svvh_generic_type of CLKIN_PERIOD : constant is 2;
end DCM_CLKGEN;
