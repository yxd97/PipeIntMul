library verilog;
use verilog.vl_types.all;
entity BUFH is
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
end BUFH;
