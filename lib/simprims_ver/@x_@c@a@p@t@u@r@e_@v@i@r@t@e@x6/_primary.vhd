library verilog;
use verilog.vl_types.all;
entity X_CAPTURE_VIRTEX6 is
    generic(
        LOC             : string  := "UNPLACED";
        ONESHOT         : string  := "TRUE"
    );
    port(
        CAP             : in     vl_logic;
        CLK             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of ONESHOT : constant is 1;
end X_CAPTURE_VIRTEX6;
