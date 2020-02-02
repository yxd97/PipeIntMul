library verilog;
use verilog.vl_types.all;
entity IOBUF_LVCMOS18 is
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end IOBUF_LVCMOS18;
