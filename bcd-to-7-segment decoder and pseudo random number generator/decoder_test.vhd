--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:30 02/25/2014
-- Design Name:   
-- Module Name:   C:/Users/Dheerendra/Google Drive/sem4/cs210/lab03/decoder_test.vhd
-- Project Name:  lab03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bcd_7_segment
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
 
ENTITY decoder_test IS
END decoder_test;
 
ARCHITECTURE behavior OF decoder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_7_segment
    PORT(
         bcd : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bcd : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_7_segment PORT MAP (
          bcd => bcd,
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
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		bcd <= "0000";
		wait for 100 ns;
		bcd <= "0001";
		wait for 100 ns;
		bcd <= "0010";
		wait for 100 ns;
		bcd <= "0011";
		wait for 100 ns;
		bcd <= "0100";
		wait for 100 ns;
		bcd <= "0101";
		wait for 100 ns;
		bcd <= "0110";
		wait for 100 ns;
		bcd <= "0111";
		wait for 100 ns;
		bcd <= "1000";
		wait for 100 ns;
		bcd <= "1001";
		wait for 100 ns;
		bcd <= "1010";
		wait for 100 ns;
		bcd <= "1011";
		wait for 100 ns;
		bcd <= "1100";
		wait for 100 ns;
		bcd <= "1101";
		wait for 100 ns;
		bcd <= "1110";
		wait for 100 ns;
		bcd <= "1111";
		wait for 100 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
