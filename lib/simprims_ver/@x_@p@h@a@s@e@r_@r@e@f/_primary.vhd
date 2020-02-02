library verilog;
use verilog.vl_types.all;
entity X_PHASER_REF is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        LOCKED          : out    vl_logic;
        CLKIN           : in     vl_logic;
        PWRDWN          : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_PHASER_REF;
