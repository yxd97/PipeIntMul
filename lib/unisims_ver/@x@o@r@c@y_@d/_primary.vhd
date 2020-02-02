library verilog;
use verilog.vl_types.all;
entity XORCY_D is
    port(
        LO              : out    vl_logic;
        O               : out    vl_logic;
        CI              : in     vl_logic;
        LI              : in     vl_logic
    );
end XORCY_D;
