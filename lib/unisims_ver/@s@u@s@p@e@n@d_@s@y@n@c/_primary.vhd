library verilog;
use verilog.vl_types.all;
entity SUSPEND_SYNC is
    port(
        SREQ            : out    vl_logic;
        CLK             : in     vl_logic;
        SACK            : in     vl_logic
    );
end SUSPEND_SYNC;
