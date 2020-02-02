library verilog;
use verilog.vl_types.all;
entity X_IBUF_IBUFDISABLE is
    generic(
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        LOC             : string  := "UNPLACED";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of USE_IBUFDISABLE : constant is 1;
end X_IBUF_IBUFDISABLE;
