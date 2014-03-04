----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:10 02/25/2014 
-- Design Name: 
-- Module Name:    bcd_7_segment - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_7_segment is
    Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd_7_segment;

architecture Behavioral of bcd_7_segment is
begin process (bcd)
begin
output <= "0000000";
case bcd is
	when "0000" =>
		output <= "0111111";
	when "0001" =>
		output <= "0000110";
	when "0010" =>
		output <= "1011011";
	when "0011" =>
		output <= "1001111";
	when "0100" =>
		output <= "1100110";
	when "0101" =>
		output <= "1101101";
	when "0110" =>
		output <= "1111101";
	when "0111" =>
		output <= "0000111";
	when "1000" =>
		output <= "1111111";
	when "1001" =>
		output <= "1101111";
	when "1010" =>
		output <= "1011111";
	when "1011" =>
		output <= "1111100";
	when "1100" =>
		output <= "0111001";
	when "1101" =>
		output <= "1011110";
	when "1110" =>
		output <= "1111001";
	when "1111" =>
		output <= "1110001";
	when others =>
		null;

end case;
end process;

end Behavioral;

