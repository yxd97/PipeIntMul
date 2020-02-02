library verilog;
use verilog.vl_types.all;
entity X_IOBUFDS_DCIEN is
    generic(
        LOC             : string  := "UNPLACED";
        DIFF_TERM       : string  := "FALSE";
        DQS_BIAS        : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        IOB             : inout  vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of DQS_BIAS : constant is 1;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of SLEW : constant is 1;
    attribute mti_svvh_generic_type of USE_IBUFDISABLE : constant is 1;
end X_IOBUFDS_DCIEN;
