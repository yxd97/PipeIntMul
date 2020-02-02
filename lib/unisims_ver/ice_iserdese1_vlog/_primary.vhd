library verilog;
use verilog.vl_types.all;
entity ice_iserdese1_vlog is
    port(
        ce1             : in     vl_logic;
        ce2             : in     vl_logic;
        NUM_CE          : in     vl_logic;
        clkdiv          : in     vl_logic;
        r               : in     vl_logic;
        ice             : out    vl_logic
    );
end ice_iserdese1_vlog;
