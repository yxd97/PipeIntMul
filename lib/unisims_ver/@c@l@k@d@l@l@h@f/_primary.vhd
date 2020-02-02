library verilog;
use verilog.vl_types.all;
entity CLKDLLHF is
    generic(
        CLKDV_DIVIDE    : real    := 2.000000e+000;
        DUTY_CYCLE_CORRECTION: string  := "TRUE";
        FACTORY_JF      : vl_logic_vector(0 to 15) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0);
        STARTUP_WAIT    : string  := "FALSE"
    );
    port(
        CLK0            : out    vl_logic;
        CLK180          : out    vl_logic;
        CLKDV           : out    vl_logic;
        LOCKED          : out    vl_logic;
        CLKFB           : in     vl_logic;
        CLKIN           : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKDV_DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of DUTY_CYCLE_CORRECTION : constant is 1;
    attribute mti_svvh_generic_type of FACTORY_JF : constant is 1;
    attribute mti_svvh_generic_type of STARTUP_WAIT : constant is 1;
end CLKDLLHF;
