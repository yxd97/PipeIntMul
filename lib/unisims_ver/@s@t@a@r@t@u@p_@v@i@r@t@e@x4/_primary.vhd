library verilog;
use verilog.vl_types.all;
entity STARTUP_VIRTEX4 is
    port(
        EOS             : out    vl_logic;
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic;
        USRCCLKO        : in     vl_logic;
        USRCCLKTS       : in     vl_logic;
        USRDONEO        : in     vl_logic;
        USRDONETS       : in     vl_logic
    );
end STARTUP_VIRTEX4;
