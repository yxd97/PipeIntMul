library verilog;
use verilog.vl_types.all;
entity POST_CRC_INTERNAL is
    port(
        CRCERROR        : out    vl_logic
    );
end POST_CRC_INTERNAL;
