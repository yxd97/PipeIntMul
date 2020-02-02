library verilog;
use verilog.vl_types.all;
entity OFDDRCPE is
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
end OFDDRCPE;
