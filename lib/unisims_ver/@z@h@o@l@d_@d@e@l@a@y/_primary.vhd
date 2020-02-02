library verilog;
use verilog.vl_types.all;
entity ZHOLD_DELAY is
    generic(
        ZHOLD_FABRIC    : string  := "DEFAULT";
        ZHOLD_IFF       : string  := "DEFAULT"
    );
    port(
        DLYFABRIC       : out    vl_logic;
        DLYIFF          : out    vl_logic;
        DLYIN           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ZHOLD_FABRIC : constant is 1;
    attribute mti_svvh_generic_type of ZHOLD_IFF : constant is 1;
end ZHOLD_DELAY;
