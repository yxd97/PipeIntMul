library verilog;
use verilog.vl_types.all;
entity AUTOBUF is
    generic(
        BUFFER_TYPE     : string  := "AUTO"
    );
    port(
        O               : out    vl_logic;
        I               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BUFFER_TYPE : constant is 1;
end AUTOBUF;
