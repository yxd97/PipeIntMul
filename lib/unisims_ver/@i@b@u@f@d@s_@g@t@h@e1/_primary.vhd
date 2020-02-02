library verilog;
use verilog.vl_types.all;
entity IBUFDS_GTHE1 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_GTHE1;
