library verilog;
use verilog.vl_types.all;
entity X_IBUFDS_INTERMDISABLE is
    generic(
        LOC             : string  := "UNPLACED";
        DIFF_TERM       : string  := "FALSE";
        DQS_BIAS        : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        INTERMDISABLE   : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of DQS_BIAS : constant is 1;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of USE_IBUFDISABLE : constant is 1;
end X_IBUFDS_INTERMDISABLE;
