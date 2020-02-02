library verilog;
use verilog.vl_types.all;
entity X_EFUSE_USR is
    generic(
        LOC             : string  := "UNPLACED";
        SIM_EFUSE_VALUE : vl_logic_vector(31 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        EFUSEUSR        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOC : constant is 1;
    attribute mti_svvh_generic_type of SIM_EFUSE_VALUE : constant is 2;
end X_EFUSE_USR;
