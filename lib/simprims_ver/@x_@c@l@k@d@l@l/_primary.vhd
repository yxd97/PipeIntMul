library verilog;
use verilog.vl_types.all;
entity X_CLKDLL is
    generic(
        CLKDV_DIVIDE    : real    := 2.000000e+000;
        DLL_FREQUENCY_MODE: string  := "LOW";
        DUTY_CYCLE_CORRECTION: string  := "TRUE";
        FACTORY_JF      : vl_logic_vector(0 to 15) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        MAXPERCLKIN     : integer := 40000;
        SIM_CLKIN_CYCLE_JITTER: integer := 300;
        SIM_CLKIN_PERIOD_JITTER: integer := 1000;
        LOC             : string  := "UNPLACED";
        STARTUP_WAIT    : string  := "FALSE"
    );
    port(
        CLK0            : out    vl_logic;
        CLK180          : out    vl_logic;
        CLK270          : out    vl_logic;
        CLK2X           : out    vl_logic;
        CLK90           : out    vl_logic;
        CLKDV           : out    vl_logic;
        LOCKED          : out    vl_logic;
        CLKFB           : in     vl_logic;
        CLKIN           : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKDV_DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of DLL_FREQUENCY_MODE : constant is 1;
    attribute mti_svvh_generic_type of DUTY_CYCLE_CORRECTION : constant is 1;
    attribute mti_svvh_generic_type of FACTORY_JF : constant is 1;
    attribute mti_svvh_generic_type of MAXPERCLKIN : constant is 2;
    attribute mti_svvh_generic_type of SIM_CLKIN_CYCLE_JITTER : constant is 2;
    attribute mti_svvh_generic_type of SIM_CLKIN_PERIOD_JITTER : constant is 2;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of STARTUP_WAIT : constant is 1;
end X_CLKDLL;
