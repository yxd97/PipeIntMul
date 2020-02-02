library verilog;
use verilog.vl_types.all;
entity X_FDDRRSE is
    generic(
        INIT            : vl_logic := Hi0;
        LOC             : string  := "UNPLACED"
    );
    port(
        Q               : out    vl_logic;
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        CE              : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_FDDRRSE;
