library verilog;
use verilog.vl_types.all;
entity RAM64X1D_1 is
    generic(
        INIT            : vl_logic_vector(0 to 63) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        DPO             : out    vl_logic;
        SPO             : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        A5              : in     vl_logic;
        D               : in     vl_logic;
        DPRA0           : in     vl_logic;
        DPRA1           : in     vl_logic;
        DPRA2           : in     vl_logic;
        DPRA3           : in     vl_logic;
        DPRA4           : in     vl_logic;
        DPRA5           : in     vl_logic;
        WCLK            : in     vl_logic;
        WE              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end RAM64X1D_1;
