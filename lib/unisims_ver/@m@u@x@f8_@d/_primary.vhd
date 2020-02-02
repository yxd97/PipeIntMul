library verilog;
use verilog.vl_types.all;
entity MUXF8_D is
    port(
        LO              : out    vl_logic;
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S               : in     vl_logic
    );
end MUXF8_D;
