library verilog;
use verilog.vl_types.all;
entity MULT18X18 is
    port(
        P               : out    vl_logic_vector(35 downto 0);
        A               : in     vl_logic_vector(17 downto 0);
        B               : in     vl_logic_vector(17 downto 0)
    );
end MULT18X18;
