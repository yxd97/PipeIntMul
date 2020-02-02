library verilog;
use verilog.vl_types.all;
entity fifo_reset_oserdese1_vlog is
    port(
        rst_bufo_p      : out    vl_logic;
        rst_bufo_rc     : out    vl_logic;
        rst_bufg_p      : out    vl_logic;
        rst_bufg_wc     : out    vl_logic;
        rst_cntr        : in     vl_logic;
        bufg_clk        : in     vl_logic;
        bufo_clk        : in     vl_logic;
        clkdiv          : in     vl_logic;
        rst             : in     vl_logic;
        divide_2        : in     vl_logic;
        bufop_clk       : in     vl_logic;
        rst_bufop_rc    : out    vl_logic
    );
end fifo_reset_oserdese1_vlog;
