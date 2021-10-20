library IEEE;
Use IEEE. STD_LOGIC_1164.all;
entity fulladder IS
port (a,b,cin :in STD_LOGIC;
      sum,carry : out STD_LOGIC);
end fulladder;
----------architecture of full adder
architecture FA_arch of fulladder is
-----------half adder component
component half_adder is
port (p,q :in STD_LOGIC;
      s,cy: out STD_LOGIC);
end component;
-----------or gate component
component or_gate is
port (p1,q1 :in STD_LOGIC;
      r1: out STD_LOGIC);
end component;

signal s1,c1,c2 : STD_LOGIC;
begin
 w1: half_adder port map (a,b,s1,c1);
 w2: half_adder port map (s1,cin,sum,c2);
 w3: or_gate port map (c1,c2,carry);
end FA_arch;
---------- half adder 
library IEEE;
Use IEEE. STD_LOGIC_1164.all;

entity half_adder is
      port (p,q : in STD_LOGIC;
      s,cy : out STD_LOGIC);
end half_adder;
architecture HA_arch of half_adder IS
 begin
      s <= p xor q;
      cy <= p and q;
end HA_arch;
---------- or gate 
library IEEE;
Use IEEE. STD_LOGIC_1164.all;

entity or_gate is
      port (p1,q1:in STD_LOGIC;
      r1: out STD_LOGIC);
end or_gate;
architecture or_g of or_gate IS
 begin
      r1 <= p1 or q1;
end or_g;