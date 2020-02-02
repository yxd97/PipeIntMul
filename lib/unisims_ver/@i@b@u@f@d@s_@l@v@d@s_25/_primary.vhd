library verilog;
use verilog.vl_types.all;
entity IBUFDS_LVDS_25 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_LVDS_25;
