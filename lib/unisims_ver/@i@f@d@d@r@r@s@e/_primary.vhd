library verilog;
use verilog.vl_types.all;
entity IFDDRRSE is
    port(
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        CE              : in     vl_logic;
        D               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic
    );
end IFDDRRSE;
