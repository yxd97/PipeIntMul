library verilog;
use verilog.vl_types.all;
entity X_BUFG_LB is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        CLKOUT          : out    vl_logic;
        CLKIN           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BUFG_LB;
