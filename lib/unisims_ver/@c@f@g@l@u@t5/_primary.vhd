library verilog;
use verilog.vl_types.all;
entity CFGLUT5 is
    generic(
        INIT            : integer := 0
    );
    port(
        CDO             : out    vl_logic;
        O5              : out    vl_logic;
        O6              : out    vl_logic;
        CDI             : in     vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end CFGLUT5;
