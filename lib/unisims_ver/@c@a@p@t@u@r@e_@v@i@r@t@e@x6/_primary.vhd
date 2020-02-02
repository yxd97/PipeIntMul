library verilog;
use verilog.vl_types.all;
entity CAPTURE_VIRTEX6 is
    generic(
        ONESHOT         : string  := "TRUE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ONESHOT : constant is 1;
end CAPTURE_VIRTEX6;
