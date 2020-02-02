library verilog;
use verilog.vl_types.all;
entity BUFR is
    generic(
        BUFR_DIVIDE     : string  := "BYPASS";
        SIM_DEVICE      : string  := "VIRTEX4"
    );
    port(
        O               : out    vl_logic;
        CE              : in     vl_logic;
        CLR             : in     vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BUFR_DIVIDE : constant is 1;
    attribute mti_svvh_generic_type of SIM_DEVICE : constant is 1;
end BUFR;
