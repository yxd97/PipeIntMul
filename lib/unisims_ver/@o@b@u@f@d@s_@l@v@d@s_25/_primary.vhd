library verilog;
use verilog.vl_types.all;
entity OBUFDS_LVDS_25 is
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic
    );
end OBUFDS_LVDS_25;
