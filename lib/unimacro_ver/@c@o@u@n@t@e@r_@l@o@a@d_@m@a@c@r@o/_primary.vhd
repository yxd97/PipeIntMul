library verilog;
use verilog.vl_types.all;
entity COUNTER_LOAD_MACRO is
    generic(
        COUNT_BY        : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        DEVICE          : string  := "VIRTEX5";
        STYLE           : string  := "DSP";
        WIDTH_DATA      : integer := 48
    );
    port(
        Q               : out    vl_logic_vector;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        DIRECTION       : in     vl_logic;
        LOAD            : in     vl_logic;
        LOAD_DATA       : in     vl_logic_vector;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of COUNT_BY : constant is 1;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of STYLE : constant is 1;
    attribute mti_svvh_generic_type of WIDTH_DATA : constant is 1;
end COUNTER_LOAD_MACRO;
