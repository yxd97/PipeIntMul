library verilog;
use verilog.vl_types.all;
entity EQ_COMPARE_MACRO is
    generic(
        DEVICE          : string  := "VIRTEX5";
        LATENCY         : integer := 2;
        MASK            : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SEL_MASK        : string  := "MASK";
        SEL_PATTERN     : string  := "STATIC_PATTERN";
        STATIC_PATTERN  : vl_logic_vector(0 to 47) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        WIDTH           : integer := 48
    );
    port(
        Q               : out    vl_logic;
        CE              : in     vl_logic;
        CLK             : in     vl_logic;
        DATA_IN         : in     vl_logic_vector;
        DYNAMIC_PATTERN : in     vl_logic_vector;
        RST             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE : constant is 1;
    attribute mti_svvh_generic_type of LATENCY : constant is 1;
    attribute mti_svvh_generic_type of MASK : constant is 1;
    attribute mti_svvh_generic_type of SEL_MASK : constant is 1;
    attribute mti_svvh_generic_type of SEL_PATTERN : constant is 1;
    attribute mti_svvh_generic_type of STATIC_PATTERN : constant is 1;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end EQ_COMPARE_MACRO;
