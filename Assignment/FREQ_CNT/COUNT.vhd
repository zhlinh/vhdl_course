--Count Frequence
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY COUNT IS
	PORT(	CLK:          IN 	STD_LOGIC;
			CLK_OUT_05HZ: IN 	STD_LOGIC;
			RST:          IN 	STD_LOGIC;
			D1:           OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0);
			D2:           OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0);
			D3:           OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0);
			D4:           OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0);
			CARRY:        OUT 	STD_LOGIC;
			READ_EN:      OUT	STD_LOGIC);
END ENTITY COUNT;

ARCHITECTURE ART1 OF COUNT IS

 	SIGNAL CNT:STD_LOGIC_VECTOR(15 DOWNTO 0);
-- 	SIGNAL MEASURE_FLAG:STD_LOGIC;
	BEGIN

	PROCESS(CLK,RST,CNT,CLK_OUT_05HZ)
    BEGIN
        IF(RST='1')THEN
            CNT<=(OTHERS=>'0');
            CARRY<='0';
        ELSIF(CLK'EVENT AND CLK='1')THEN
            IF (CLK_OUT_05HZ='1') THEN
                READ_EN<='0';
                IF (CNT(3 DOWNTO 0)/="1001")THEN
                    CNT(3 DOWNTO 0)<=CNT(3 DOWNTO 0)+'1';
                ELSIF(CNT(7 DOWNTO 4)/="1001")THEN
                    CNT(3 DOWNTO 0)<="0000";
                    CNT(7 DOWNTO 4)<=CNT(7 DOWNTO 4)+'1';
                ELSIF(CNT(11 DOWNTO 8)/="1001")THEN
                    CNT(3 DOWNTO 0)<="0000";
                    CNT(7 DOWNTO 4)<="0000";
                    CNT(11 DOWNTO 8)<=CNT(11 DOWNTO 8)+'1';
                ELSIF(CNT(15 DOWNTO 12)/="1001")THEN
                    CNT(3 DOWNTO 0)<="0000";
                    CNT(7 DOWNTO 4)<="0000";
                    CNT(11 DOWNTO 8)<="0000";
                    CNT(15 DOWNTO 12)<=CNT(15 DOWNTO 12)+'1';
                ELSE
                    CNT<=(OTHERS=>'0');
                    CARRY<='1';
                END IF;
            ELSIF(CLK_OUT_05HZ='0')THEN
                CNT<=(OTHERS=>'0');
                READ_EN<='1';
            END IF;
        END IF;
        D4<=CNT(15 DOWNTO 12);
        D3<=CNT(11 DOWNTO 8);
        D2<=CNT(7 DOWNTO 4);
        D1<=CNT(3 DOWNTO 0);
    END PROCESS;
END ARCHITECTURE ART1;

