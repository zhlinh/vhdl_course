LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY CHOOSE IS
    PORT(ENABLE: IN STD_LOGIC;
			RESET: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         SEL: IN STD_LOGIC;
         TO_INSERT: OUT STD_LOGIC;
         TO_DETECT: OUT STD_LOGIC);
END ENTITY CHOOSE;
ARCHITECTURE ART1 OF CHOOSE IS
BEGIN
    PROCESS(CLK,RESET,ENABLE)
	 BEGIN
		  IF(RESET='1') THEN
				TO_INSERT<= '0';
            TO_DETECT<= '0';
        ELSIF(CLK'EVENT AND CLK='1') THEN
            IF(ENABLE ='1') THEN
                IF(SEL='0') THEN
                    TO_INSERT<= '1';
                    TO_DETECT<= '0';
                ELSIF(SEL='1') THEN
                    TO_INSERT<= '0';
                    TO_DETECT<= '1';
                ELSE
                    TO_INSERT<= '0';
                    TO_DETECT<= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;
	 
END ARCHITECTURE ART1;
