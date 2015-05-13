--8位单向总线缓存器，由多个三态门组成
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY TRI_BUFS IS
	PORT(DIN:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		EN:IN STD_LOGIC;
		DOUT:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY TRI_BUFS;
ARCHITECTURE ART OF TRI_BUFS IS
	BEGIN
	PROCESS(EN,DIN)	
		BEGIN
		IF(EN='1') THEN
		DOUT<=DIN;
		ELSE
		DOUT<="ZZZZZZZZ";
		END IF;			
    END PROCESS;
END ARCHITECTURE ART;
