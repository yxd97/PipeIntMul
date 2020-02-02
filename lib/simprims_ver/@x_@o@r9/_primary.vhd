library verilog;
use verilog.vl_types.all;
entity X_OR9 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        I8              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_OR9;
