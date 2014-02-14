This directory contains code for full adder in vhdl made in Xilinx ISE Desing 14.7
Contents:
1. AND_3_INPUT.vhd + and_testbench.vhd -> These files are for a AND gate taking 3 input and giving output as and of them.
  X = ABC
2. OR_4_INPUT.vhd + or_testbench.vhd -> These files are for a OR gate taking 4 input and giving output as OR of them.
  X = A + B + C +D.
3. full_adder.vhd + test_bench.vhd -> These files contains the main code for full adder using above AND and OR gate as 
  components.
  Sum = AB'C' + A'B'C + ABC + A'BC'
  Carry = AB + BC + AC
