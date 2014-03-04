--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:54:15 03/04/2014
-- Design Name:   
-- Module Name:   C:/Users/Dheerendra/Google Drive/sem4/cs210/alu/alu_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
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
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         s : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal s : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          a => a,
          b => b,
          s => s,
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
		a <= "1110";
		b <= "0101";

		s <= "0000";
		wait for 100 ns;	
		s <= "0001";
		wait for 100 ns;	
		s <= "0010";
		wait for 100 ns;	
		s <= "0011";
		wait for 100 ns;	
		s <= "0100";
		wait for 100 ns;	
		s <= "0101";
		wait for 100 ns;	
		s <= "0110";
		wait for 100 ns;	
		s <= "0111";
		wait for 100 ns;	
		s <= "1000";
		wait for 100 ns;	
		s <= "1001";
		
		wait for 100 ns;
		a <= "1010";
		b <= "1111";
      
		s <= "0000";
		wait for 100 ns;	
		s <= "0001";
		wait for 100 ns;	
		s <= "0010";
		wait for 100 ns;	
		s <= "0011";
		wait for 100 ns;	
		s <= "0100";
		wait for 100 ns;	
		s <= "0101";
		wait for 100 ns;	
		s <= "0110";
		wait for 100 ns;	
		s <= "0111";
		wait for 100 ns;	
		s <= "1000";
		wait for 100 ns;	
		s <= "1001";
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
