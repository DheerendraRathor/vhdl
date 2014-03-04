----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:15 03/04/2014 
-- Design Name: 
-- Module Name:    add - Behavioral 
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

entity add is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end add;


architecture Behavioral of add is
signal c1 :std_logic;
signal c2 : std_logic;
signal c3 : std_logic;
begin

output(0) <= a(0) xor b(0);
c1 <= a(0) and b(0);
output(1) <= a(1) xor b(1) xor c1;
c2 <= (a(1) and b(1)) or (a(1) and c1) or (b(1) and c1);
output(2) <= a(2) xor b(2) xor c2;
c3 <= (a(2) and b(2)) or (a(2) and c2) or (b(2) and c2);
output(3) <= a(3) xor b(3) xor c3;


end Behavioral;

