library verilog;
use verilog.vl_types.all;
entity GT11CLK_MGT is
    generic(
        SYNCLK1OUTEN    : string  := "ENABLE";
        SYNCLK2OUTEN    : string  := "DISABLE"
    );
    port(
        SYNCLK1OUT      : out    vl_logic;
        SYNCLK2OUT      : out    vl_logic;
        MGTCLKN         : in     vl_logic;
        MGTCLKP         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SYNCLK1OUTEN : constant is 1;
    attribute mti_svvh_generic_type of SYNCLK2OUTEN : constant is 1;
end GT11CLK_MGT;
