library verilog;
use verilog.vl_types.all;
entity XOR2 is
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic
    );
end XOR2;
