library verilog;
use verilog.vl_types.all;
entity X_IOBUF_DCIEN is
    generic(
        DRIVE           : integer := 12;
        IBUF_LOW_PWR    : string  := "TRUE";
        IOSTANDARD      : string  := "DEFAULT";
        LOC             : string  := "UNPLACED";
        SLEW            : string  := "SLOW";
        USE_IBUFDISABLE : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        IBUFDISABLE     : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DRIVE : constant is 2;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of SLEW : constant is 1;
    attribute mti_svvh_generic_type of USE_IBUFDISABLE : constant is 1;
end X_IOBUF_DCIEN;
