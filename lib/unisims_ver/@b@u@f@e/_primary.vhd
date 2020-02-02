library verilog;
use verilog.vl_types.all;
entity BUFE is
    port(
        O               : out    vl_logic;
        E               : in     vl_logic;
        I               : in     vl_logic
    );
end BUFE;
