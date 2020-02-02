library verilog;
use verilog.vl_types.all;
entity X_OBUFT_DCIEN is
    generic(
        DRIVE           : integer := 12;
        IOSTANDARD      : string  := "DEFAULT";
        SLEW            : string  := "SLOW";
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DRIVE : constant is 2;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of SLEW : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_OBUFT_DCIEN;
