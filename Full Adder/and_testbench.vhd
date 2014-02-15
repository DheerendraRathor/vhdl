--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:21:08 02/04/2014
-- Design Name:   
-- Module Name:   C:/Users/Dheerendra/Google Drive/SEMESTER 4/CS 210/full_adder/and_testbench.vhd
-- Project Name:  full_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AND_3_INPUT
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
 
ENTITY and_testbench IS
END and_testbench;
 
ARCHITECTURE behavior OF and_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AND_3_INPUT
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal result : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AND_3_INPUT PORT MAP (
          a => a,
          b => b,
          c => c,
          result => result
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= '0';
		b <= '0';
		c <= '1';

		wait for 100 ns;	
		a <= '1';
		b <= '0';
		c <= '0';
		
		wait for 100 ns;	
		a <= '1';
		b <= '0';
		c <= '1';
		
		wait for 100 ns;	
		a <= '1';
		b <= '1';
		c <= '0';
		
		wait for 100 ns;	
		a <= '1';
		b <= '1';
		c <= '1';
		
		wait for 100 ns;	
		a <= '0';
		b <= '1';
		c <= '0';
		
		wait for 100 ns;	
		a <= '0';
		b <= '1';
		c <= '1';
      
      -- insert stimulus here 

      wait;
   end process;

END;
