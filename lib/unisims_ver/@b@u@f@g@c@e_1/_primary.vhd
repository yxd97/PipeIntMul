library verilog;
use verilog.vl_types.all;
entity BUFGCE_1 is
    port(
        O               : out    vl_logic;
        CE              : in     vl_logic;
        I               : in     vl_logic
    );
end BUFGCE_1;
