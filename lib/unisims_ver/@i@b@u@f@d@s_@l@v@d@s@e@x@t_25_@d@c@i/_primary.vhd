library verilog;
use verilog.vl_types.all;
entity IBUFDS_LVDSEXT_25_DCI is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic
    );
end IBUFDS_LVDSEXT_25_DCI;
