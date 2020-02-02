library verilog;
use verilog.vl_types.all;
entity IBUFDS_DLY_ADJ is
    generic(
        DELAY_OFFSET    : string  := "OFF";
        DIFF_TERM       : string  := "FALSE";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELAY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
end IBUFDS_DLY_ADJ;
