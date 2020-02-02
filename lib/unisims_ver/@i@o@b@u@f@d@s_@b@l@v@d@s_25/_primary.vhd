library verilog;
use verilog.vl_types.all;
entity IOBUFDS_BLVDS_25 is
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        IOB             : inout  vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
end IOBUFDS_BLVDS_25;
