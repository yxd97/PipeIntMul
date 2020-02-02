library verilog;
use verilog.vl_types.all;
entity OFDDRTRSE is
    port(
        O               : out    vl_logic;
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        CE              : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic;
        T               : in     vl_logic
    );
end OFDDRTRSE;
