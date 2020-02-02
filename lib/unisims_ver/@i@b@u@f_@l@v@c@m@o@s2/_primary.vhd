library verilog;
use verilog.vl_types.all;
entity IBUF_LVCMOS2 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end IBUF_LVCMOS2;
