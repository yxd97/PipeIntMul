library verilog;
use verilog.vl_types.all;
entity tout_oserdese1_vlog is
    generic(
        ffd             : integer := 1;
        mxd             : integer := 1
    );
    port(
        data1           : in     vl_logic;
        data2           : in     vl_logic;
        CLK             : in     vl_logic;
        BUFO            : in     vl_logic;
        SR              : in     vl_logic;
        TCE             : in     vl_logic;
        DATA_RATE_TQ    : in     vl_logic_vector(1 downto 0);
        TRISTATE_WIDTH  : in     vl_logic_vector(1 downto 0);
        INIT_TQ         : in     vl_logic;
        SRVAL_TQ        : in     vl_logic;
        TQ              : out    vl_logic;
        DDR3_MODE       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ffd : constant is 1;
    attribute mti_svvh_generic_type of mxd : constant is 1;
end tout_oserdese1_vlog;
