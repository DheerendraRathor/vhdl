-----------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:55 02/11/2014 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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
-----------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux is
    Port ( input : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end demux;

architecture Behavioral of demux is
begin process (input, sel)
begin
output <= "00000000";
	case sel is 
		when "000" =>
			output(0) <= input;
		when "001" =>
			output(1) <= input;
		when "010" =>
			output(2) <= input;
		when "011" =>
			output(3) <= input;
		when "100" =>
			output(4) <= input;
		when "101" =>
			output(5) <= input;
		when "110" =>
			output(6) <= input;
		when "111" =>
			output(7) <= input;
		when others =>
			null;
	end case;
end process;
end Behavioral;

