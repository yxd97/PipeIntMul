library verilog;
use verilog.vl_types.all;
entity X_POST_CRC_INTERNAL is
    port(
        CRCERROR        : out    vl_logic
    );
end X_POST_CRC_INTERNAL;
