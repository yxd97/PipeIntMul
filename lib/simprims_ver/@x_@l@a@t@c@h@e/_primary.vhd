library verilog;
use verilog.vl_types.all;
entity X_LATCHE is
    generic(
        INIT            : vl_logic := Hi0;
        LOC             : string  := "UNPLACED";
        XON             : string  := "TRUE";
        MSGON           : string  := "TRUE"
    );
    port(
        O               : out    vl_logic;
        CLK             : in     vl_logic;
        GE              : in     vl_logic;
        I               : in     vl_logic;
        RST             : in     vl_logic;
        SET             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of XON : constant is 1;
    attribute mti_svvh_generic_type of MSGON : constant is 1;
end X_LATCHE;
