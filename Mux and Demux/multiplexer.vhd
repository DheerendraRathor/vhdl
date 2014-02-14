-----------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:18 02/11/2014 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
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

entity multiplexer is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           i4 : in  STD_LOGIC;
           i5 : in  STD_LOGIC;
			  i6 : in  STD_LOGIC;
			  i7 : in  STD_LOGIC;
			  s0 : in  STD_LOGIC;
			  s1 : in  STD_LOGIC;
			  s2 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end multiplexer;

architecture Behavioral of multiplexer is

begin
output <= i0 when s0 = '0' and s1 = '0' and s2 = '0' else 
			 i1 when s0 = '0' and s1 = '0' and s2 = '1' else 
			 i2 when s0 = '0' and s1 = '1' and s2 = '0' else  
			 i3 when s0 = '0' and s1 = '1' and s2 = '1' else
			 i4 when s0 = '1' and s1 = '0' and s2 = '0' else
			 i5 when s0 = '1' and s1 = '0' and s2 = '1' else
			 i6 when s0 = '1' and s1 = '1' and s2 = '0' else
			 i7 when s0 = '1' and s1 = '1' and s2 = '1' ;
end Behavioral;

