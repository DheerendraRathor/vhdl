----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:15:18 02/25/2014 
-- Design Name: 
-- Module Name:    rand - Behavioral 
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

entity rand is
    Port ( gen : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end rand;

architecture Behavioral of rand is
begin process(gen)
variable output_temp : std_logic_vector( 7 downto 0) := "00000001";
variable temp :std_logic := '0';
begin
case gen is
	when '1' =>
		temp := output_temp(7) xor output_temp(5) xor output_temp(4) xor output_temp(3);
		output_temp(7 downto 1) := output_temp(6 downto 0);
		output_temp(0) := temp;
		output <= output_temp;
	when others =>
		null;
end case;
end process;


end Behavioral;

