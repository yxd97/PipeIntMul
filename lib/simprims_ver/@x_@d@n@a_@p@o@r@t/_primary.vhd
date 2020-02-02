library verilog;
use verilog.vl_types.all;
entity X_DNA_PORT is
    generic(
        SIM_DNA_VALUE   : vl_logic_vector(0 to 56) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        LOC             : string  := "UNPLACED"
    );
    port(
        DOUT            : out    vl_logic;
        CLK             : in     vl_logic;
        DIN             : in     vl_logic;
        READ            : in     vl_logic;
        SHIFT           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SIM_DNA_VALUE : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_DNA_PORT;
