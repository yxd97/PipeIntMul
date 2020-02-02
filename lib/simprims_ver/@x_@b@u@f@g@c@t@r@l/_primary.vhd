library verilog;
use verilog.vl_types.all;
entity X_BUFGCTRL is
    generic(
        INIT_OUT        : integer := 0;
        LOC             : string  := "UNPLACED";
        PRESELECT_I0    : string  := "FALSE";
        PRESELECT_I1    : string  := "FALSE"
    );
    port(
        O               : out    vl_logic;
        CE0             : in     vl_logic;
        CE1             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        IGNORE0         : in     vl_logic;
        IGNORE1         : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT_OUT : constant is 2;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of PRESELECT_I0 : constant is 1;
    attribute mti_svvh_generic_type of PRESELECT_I1 : constant is 1;
end X_BUFGCTRL;
