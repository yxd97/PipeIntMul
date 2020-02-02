library verilog;
use verilog.vl_types.all;
entity IBUF_DLY_ADJ is
    generic(
        DELAY_OFFSET    : string  := "OFF";
        IOSTANDARD      : string  := "DEFAULT"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELAY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
end IBUF_DLY_ADJ;
