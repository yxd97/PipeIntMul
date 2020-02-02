library verilog;
use verilog.vl_types.all;
entity C_TWOS_COMP_V6_0 is
    generic(
        C_AINIT_VAL     : string  := "";
        C_BYPASS_ENABLE : integer := 0;
        C_BYPASS_LOW    : integer := 0;
        C_ENABLE_RLOCS  : integer := 1;
        C_HAS_ACLR      : integer := 0;
        C_HAS_AINIT     : integer := 0;
        C_HAS_ASET      : integer := 0;
        C_HAS_BYPASS    : integer := 0;
        C_HAS_CE        : integer := 0;
        C_HAS_Q         : integer := 1;
        C_HAS_S         : integer := 0;
        C_HAS_SCLR      : integer := 0;
        C_HAS_SINIT     : integer := 0;
        C_HAS_SSET      : integer := 0;
        C_PIPE_STAGES   : integer := 0;
        C_SINIT_VAL     : string  := "";
        C_SYNC_ENABLE   : integer := 0;
        C_SYNC_PRIORITY : integer := 1;
        C_WIDTH         : integer := 16
    );
    port(
        A               : in     vl_logic_vector;
        BYPASS          : in     vl_logic;
        CLK             : in     vl_logic;
        CE              : in     vl_logic;
        ACLR            : in     vl_logic;
        ASET            : in     vl_logic;
        AINIT           : in     vl_logic;
        SCLR            : in     vl_logic;
        SSET            : in     vl_logic;
        SINIT           : in     vl_logic;
        S               : out    vl_logic_vector;
        Q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of C_AINIT_VAL : constant is 1;
    attribute mti_svvh_generic_type of C_BYPASS_ENABLE : constant is 1;
    attribute mti_svvh_generic_type of C_BYPASS_LOW : constant is 1;
    attribute mti_svvh_generic_type of C_ENABLE_RLOCS : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_ACLR : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_AINIT : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_ASET : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_BYPASS : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_CE : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_Q : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_S : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_SCLR : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_SINIT : constant is 1;
    attribute mti_svvh_generic_type of C_HAS_SSET : constant is 1;
    attribute mti_svvh_generic_type of C_PIPE_STAGES : constant is 1;
    attribute mti_svvh_generic_type of C_SINIT_VAL : constant is 1;
    attribute mti_svvh_generic_type of C_SYNC_ENABLE : constant is 1;
    attribute mti_svvh_generic_type of C_SYNC_PRIORITY : constant is 1;
    attribute mti_svvh_generic_type of C_WIDTH : constant is 1;
end C_TWOS_COMP_V6_0;
