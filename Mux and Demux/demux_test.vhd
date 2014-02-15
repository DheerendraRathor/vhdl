--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:37:02 02/11/2014
-- Design Name:   
-- Module Name:   C:/Users/Dheerendra/Google Drive/SEMESTER 4/CS 210/lab02/demux_test.vhd
-- Project Name:  lab02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY demux_test IS
END demux_test;
 
ARCHITECTURE behavior OF demux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux
    PORT(
         input : IN  std_logic;
         sel : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux PORT MAP (
          input => input,
          sel => sel,
          output => output
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		input <= '0';
		sel <= "000";
		wait for 100 ns;
		sel <= "001";
		wait for 100 ns;
		sel <= "010";
		wait for 100 ns;
		sel <= "011";
		wait for 100 ns;
		sel <= "100";
		wait for 100 ns;
		sel <= "101";
		wait for 100 ns;
		sel <= "110";
		wait for 100 ns;
		sel <= "111";
		wait for 100 ns;
		input <= '1';
		sel <= "000";
		wait for 100 ns;
		sel <= "001";
		wait for 100 ns;
		sel <= "010";
		wait for 100 ns;
		sel <= "011";
		wait for 100 ns;
		sel <= "100";
		wait for 100 ns;
		sel <= "101";
		wait for 100 ns;
		sel <= "110";
		wait for 100 ns;
		sel <= "111";
		wait for 100 ns;

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
