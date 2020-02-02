library verilog;
use verilog.vl_types.all;
entity iodlyctrl_npre_oserdese1_vlog is
    port(
        iodelay_state   : out    vl_logic;
        bufo_out        : out    vl_logic;
        rst_cntr        : out    vl_logic;
        wc              : in     vl_logic;
        trif            : in     vl_logic;
        rst             : in     vl_logic;
        bufg_clk        : in     vl_logic;
        bufo_clk        : in     vl_logic;
        bufg_clkdiv     : in     vl_logic;
        ddr3_dimm       : in     vl_logic;
        wl6             : in     vl_logic
    );
end iodlyctrl_npre_oserdese1_vlog;
