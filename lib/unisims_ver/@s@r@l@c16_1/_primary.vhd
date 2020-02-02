library verilog;
use verilog.vl_types.all;
entity SRLC16_1 is
    generic(
        INIT            : vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        Q               : out    vl_logic;
        Q15             : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end SRLC16_1;
