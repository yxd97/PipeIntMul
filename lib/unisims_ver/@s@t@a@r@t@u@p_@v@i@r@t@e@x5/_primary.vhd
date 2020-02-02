library verilog;
use verilog.vl_types.all;
entity STARTUP_VIRTEX5 is
    port(
        CFGCLK          : out    vl_logic;
        CFGMCLK         : out    vl_logic;
        DINSPI          : out    vl_logic;
        EOS             : out    vl_logic;
        TCKSPI          : out    vl_logic;
        CLK             : in     vl_logic;
        GSR             : in     vl_logic;
        GTS             : in     vl_logic;
        USRCCLKO        : in     vl_logic;
        USRCCLKTS       : in     vl_logic;
        USRDONEO        : in     vl_logic;
        USRDONETS       : in     vl_logic
    );
end STARTUP_VIRTEX5;
