--8线-3线优先编码器。A的编码等级最低
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
ENTITY ENCODER IS
	PORT(A,B,C,D,E,F,G,H:IN STD_LOGIC;
		Y0,Y1,Y2:OUT STD_LOGIC);
END ENTITY ENCODER;
--使用条件赋值语句
ARCHITECTURE ART1 OF ENCODER IS
	SIGNAL SY:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
	--优先级在此处体现，哈哈
	SY(2 DOWNTO 0)<="111" WHEN H='1' ELSE
						 "110" WHEN G='1' ELSE
						 "101" WHEN F='1' ELSE
						 "100" WHEN E='1' ELSE
						 "011" WHEN D='1' ELSE
						 "010" WHEN C='1' ELSE
						 "001" WHEN B='1' ELSE
						 "000" WHEN A='1' ELSE
						 "XXX";
	Y0<=SY(0);
	Y1<=SY(1);
	Y2<=SY(2);
END ARCHITECTURE ART1;
--使用LOOP语句
ARCHITECTURE ART2 OF ENCODER IS
	BEGIN
	PROCESS(A,B,C,D,E,F,G) IS
		VARIABLE VSR:STD_LOGIC_VECTOR(7 DOWNTO 0);
		VARIABLE I:INTEGER;
		BEGIN
		VSR:=(H,G,F,E,D,C,B,A);
		I:=7;
		--不等号是/=,你敢信？
		WHILE I>=0 AND VSR(I)/='1' LOOP
			I:=I-1;
		END LOOP;
		(Y2,Y1,Y0)<=CONV_STD_LOGIC_VECTOR(I,3);
	END PROCESS;
END ARCHITECTURE ART2;
--使用IF条件语句
ARCHITECTURE ART3 OF ENCODER IS
	SIGNAL SY:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
	PROCESS(H,G,F,E,D,C,B,A) IS
	BEGIN
	IF H='1' THEN SY<="111";
		ELSIF G='1' THEN SY<="110";
		ELSIF F='1' THEN SY<="101";
		ELSIF E='1' THEN SY<="100";
		ELSIF D='1' THEN SY<="011";
		ELSIF C='1' THEN SY<="010";
		ELSIF B='1' THEN SY<="001";
		ELSIF A='1' THEN SY<="000";
		ELSE SY<="XXX";
	END IF;
	END PROCESS;
	Y0<=SY(0);
	Y1<=SY(1);
	Y2<=SY(2);
END ARCHITECTURE ART3;	
		
 		
							 
							 