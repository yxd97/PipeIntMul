library verilog;
use verilog.vl_types.all;
entity BUFGMUX_VIRTEX4 is
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S               : in     vl_logic
    );
end BUFGMUX_VIRTEX4;
