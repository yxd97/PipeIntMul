library verilog;
use verilog.vl_types.all;
entity BSCAN_FPGACORE is
    port(
        CAPTURE         : out    vl_logic;
        DRCK1           : out    vl_logic;
        DRCK2           : out    vl_logic;
        RESET           : out    vl_logic;
        SEL1            : out    vl_logic;
        SEL2            : out    vl_logic;
        SHIFT           : out    vl_logic;
        TDI             : out    vl_logic;
        UPDATE          : out    vl_logic;
        TDO1            : in     vl_logic;
        TDO2            : in     vl_logic
    );
end BSCAN_FPGACORE;
