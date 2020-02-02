library verilog;
use verilog.vl_types.all;
entity IBUFDS_GTE2 is
    generic(
        CLKCM_CFG       : string  := "TRUE";
        CLKRCV_TRST     : string  := "TRUE";
        CLKSWING_CFG    : vl_logic_vector(1 downto 0) := (Hi1, Hi1)
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
    attribute mti_svvh_generic_type of CLKSWING_CFG : constant is 2;
end IBUFDS_GTE2;
