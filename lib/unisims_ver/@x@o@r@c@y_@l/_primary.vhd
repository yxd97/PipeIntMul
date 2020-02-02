library verilog;
use verilog.vl_types.all;
entity XORCY_L is
    port(
        LO              : out    vl_logic;
        CI              : in     vl_logic;
        LI              : in     vl_logic
    );
end XORCY_L;
