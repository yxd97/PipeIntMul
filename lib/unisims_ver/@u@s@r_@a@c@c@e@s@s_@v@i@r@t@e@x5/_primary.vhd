library verilog;
use verilog.vl_types.all;
entity USR_ACCESS_VIRTEX5 is
    port(
        CFGCLK          : out    vl_logic;
        DATA            : out    vl_logic_vector(31 downto 0);
        DATAVALID       : out    vl_logic
    );
end USR_ACCESS_VIRTEX5;
