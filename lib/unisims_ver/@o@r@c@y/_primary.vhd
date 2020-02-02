library verilog;
use verilog.vl_types.all;
entity ORCY is
    port(
        O               : out    vl_logic;
        CI              : in     vl_logic;
        I               : in     vl_logic
    );
end ORCY;
