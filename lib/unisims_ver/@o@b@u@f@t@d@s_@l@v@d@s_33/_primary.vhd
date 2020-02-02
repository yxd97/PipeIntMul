library verilog;
use verilog.vl_types.all;
entity OBUFTDS_LVDS_33 is
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFTDS_LVDS_33;
