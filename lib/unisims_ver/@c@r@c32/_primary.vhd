library verilog;
use verilog.vl_types.all;
entity CRC32 is
    generic(
        CRC_INIT        : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        CRCOUT          : out    vl_logic_vector(31 downto 0);
        CRCCLK          : in     vl_logic;
        CRCDATAVALID    : in     vl_logic;
        CRCDATAWIDTH    : in     vl_logic_vector(2 downto 0);
        CRCIN           : in     vl_logic_vector(31 downto 0);
        CRCRESET        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CRC_INIT : constant is 1;
end CRC32;
