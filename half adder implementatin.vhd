--------------------------------------
-- VHDL code for making Half Adder 
--------------------------------------

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity Half_Adder is
port(	A: in std_logic;
	    B: in std_logic;
	    S: out std_logic;
		C: out std_logic
);
end Half_Adder;  

--------------------------------------

architecture Behaviour of Half_Adder is
begin

    process(A,B)
    begin
        -- compare to truth table
	if(A='1' and B='1') then
            S <= '0';
			C <= '1';
	elsif(A='0' and B='0') then
	        S <= '0';
			C <= '0';
	else
	        S <= '1';
			C <= '0';
	end if;
    end process;

end Behaviour;
