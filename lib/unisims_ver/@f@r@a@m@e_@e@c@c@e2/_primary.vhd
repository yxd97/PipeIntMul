library verilog;
use verilog.vl_types.all;
entity FRAME_ECCE2 is
    generic(
        FARSRC          : string  := "EFAR";
        FRAME_RBT_IN_FILENAME: string  := "NONE"
    );
    port(
        CRCERROR        : out    vl_logic;
        ECCERROR        : out    vl_logic;
        ECCERRORSINGLE  : out    vl_logic;
        FAR             : out    vl_logic_vector(25 downto 0);
        SYNBIT          : out    vl_logic_vector(4 downto 0);
        SYNDROME        : out    vl_logic_vector(12 downto 0);
        SYNDROMEVALID   : out    vl_logic;
        SYNWORD         : out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FARSRC : constant is 1;
    attribute mti_svvh_generic_type of FRAME_RBT_IN_FILENAME : constant is 1;
end FRAME_ECCE2;
