library verilog;
use verilog.vl_types.all;
entity X_IOBUFDS_DIFF_OUT_DCIEN is
    generic(
        DIFF_TERM       : string  := "FALSE";
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        LOC             : string  := "UNPLACED";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        IO              : inout  vl_logic;
        IOB             : inout  vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        TM              : in     vl_logic;
        TS              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of USE_IBUFDISABLE : constant is 1;
end X_IOBUFDS_DIFF_OUT_DCIEN;
