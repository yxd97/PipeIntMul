library verilog;
use verilog.vl_types.all;
entity CARRY4 is
    port(
        CO              : out    vl_logic_vector(3 downto 0);
        O               : out    vl_logic_vector(3 downto 0);
        CI              : in     vl_logic;
        CYINIT          : in     vl_logic;
        DI              : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(3 downto 0)
    );
end CARRY4;
