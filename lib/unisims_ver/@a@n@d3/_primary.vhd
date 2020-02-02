library verilog;
use verilog.vl_types.all;
entity AND3 is
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic
    );
end AND3;
