library verilog;
use verilog.vl_types.all;
entity NAND2B1 is
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic
    );
end NAND2B1;
