library verilog;
use verilog.vl_types.all;
entity X_ICAP_SPARTAN6 is
    generic(
        DEVICE_ID       : integer := 67109011;
        LOC             : string  := "UNPLACED";
        SIM_CFG_FILE_NAME: string  := "NONE"
    );
    port(
        BUSY            : out    vl_logic;
        O               : out    vl_logic_vector(15 downto 0);
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        WRITE           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE_ID : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of SIM_CFG_FILE_NAME : constant is 1;
end X_ICAP_SPARTAN6;
