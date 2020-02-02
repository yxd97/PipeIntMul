library verilog;
use verilog.vl_types.all;
entity OBUFT_LVTTL_F_8 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end OBUFT_LVTTL_F_8;
