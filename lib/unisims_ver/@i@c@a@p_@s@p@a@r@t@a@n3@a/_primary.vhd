library verilog;
use verilog.vl_types.all;
entity ICAP_SPARTAN3A is
    port(
        BUSY            : out    vl_logic;
        O               : out    vl_logic_vector(7 downto 0);
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 0);
        WRITE           : in     vl_logic
    );
end ICAP_SPARTAN3A;
