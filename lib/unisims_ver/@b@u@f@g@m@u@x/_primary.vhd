library verilog;
use verilog.vl_types.all;
entity BUFGMUX is
    generic(
        CLK_SEL_TYPE    : string  := "SYNC"
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_SEL_TYPE : constant is 1;
end BUFGMUX;
