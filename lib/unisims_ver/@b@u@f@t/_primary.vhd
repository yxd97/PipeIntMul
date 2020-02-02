library verilog;
use verilog.vl_types.all;
entity BUFT is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end BUFT;
