library verilog;
use verilog.vl_types.all;
entity PHASER_REF is
    port(
        LOCKED          : out    vl_logic;
        CLKIN           : in     vl_logic;
        PWRDWN          : in     vl_logic;
        RST             : in     vl_logic
    );
end PHASER_REF;
