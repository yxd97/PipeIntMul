library verilog;
use verilog.vl_types.all;
entity IBUFG_LVTTL is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end IBUFG_LVTTL;
