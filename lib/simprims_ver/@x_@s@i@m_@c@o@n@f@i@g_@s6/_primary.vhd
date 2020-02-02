library verilog;
use verilog.vl_types.all;
entity X_SIM_CONFIG_S6 is
    generic(
        cfg_Tprog       : integer := 500000;
        cfg_Tpl         : integer := 5000000;
        DEVICE_ID       : integer := 0;
        ICAP_SUPPORT    : string  := "FALSE";
        LOC             : string  := "UNPLACED"
    );
    port(
        BUSY            : out    vl_logic;
        CSOB            : out    vl_logic;
        DONE            : inout  vl_logic;
        CCLK            : in     vl_logic;
        D               : inout  vl_logic_vector(15 downto 0);
        CSIB            : in     vl_logic;
        INITB           : inout  vl_logic;
        M               : in     vl_logic_vector(1 downto 0);
        PROGB           : in     vl_logic;
        RDWRB           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of cfg_Tprog : constant is 1;
    attribute mti_svvh_generic_type of cfg_Tpl : constant is 1;
    attribute mti_svvh_generic_type of DEVICE_ID : constant is 1;
    attribute mti_svvh_generic_type of ICAP_SUPPORT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_SIM_CONFIG_S6;
