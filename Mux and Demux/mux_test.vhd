--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:07:13 02/11/2014
-- Design Name:   
-- Module Name:   C:/Users/Dheerendra/Google Drive/SEMESTER 4/CS 210/lab02/mux_test.vhd
-- Project Name:  lab02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer
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
 
ENTITY mux_test IS
END mux_test;
 
ARCHITECTURE behavior OF mux_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplexer
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         i3 : IN  std_logic;
         i4 : IN  std_logic;
         i5 : IN  std_logic;
         i6 : IN  std_logic;
         i7 : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';
   signal i3 : std_logic := '0';
   signal i4 : std_logic := '0';
   signal i5 : std_logic := '0';
   signal i6 : std_logic := '0';
   signal i7 : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s2 : std_logic := '0';

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer PORT MAP (
          i0 => i0,
          i1 => i1,
          i2 => i2,
          i3 => i3,
          i4 => i4,
          i5 => i5,
          i6 => i6,
          i7 => i7,
          s0 => s0,
          s1 => s1,
          s2 => s2,
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
			i0 <= '0';
			i1 <= '1';
			i2 <= '0';
			i3 <= '1';
			i4 <= '1';
			i5 <= '0';
			i6 <= '0';
			i7 <= '1';
			
			s0 <= '0';
			s1 <= '0';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '0';
			s1 <= '0';
			s2 <= '1';
		wait for 100 ns;
			s0 <= '0';
			s1 <= '1';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '0';
			s1 <= '1';
			s2 <= '1';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '0';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '0';
			s2 <= '1';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '1';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '1';
			s2 <= '1';
		wait for 100 ns;
			i0 <= '1';
			i1 <= '0';
			i2 <= '0';
			i3 <= '1';
			i4 <= '0';
			i5 <= '1';
			i6 <= '0';
			i7 <= '1';
			
			s0 <= '0';
			s1 <= '0';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '0';
			s1 <= '0';
			s2 <= '1';
		wait for 100 ns;
			s0 <= '0';
			s1 <= '1';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '0';
			s1 <= '1';
			s2 <= '1';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '0';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '0';
			s2 <= '1';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '1';
			s2 <= '0';
		wait for 100 ns;
			s0 <= '1';
			s1 <= '1';
			s2 <= '1';
			
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
