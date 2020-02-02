library verilog;
use verilog.vl_types.all;
entity OR2L is
    port(
        O               : out    vl_logic;
        DI              : in     vl_logic;
        SRI             : in     vl_logic
    );
end OR2L;
