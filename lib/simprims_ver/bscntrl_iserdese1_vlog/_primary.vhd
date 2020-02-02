library verilog;
use verilog.vl_types.all;
entity bscntrl_iserdese1_vlog is
    port(
        c23             : in     vl_logic;
        c45             : in     vl_logic;
        c67             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        DATA_RATE       : in     vl_logic;
        bitslip         : in     vl_logic;
        clk             : in     vl_logic;
        clkdiv          : in     vl_logic;
        r               : in     vl_logic;
        clkdiv_int      : out    vl_logic;
        muxc            : out    vl_logic
    );
end bscntrl_iserdese1_vlog;
