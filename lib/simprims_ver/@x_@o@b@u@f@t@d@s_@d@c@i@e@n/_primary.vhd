library verilog;
use verilog.vl_types.all;
entity X_OBUFTDS_DCIEN is
    generic(
        IOSTANDARD      : string  := "DEFAULT";
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        OB              : out    vl_logic;
        DCITERMDISABLE  : in     vl_logic;
        I               : in     vl_logic;
        T               : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IOSTANDARD : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_OBUFTDS_DCIEN;
