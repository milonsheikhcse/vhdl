---------------------------------------------
-- 2 bit binary multiplier using half adder 
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity binary_multiplier is 
port (A, B : in bit_vector(1 downto 0);
         O : out bit_vector(3 downto 0)
);
end binary_multiplier;

architecture gate of binary_multiplier is
begin
O(0) <= A(0) AND B(0);
O(1) <= (A(1) AND B(0)) XOR (A(0) AND B(1));
O(2) <= ((A(1) AND B(0)) AND (A(0) AND B(1))) XOR (A(1) AND B(1));
O(3) <= ((A(1) AND B(0)) AND (A(0) AND B(1))) AND (A(1) AND B(1));
end gate;