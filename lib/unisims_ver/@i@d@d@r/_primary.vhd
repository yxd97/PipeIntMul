library verilog;
use verilog.vl_types.all;
entity IDDR is
    generic(
        DDR_CLK_EDGE    : string  := "OPPOSITE_EDGE";
        INIT_Q1         : vl_logic := Hi0;
        INIT_Q2         : vl_logic := Hi0;
        SRTYPE          : string  := "SYNC"
    );
    port(
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DDR_CLK_EDGE : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q1 : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q2 : constant is 1;
    attribute mti_svvh_generic_type of SRTYPE : constant is 1;
end IDDR;
