library verilog;
use verilog.vl_types.all;
entity RAM32X2S is
    generic(
        INIT_00         : integer := 0;
        INIT_01         : integer := 0
    );
    port(
        O0              : out    vl_logic;
        O1              : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT_00 : constant is 1;
    attribute mti_svvh_generic_type of INIT_01 : constant is 1;
end RAM32X2S;
