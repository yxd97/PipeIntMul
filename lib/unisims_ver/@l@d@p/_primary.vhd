library verilog;
use verilog.vl_types.all;
entity LDP is
    generic(
        INIT            : vl_logic := Hi1
    );
    port(
        Q               : out    vl_logic;
        D               : in     vl_logic;
        G               : in     vl_logic;
        PRE             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end LDP;
