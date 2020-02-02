library verilog;
use verilog.vl_types.all;
entity X_ICAP_VIRTEX6 is
    generic(
        DEVICE_ID       : vl_logic_vector(31 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1);
        LOC             : string  := "UNPLACED";
        ICAP_WIDTH      : string  := "X8";
        SIM_CFG_FILE_NAME: string  := "NONE"
    );
    port(
        BUSY            : out    vl_logic;
        O               : out    vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        CSB             : in     vl_logic;
        I               : in     vl_logic_vector(31 downto 0);
        RDWRB           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE_ID : constant is 2;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of ICAP_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of SIM_CFG_FILE_NAME : constant is 1;
end X_ICAP_VIRTEX6;
