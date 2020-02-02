library verilog;
use verilog.vl_types.all;
entity BUFG_LB is
    port(
        CLKOUT          : out    vl_logic;
        CLKIN           : in     vl_logic
    );
end BUFG_LB;
