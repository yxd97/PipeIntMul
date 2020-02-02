library verilog;
use verilog.vl_types.all;
entity X_SIM_CONFIG_S6_SERIAL is
    generic(
        DEVICE_ID       : integer := 0;
        LOC             : string  := "UNPLACED"
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
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_SIM_CONFIG_S6_SERIAL;
