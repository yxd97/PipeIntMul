library verilog;
use verilog.vl_types.all;
entity NOR4B3 is
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic
    );
end NOR4B3;
