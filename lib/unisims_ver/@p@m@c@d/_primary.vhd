library verilog;
use verilog.vl_types.all;
entity PMCD is
    generic(
        EN_REL          : string  := "FALSE";
        RST_DEASSERT_CLK: string  := "CLKA"
    );
    port(
        CLKA1           : out    vl_logic;
        CLKA1D2         : out    vl_logic;
        CLKA1D4         : out    vl_logic;
        CLKA1D8         : out    vl_logic;
        CLKB1           : out    vl_logic;
        CLKC1           : out    vl_logic;
        CLKD1           : out    vl_logic;
        CLKA            : in     vl_logic;
        CLKB            : in     vl_logic;
        CLKC            : in     vl_logic;
        CLKD            : in     vl_logic;
        REL             : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of EN_REL : constant is 1;
    attribute mti_svvh_generic_type of RST_DEASSERT_CLK : constant is 1;
end PMCD;
