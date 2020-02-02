library verilog;
use verilog.vl_types.all;
entity IDDR2 is
    generic(
        DDR_ALIGNMENT   : string  := "NONE";
        INIT_Q0         : vl_logic := Hi0;
        INIT_Q1         : vl_logic := Hi0;
        SRTYPE          : string  := "SYNC"
    );
    port(
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DDR_ALIGNMENT : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q0 : constant is 1;
    attribute mti_svvh_generic_type of INIT_Q1 : constant is 1;
    attribute mti_svvh_generic_type of SRTYPE : constant is 1;
end IDDR2;
