library verilog;
use verilog.vl_types.all;
entity fifo_addr_oserdese1_vlog is
    port(
        qwc             : out    vl_logic_vector(1 downto 0);
        qrd             : out    vl_logic_vector(1 downto 0);
        rd_gap1         : out    vl_logic;
        rst_bufg_wc     : in     vl_logic;
        rst_bufo_rc     : in     vl_logic;
        bufg_clk        : in     vl_logic;
        bufo_clk        : in     vl_logic;
        data            : in     vl_logic;
        extra           : out    vl_logic;
        rst_bufop_rc    : in     vl_logic;
        bufop_clk       : in     vl_logic
    );
end fifo_addr_oserdese1_vlog;
