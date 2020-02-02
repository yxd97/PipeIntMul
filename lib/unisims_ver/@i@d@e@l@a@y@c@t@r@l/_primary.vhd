library verilog;
use verilog.vl_types.all;
entity IDELAYCTRL is
    port(
        RDY             : out    vl_logic;
        REFCLK          : in     vl_logic;
        RST             : in     vl_logic
    );
end IDELAYCTRL;
