library verilog;
use verilog.vl_types.all;
entity X_SIM_CONFIG_V5 is
    generic(
        DEVICE_ID       : integer := 0;
        LOC             : string  := "UNPLACED"
    );
    port(
        BUSY            : out    vl_logic;
        CSOB            : out    vl_logic;
        DONE            : inout  vl_logic;
        CCLK            : in     vl_logic;
        CSB             : in     vl_logic;
        D               : inout  vl_logic_vector(31 downto 0);
        DCMLOCK         : in     vl_logic;
        INITB           : inout  vl_logic;
        M               : in     vl_logic_vector(2 downto 0);
        PROGB           : in     vl_logic;
        RDWRB           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE_ID : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_SIM_CONFIG_V5;
