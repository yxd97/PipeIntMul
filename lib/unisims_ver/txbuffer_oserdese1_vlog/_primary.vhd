library verilog;
use verilog.vl_types.all;
entity txbuffer_oserdese1_vlog is
    port(
        iodelay_state   : out    vl_logic;
        qmux1           : out    vl_logic;
        qmux2           : out    vl_logic;
        tmux1           : out    vl_logic;
        tmux2           : out    vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        t1              : in     vl_logic;
        t2              : in     vl_logic;
        trif            : in     vl_logic;
        WC              : in     vl_logic;
        ODV             : in     vl_logic;
        extra           : out    vl_logic;
        clk             : in     vl_logic;
        clkdiv          : in     vl_logic;
        bufo            : in     vl_logic;
        bufop           : in     vl_logic;
        rst             : in     vl_logic;
        ODELAY_USED     : in     vl_logic;
        DDR3_DATA       : in     vl_logic;
        DDR3_MODE       : in     vl_logic
    );
end txbuffer_oserdese1_vlog;
