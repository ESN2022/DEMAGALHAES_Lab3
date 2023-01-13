library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity lab3 is
	port(
		clk : in std_logic := '0';
		reset_n : in std_logic :='0';
		i2c_scl : inout std_logic :='X';
		i2c_sda : inout std_logic :='X';
		i2c_cs_n : out std_logic := '1'
		);
end entity lab3;

architecture rit of lab3 is
    component lab3_sys is
        port (
            clk_clk                 : in    std_logic := 'X'; -- clk
            i2c_export_0_scl_pad_io : inout std_logic := 'X'; -- scl_pad_io
            i2c_export_0_sda_pad_io : inout std_logic := 'X'; -- sda_pad_io
            reset_reset_n           : in    std_logic := 'X'  -- reset_n
        );
    end component lab3_sys;

begin
    u0 : component lab3_sys
        port map (
            clk_clk                 => clk,              -- clk.clk
            i2c_export_0_scl_pad_io => i2c_scl, 			-- i2c_export_0.scl_pad_io
            i2c_export_0_sda_pad_io => i2c_sda, 			-- i2c_export_0.sda_pad_io
            reset_reset_n           => reset_n           -- reset.reset_n
        );
end architecture;