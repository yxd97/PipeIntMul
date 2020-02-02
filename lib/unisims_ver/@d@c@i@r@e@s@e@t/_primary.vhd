library verilog;
use verilog.vl_types.all;
entity DCIRESET is
    port(
        LOCKED          : out    vl_logic;
        RST             : in     vl_logic
    );
end DCIRESET;
