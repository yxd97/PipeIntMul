library verilog;
use verilog.vl_types.all;
entity MUXCY_D is
    port(
        LO              : out    vl_logic;
        O               : out    vl_logic;
        CI              : in     vl_logic;
        DI              : in     vl_logic;
        S               : in     vl_logic
    );
end MUXCY_D;
