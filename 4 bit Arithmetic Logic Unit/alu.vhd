----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:01 03/04/2014 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end alu;

architecture Behavioral of alu is
signal c :std_logic_vector(3 downto 0);
signal c1 : std_logic_vector(3 downto 0);
signal c2 : std_logic_vector(3 downto 0);
signal temp : std_logic_vector(3 downto 0);

component add is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
c1(0) <= not b(0);
c1(1) <= not b(1);
c1(2) <= not b(2);
c1(3) <= not b(3);

add1: add 
	port map(a,b,c);	
add2: add 
	port map(c1,"0001",c2);
add3: add 
	port map(a,c2,temp);
process(a,b,s)
begin
case s is 
	when "0000" =>
		output(0) <= not a(0);
		output(1) <= not a(1);
		output(2) <= not a(2);
		output(3) <= not a(3);
	when "0001" =>
		output(0) <= a(0) and b(0);
		output(1) <= a(1) and b(1);
		output(2) <= a(2) and b(2);
		output(3) <= a(3) and b(3);
	when "0010" =>
		output(0) <= a(0) or b(0);
		output(1) <= a(1) or b(1);
		output(2) <= a(2) or b(2);
		output(3) <= a(3) or b(3);
	when "0011" =>
		output <= c;
	when "0100" =>
		output <= temp;
	when "0101" =>
		output(0) <= a(1);
		output(1) <= a(2);
		output(2) <= a(3);
		output(3) <= '0';
	when "0110" =>
		output(3) <= a(2);
		output(2) <= a(1);
		output(1) <= a(0);
		output(0) <= '0';
	when "0111" =>
		output(0) <= b(1);
		output(1) <= b(2);
		output(2) <= b(3);
		output(3) <= '0';
	when "1000" =>
		output(3) <= b(2);
		output(2) <= b(1);
		output(1) <= b(0);
		output(0) <= '0';
	when "1001" =>
		output(0) <= not b(0);
		output(1) <= not b(1);
		output(2) <= not b(2);
		output(3) <= not b(3);
	when others =>
		null;
end case;
end process;

end Behavioral;

