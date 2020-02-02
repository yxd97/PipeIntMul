library verilog;
use verilog.vl_types.all;
entity SIM_CONFIG_S6_SERIAL is
    generic(
        DEVICE_ID       : integer := 0
    );
    port(
        DONE            : inout  vl_logic;
        CCLK            : in     vl_logic;
        DIN             : in     vl_logic;
        INITB           : inout  vl_logic;
        M               : in     vl_logic_vector(1 downto 0);
        PROGB           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE_ID : constant is 1;
end SIM_CONFIG_S6_SERIAL;
