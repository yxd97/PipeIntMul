library verilog;
use verilog.vl_types.all;
entity X_IBUFDS_DLY_ADJ is
    generic(
        DELAY_OFFSET    : string  := "OFF";
        DIFF_TERM       : string  := "FALSE";
        IOSTANDARD      : string  := "DEFAULT";
        LOC             : string  := "UNPLACED";
        SIM_TAPDELAY_VALUE: integer := 200;
        SIM_DELAY0      : integer := 0;
        SIM_DELAY1      : integer := 0;
        SIM_DELAY2      : integer := 0;
        SIM_DELAY3      : integer := 0;
        SIM_DELAY4      : integer := 0;
        SIM_DELAY5      : integer := 0;
        SIM_DELAY6      : integer := 0;
        SIM_DELAY7      : integer := 0;
        SIM_DELAY8      : integer := 0;
        SIM_DELAY9      : integer := 0;
        SIM_DELAY10     : integer := 0;
        SIM_DELAY11     : integer := 0;
        SIM_DELAY12     : integer := 0;
        SIM_DELAY13     : integer := 0;
        SIM_DELAY14     : integer := 0;
        SIM_DELAY15     : integer := 0;
        SIM_DELAY16     : integer := 0;
        SPECTRUM_OFFSET_DELAY: integer := 1600
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DELAY_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of SIM_TAPDELAY_VALUE : constant is 1;
    attribute mti_svvh_generic_type of SIM_DELAY0 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY1 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY2 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY3 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY4 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY5 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY6 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY7 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY8 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY9 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY10 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY11 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY12 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY13 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY14 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY15 : constant is 2;
    attribute mti_svvh_generic_type of SIM_DELAY16 : constant is 2;
    attribute mti_svvh_generic_type of SPECTRUM_OFFSET_DELAY : constant is 1;
end X_IBUFDS_DLY_ADJ;
