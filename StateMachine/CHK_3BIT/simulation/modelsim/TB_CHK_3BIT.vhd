LIBRARY IEEE;
USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
--ENTITY DECLARATION
ENTITY TB_CHK_3BIT IS
END ENTITY TB_CHK_3BIT;
--ARCHITECTURE BODY
ARCHITECTURE TEXTIO_WAY OF TB_CHK_3BIT IS
	FILE INTEST : TEXT IS IN "TEST_DATA.TXT";
	SIGNAL CLK : STD_LOGIC;
	SIGNAL RESET : STD_LOGIC;
	SIGNAL BIT3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL DIN : STD_LOGIC;
	SIGNAL DOUT : STD_LOGIC;
	CONSTANT CLK_CYCLE: TIME :=10 NS;
	COMPONENT CHK_3BIT
		PORT (
		CLK : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		BIT3 :IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		DIN : IN STD_LOGIC;
		DOUT : OUT STD_LOGIC	
		);
	END COMPONENT;
BEGIN
	DUT : CHK_3BIT
	PORT MAP (
	CLK => CLK,
	RESET => RESET,
	BIT3 => BIT3,
	DIN => DIN,
	DOUT => DOUT	
	);
	ALWAYS:PROCESS
		VARIABLE LI: LINE;
		VARIABLE CLK_V, RESET_V, DIN_V: STD_LOGIC;
		VARIABLE BIT3_V:STD_LOGIC_VECTOR(2 DOWNTO 0);
	BEGIN
		READLINE(INTEST, LI);
		READ(LI, CLK_V);
		READ(LI, RESET_V);
		READ(LI, BIT3_V);
		READ(LI, DIN_V);
		CLK<=CLK_V;
		RESET<=RESET_V;
		BIT3<=BIT3_V;
		DIN<=DIN_V;
		WAIT FOR CLK_CYCLE/4;
		IF (ENDFILE(INTEST)) THEN
			WAIT;
		END IF;
	END PROCESS;
END ARCHITECTURE TEXTIO_WAY;