----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:32 03/11/2014 
-- Design Name: 
-- Module Name:    main - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( start : in  STD_LOGIC;
           stop : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end main;

architecture Behavioral of main is
constant clock_period : time := 1 ms;
--variable cnt : INTEGER := '0';
type state_type is (s0,s1,s2);
signal ps,ns : state_type:=s0;
signal temp : std_logic_vector (7 downto 0) := "00000000";
--begin process (start,stop,reset)
begin


SEQ:process(clock)
begin
	if (rising_edge(clock)) then
		ps <= ns;
		case ps is 
			when s0 =>
				if (start = '1') then 
					temp <= temp + "00000001";
					output <= temp;
					ns <= s1;
				end if;
				if (stop = '1') then 
					output <= temp;
					ns <= ps;
				end if;
				if (reset = '1') then
					output <= temp;
					ns <= ps;
				end if;
			when s1 => 
				if (start = '1') then 
					temp <= temp + "00000001";
					output <= temp;
					ns <= ps;
				end if;
				if (stop = '1') then 
					output <= temp;
					ns <= s2;
				end if;
				if (reset = '1') then 
					temp <= "00000000";
					output <= temp;
					ns <= s0;
				end if;
			when s2 =>
				if (start = '1') then 
					temp <= temp + "00000001";
					output <= temp;
					ns <= s1;
				end if;
				if (stop = '1') then 
					output <= temp;
					ns <= ps;
				end if;
				if (reset = '1') then 
					temp <= "00000000";
					output <= temp;
					ns <= s0;
				end if;
			when others =>
				null;
		end case;
	end if;
end process;

end Behavioral;

