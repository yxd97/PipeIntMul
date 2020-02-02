library verilog;
use verilog.vl_types.all;
entity X_MULT18X18SIO is
    generic(
        AREG            : integer := 1;
        BREG            : integer := 1;
        B_INPUT         : string  := "DIRECT";
        LOC             : string  := "UNPLACED";
        PREG            : integer := 1
    );
    port(
        BCOUT           : out    vl_logic_vector(17 downto 0);
        P               : out    vl_logic_vector(35 downto 0);
        A               : in     vl_logic_vector(17 downto 0);
        B               : in     vl_logic_vector(17 downto 0);
        BCIN            : in     vl_logic_vector(17 downto 0);
        CEA             : in     vl_logic;
        CEB             : in     vl_logic;
        CEP             : in     vl_logic;
        CLK             : in     vl_logic;
        RSTA            : in     vl_logic;
        RSTB            : in     vl_logic;
        RSTP            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AREG : constant is 2;
    attribute mti_svvh_generic_type of BREG : constant is 2;
    attribute mti_svvh_generic_type of B_INPUT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of PREG : constant is 2;
end X_MULT18X18SIO;
