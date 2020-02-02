library verilog;
use verilog.vl_types.all;
entity X_USR_ACCESSE2 is
    generic(
        LOC             : string  := "UNPLACED"
    );
    port(
        CFGCLK          : out    vl_logic;
        DATA            : out    vl_logic_vector(31 downto 0);
        DATAVALID       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
end X_USR_ACCESSE2;
