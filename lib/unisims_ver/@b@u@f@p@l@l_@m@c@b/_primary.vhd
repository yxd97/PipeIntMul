library verilog;
use verilog.vl_types.all;
entity BUFPLL_MCB is
    generic(
        DIVIDE          : integer := 2;
        LOCK_SRC        : string  := "LOCK_TO_0"
    );
    port(
        IOCLK0          : out    vl_logic;
        IOCLK1          : out    vl_logic;
        LOCK            : out    vl_logic;
        SERDESSTROBE0   : out    vl_logic;
        SERDESSTROBE1   : out    vl_logic;
        GCLK            : in     vl_logic;
        LOCKED          : in     vl_logic;
        PLLIN0          : in     vl_logic;
        PLLIN1          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of LOCK_SRC : constant is 1;
end BUFPLL_MCB;
