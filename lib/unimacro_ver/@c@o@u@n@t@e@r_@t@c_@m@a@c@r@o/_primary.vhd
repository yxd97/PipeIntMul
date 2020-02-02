library verilog;
use verilog.vl_types.all;
entity COUNTER_TC_MACRO is
    generic(
        COUNT_BY        : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        DEVICE          : string  := "VIRTEX5";
        DIRECTION       : string  := "UP";
        RESET_UPON_TC   : string  := "FALSE";
        TC_VALUE        : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        STYLE           : string  := "DSP";
        WIDTH_DATA      : integer := 48
    );
    port(
        Q               : out    vl_logic_vector;
        TC              : out    vl_logic;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of COUNT_BY : constant is 1;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of DIRECTION : constant is 1;
    attribute mti_svvh_generic_type of RESET_UPON_TC : constant is 1;
    attribute mti_svvh_generic_type of TC_VALUE : constant is 1;
    attribute mti_svvh_generic_type of STYLE : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_DATA : constant is 1;
end COUNTER_TC_MACRO;
