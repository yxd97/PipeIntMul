library verilog;
use verilog.vl_types.all;
entity X_ODDR is
    generic(
        DDR_CLK_EDGE    : string  := "OPPOSITE_EDGE";
        INIT            : vl_logic := Hi0;
        SRTYPE          : string  := "SYNC";
        LOC             : string  := "UNPLACED";
        MSGON           : string  := "TRUE";
        XON             : string  := "TRUE"
    );
    port(
        Q               : out    vl_logic;
        C               : in     vl_logic;
        CE              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DDR_CLK_EDGE : constant is 1;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of SRTYPE : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of MSGON : constant is 1;
    attribute mti_svvh_generic_type of XON : constant is 1;
end X_ODDR;
