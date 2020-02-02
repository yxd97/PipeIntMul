library verilog;
use verilog.vl_types.all;
entity FDDRCPE is
    generic(
        INIT            : vl_logic := Hi0
    );
    port(
        Q               : out    vl_logic;
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        CE              : in     vl_logic;
        CLR             : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        PRE             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end FDDRCPE;
