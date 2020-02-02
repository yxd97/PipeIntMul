library verilog;
use verilog.vl_types.all;
entity X_JTAG_SIME2 is
    generic(
        PART_NAME       : string  := "7A8"
    );
    port(
        TDO             : out    vl_logic;
        TCK             : in     vl_logic;
        TDI             : in     vl_logic;
        TMS             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PART_NAME : constant is 1;
end X_JTAG_SIME2;
