library verilog;
use verilog.vl_types.all;
entity IBUFDS_GTXE1 is
    generic(
        CLKCM_CFG       : string  := "TRUE";
        CLKRCV_TRST     : string  := "TRUE";
        REFCLKOUT_DLY   : vl_logic_vector(9 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        O               : out    vl_logic;
        ODIV2           : out    vl_logic;
        CEB             : in     vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKCM_CFG : constant is 1;
    attribute mti_svvh_generic_type of CLKRCV_TRST : constant is 1;
    attribute mti_svvh_generic_type of REFCLKOUT_DLY : constant is 2;
end IBUFDS_GTXE1;
