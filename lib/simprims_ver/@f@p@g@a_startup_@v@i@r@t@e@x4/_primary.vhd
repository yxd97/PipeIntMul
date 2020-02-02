library verilog;
use verilog.vl_types.all;
entity FPGA_startup_VIRTEX4 is
    port(
        bus_reset       : out    vl_logic;
        ghigh_b         : out    vl_logic;
        gsr             : out    vl_logic;
        done            : out    vl_logic;
        gwe             : out    vl_logic;
        gts_b           : out    vl_logic;
        shutdown        : in     vl_logic;
        cclk            : in     vl_logic;
        por             : in     vl_logic
    );
end FPGA_startup_VIRTEX4;
