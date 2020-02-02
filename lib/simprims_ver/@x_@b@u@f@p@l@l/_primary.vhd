library verilog;
use verilog.vl_types.all;
entity X_BUFPLL is
    generic(
        DIVIDE          : integer := 1;
        ENABLE_SYNC     : string  := "TRUE";
        LOC             : string  := "UNPLACED"
    );
    port(
        IOCLK           : out    vl_logic;
        LOCK            : out    vl_logic;
        SERDESSTROBE    : out    vl_logic;
        GCLK            : in     vl_logic;
        LOCKED          : in     vl_logic;
        PLLIN           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DIVIDE : constant is 2;
    attribute mti_svvh_generic_type of ENABLE_SYNC : constant is 1;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_BUFPLL;
