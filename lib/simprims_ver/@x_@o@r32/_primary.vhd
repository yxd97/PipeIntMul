library verilog;
use verilog.vl_types.all;
entity X_OR32 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        O               : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        I8              : in     vl_logic;
        I9              : in     vl_logic;
        I10             : in     vl_logic;
        I11             : in     vl_logic;
        I12             : in     vl_logic;
        I13             : in     vl_logic;
        I14             : in     vl_logic;
        I15             : in     vl_logic;
        I16             : in     vl_logic;
        I17             : in     vl_logic;
        I18             : in     vl_logic;
        I19             : in     vl_logic;
        I20             : in     vl_logic;
        I21             : in     vl_logic;
        I22             : in     vl_logic;
        I23             : in     vl_logic;
        I24             : in     vl_logic;
        I25             : in     vl_logic;
        I26             : in     vl_logic;
        I27             : in     vl_logic;
        I28             : in     vl_logic;
        I29             : in     vl_logic;
        I30             : in     vl_logic;
        I31             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_OR32;
