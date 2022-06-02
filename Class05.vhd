--Taipei Tech Electronic Engineering Dep.
--110360120 林冠羽
--110360119 黃俊霖
--110360134 楊錦坤
--110360155 羅寶娜

library ieee;
use ieee.std_logic_1164.all;

entity Class05 is
	port(
		s, r, enable: in std_logic;
		latchLed: out std_logic;
		seg1, seg0: out std_logic_vector(6 downto 0);
		clear: in std_logic);
end class05;

architecture behavior of Class05 is
	 signal q, nq: std_logic;
	 signal digit1, digit0: integer range 0 to 10;
begin
	
	q <= ((not r) and enable) nor nq;
	nq <= ((not s) and enable) nor q;
	latchLed <= q;
	
	process(clear, q, digit1, digit0)
	begin
		
		if(clear = '0')then
			digit0 <= 0;
			digit1 <= 0;
		elsif(q'event and q = '1')then
			digit0 <= digit0 + 1;
			if(digit0 >= 9) then
				digit0 <= 0;
				digit1 <= digit1 + 1;
				if(digit1 >= 9) then
					digit1 <= 0;
				end if;
			end if;
		end if;
		
		case digit0 is
			when 0 => seg0 <= "0000001";
			when 1 => seg0 <= "1001111";
			when 2 => seg0 <= "0010010";
			when 3 => seg0 <= "0000110";
			when 4 => seg0 <= "1001100";
			when 5 => seg0 <= "0100100";
			when 6 => seg0 <= "1100000";
			when 7 => seg0 <= "0001111";
			when 8 => seg0 <= "0000000";
			when 9 => seg0 <= "0001100";
			when others => seg0 <= "1111111";
		end case;
		
		case digit1 is
			when 0 => seg1 <= "0000001";
			when 1 => seg1 <= "1001111";
			when 2 => seg1 <= "0010010";
			when 3 => seg1 <= "0000110";
			when 4 => seg1 <= "1001100";
			when 5 => seg1 <= "0100100";
			when 6 => seg1 <= "1100000";
			when 7 => seg1 <= "0001111";
			when 8 => seg1 <= "0000000";
			when 9 => seg1 <= "0001100";
			when others => seg1 <= "1111111";
		end case;
		
	end process;

end behavior;