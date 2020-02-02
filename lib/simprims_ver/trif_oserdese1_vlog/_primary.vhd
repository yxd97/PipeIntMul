library verilog;
use verilog.vl_types.all;
entity trif_oserdese1_vlog is
    generic(
        ffd             : integer := 1;
        mxd             : integer := 1
    );
    port(
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        load            : in     vl_logic;
        C               : in     vl_logic;
        CLKDIV          : in     vl_logic;
        SR              : in     vl_logic;
        TCE             : in     vl_logic;
        DATA_RATE_TQ    : in     vl_logic_vector(1 downto 0);
        TRISTATE_WIDTH  : in     vl_logic_vector(1 downto 0);
        INIT_TQ         : in     vl_logic;
        SRVAL_TQ        : in     vl_logic;
        data1           : out    vl_logic;
        data2           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ffd : constant is 1;
    attribute mti_svvh_generic_type of mxd : constant is 1;
end trif_oserdese1_vlog;
