library verilog;
use verilog.vl_types.all;
entity JTAGPPC440 is
    port(
        TCK             : out    vl_logic;
        TDIPPC          : out    vl_logic;
        TMS             : out    vl_logic;
        TDOPPC          : in     vl_logic
    );
end JTAGPPC440;
