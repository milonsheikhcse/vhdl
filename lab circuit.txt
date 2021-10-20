-- Author : Monir Ahammod
-- F=A'B+ABC+BCD'
library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity given_circuit is
port ( A,B,C,D : in std_logic;
             F : out std_logic);
end given_circuit; 

-- architecture
architecture f_result of given_circuit is
begin
F <= '1' when (A = '0' AND B = '1') else
     '1' when (A = '1' AND B = '1' AND C = '1') else
     '1' when (B = '1' AND C = '1' AND D='0') else
     '0';
     
end f_result;