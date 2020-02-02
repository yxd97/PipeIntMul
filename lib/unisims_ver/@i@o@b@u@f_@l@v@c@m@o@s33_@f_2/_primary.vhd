library verilog;
use verilog.vl_types.all;
entity IOBUF_LVCMOS33_F_2 is
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end IOBUF_LVCMOS33_F_2;
