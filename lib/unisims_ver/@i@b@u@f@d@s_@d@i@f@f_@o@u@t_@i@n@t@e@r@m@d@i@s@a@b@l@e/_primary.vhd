library verilog;
use verilog.vl_types.all;
entity IBUFDS_DIFF_OUT_INTERMDISABLE is
    generic(
        DIFF_TERM       : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        I               : in     vl_logic;
        IB              : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        INTERMDISABLE   : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of USE_IBUFDISABLE : constant is 1;
end IBUFDS_DIFF_OUT_INTERMDISABLE;
