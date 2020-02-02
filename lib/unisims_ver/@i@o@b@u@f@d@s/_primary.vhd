library verilog;
use verilog.vl_types.all;
entity IOBUFDS is
    generic(
        CAPACITANCE     : string  := "DONT_CARE";
        DIFF_TERM       : string  := "FALSE";
        DQS_BIAS        : string  := "FALSE";
        IBUF_DELAY_VALUE: string  := "0";
        IBUF_LOW_PWR    : string  := "TRUE";
        IFD_DELAY_VALUE : string  := "AUTO";
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW"
    );
    port(
        O               : out    vl_logic;
        IO              : inout  vl_logic;
        IOB             : inout  vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CAPACITANCE : constant is 1;
    attribute mti_svvh_generic_type of DIFF_TERM : constant is 1;
    attribute mti_svvh_generic_type of DQS_BIAS : constant is 1;
    attribute mti_svvh_generic_type of IBUF_DELAY_VALUE : constant is 1;
    attribute mti_svvh_generic_type of IBUF_LOW_PWR : constant is 1;
    attribute mti_svvh_generic_type of IFD_DELAY_VALUE : constant is 1;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of SLEW : constant is 1;
end IOBUFDS;
