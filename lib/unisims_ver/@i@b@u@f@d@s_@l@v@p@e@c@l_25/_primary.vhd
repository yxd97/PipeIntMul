library verilog;
use verilog.vl_types.all;
entity IBUFDS_LVPECL_25 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_LVPECL_25;
