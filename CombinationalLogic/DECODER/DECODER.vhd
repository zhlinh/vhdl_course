LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY DECODER IS
	PORT(A,B,C:IN STD_LOGIC;
		Y:OUT BIT_VECTOR(7 DOWNTO 0));
END ENTITY DECODER;
--使用SLL逻辑运算符
ARCHITECTURE ART1 OF DECODER IS
	SIGNAL SR:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
	SR<=C&B&A;
	Y<="00000001" SLL(CONV_INTEGER(SR));
END ARCHITECTURE ART1;
--使用PROCESS语句
ARCHITECTURE ART2 OF DECODER IS
	SIGNAL SR:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
	SR<=C&B&A;
	PROCESS(SR) IS
		BEGIN
		Y<=(OTHERS=>'1');
		Y(CONV_INTEGER(SR))<='1';
	END PROCESS;
END ARCHITECTURE ART2;
--使用WHEN - ELSE语句
ARCHITECTURE ART3 OF DECODER IS
	SIGNAL SR:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
	SR<=C&B&A;
	Y(0)<='1' WHEN SR="000" ELSE '0';
	Y(1)<='1' WHEN SR="001" ELSE '0';
	Y(2)<='1' WHEN SR="010" ELSE '0';
	Y(3)<='1' WHEN SR="011" ELSE '0';
	Y(4)<='1' WHEN SR="100" ELSE '0';
	Y(5)<='1' WHEN SR="101" ELSE '0';
	Y(6)<='1' WHEN SR="110" ELSE '0';
	Y(7)<='1' WHEN SR="111" ELSE '0';
END ARCHITECTURE ART3;
--使用CASE - WHEN 语句
ARCHITECTURE ART4 OF DECODER IS
	SIGNAL SR:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
	SR<=C&B&A;
	PROCESS(SR) IS
		BEGIN
		CASE SR IS
			WHEN "000"=>Y<="00000001";
			WHEN "001"=>Y<="00000010";
			WHEN "010"=>Y<="00000100";
			WHEN "011"=>Y<="00001000";
			WHEN "100"=>Y<="00010000";
			WHEN "101"=>Y<="00100000";
			WHEN "110"=>Y<="01000000";
			WHEN "111"=>Y<="10000000";
		END CASE;
	END PROCESS;
END ARCHITECTURE ART4;	