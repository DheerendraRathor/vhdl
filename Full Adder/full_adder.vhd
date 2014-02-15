----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Dheerendra Singh Rathor
-- 
-- Create Date:    15:55:28 01/28/2014 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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
entity full_adder is
    Port ( a : in  STD_LOGIC; 
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_adder;

architecture Structural of full_adder is

Component AND_3_INPUT is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

signal a0 : std_logic;
signal b0 : std_logic;
signal c0 : std_logic;
signal interm0 : std_logic;
signal a1 : std_logic;
signal b1 : std_logic;
signal c1 : std_logic;
signal interm1 : std_logic;
signal a2 : std_logic;
signal b2 : std_logic;
signal c2 : std_logic;
signal interm2 : std_logic;
signal a3 : std_logic;
signal b3: std_logic;
signal c3: std_logic;
signal interm3 : std_logic;
Component OR_4_INPUT is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           result : out  STD_LOGIC);
end component;
begin
AND0 : AND_3_INPUT
port map(
			a => a0,
			b => b0,
			c => c0,
			result => interm0
			);
a0 <= a;
b0 <= not b;
c0 <= not c;

AND1: AND_3_INPUT
port map(
			a => a1,
			b => b1,
			c => c1,
			result => interm1
			);
a1 <= not a;
b1 <= not b;
c1 <= c;

AND2: AND_3_INPUT
port map(
			a => a2,
			b => b2,
			c => c2,
			result => interm2
			);
a2 <= a;
b2 <= b;
c2 <= c;

AND3: AND_3_INPUT
port map(
			a => a3,
			b => b3,
			c => c3,
			result => interm3
			);
a3 <= not a;
b3 <= b;
c3 <= not c;

OR0 : OR_4_INPUT
port map(
			a => interm0,
			b => interm1,
			c => interm2,
			d => interm3,
			result => sum
			);

carry <= ((a and b) or (b and c)) or (a and c);
end structural;

