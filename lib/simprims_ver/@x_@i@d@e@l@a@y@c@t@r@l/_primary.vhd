library verilog;
use verilog.vl_types.all;
entity X_IDELAYCTRL is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        RDY             : out    vl_logic;
        REFCLK          : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_IDELAYCTRL;
