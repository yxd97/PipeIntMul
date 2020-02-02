library verilog;
use verilog.vl_types.all;
entity X_MULT18X18 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        P               : out    vl_logic_vector(35 downto 0);
        A               : in     vl_logic_vector(17 downto 0);
        B               : in     vl_logic_vector(17 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_MULT18X18;
