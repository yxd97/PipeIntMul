library verilog;
use verilog.vl_types.all;
entity fifo_tdpipe_oserdese1_vlog is
    port(
        muxout          : out    vl_logic;
        din             : in     vl_logic;
        qwc             : in     vl_logic_vector(1 downto 0);
        qrd             : in     vl_logic_vector(1 downto 0);
        rd_gap1         : in     vl_logic;
        bufg_clk        : in     vl_logic;
        bufo_clk        : in     vl_logic;
        rst_bufo_p      : in     vl_logic;
        rst_bufg_p      : in     vl_logic;
        DDR3_DATA       : in     vl_logic;
        extra           : in     vl_logic;
        ODV             : in     vl_logic;
        DDR3_MODE       : in     vl_logic
    );
end fifo_tdpipe_oserdese1_vlog;
