library verilog;
use verilog.vl_types.all;
entity X_SUSPEND_SYNC is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        SREQ            : out    vl_logic;
        CLK             : in     vl_logic;
        SACK            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_SUSPEND_SYNC;
