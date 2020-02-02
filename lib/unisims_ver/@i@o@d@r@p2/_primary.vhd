library verilog;
use verilog.vl_types.all;
entity IODRP2 is
    generic(
        DATA_RATE       : string  := "SDR";
        SIM_TAPDELAY_VALUE: integer := 75
    );
    port(
        DATAOUT         : out    vl_logic;
        DATAOUT2        : out    vl_logic;
        DOUT            : out    vl_logic;
        SDO             : out    vl_logic;
        TOUT            : out    vl_logic;
        ADD             : in     vl_logic;
        BKST            : in     vl_logic;
        CLK             : in     vl_logic;
        CS              : in     vl_logic;
        IDATAIN         : in     vl_logic;
        IOCLK0          : in     vl_logic;
        IOCLK1          : in     vl_logic;
        ODATAIN         : in     vl_logic;
        SDI             : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_RATE : constant is 1;
    attribute mti_svvh_generic_type of SIM_TAPDELAY_VALUE : constant is 2;
end IODRP2;
