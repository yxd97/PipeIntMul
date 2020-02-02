library verilog;
use verilog.vl_types.all;
entity IBUFDS_BLVDS_25 is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_BLVDS_25;
