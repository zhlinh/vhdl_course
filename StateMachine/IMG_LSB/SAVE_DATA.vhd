LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE WORK.MYTYPE.ALL;
ENTITY SAVE_DATA IS
    PORT(CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         ENABLE: IN STD_LOGIC;
         R_IN: IN MATRIX;
         G_IN: IN MATRIX;
         B_IN: IN MATRIX;
         ALL_FINISHED: OUT STD_LOGIC);
END ENTITY SAVE_DATA;
ARCHITECTURE ART1 OF SAVE_DATA IS
    FILE OUTEST: TEXT IS OUT "OUTPUT_IMG.TXT";
	 VARIABLE LI: LINE;
	 VARIABLE DATA: INTEGER;
BEGIN
    READING: PROCESS(ENABLE)
    BEGIN
        IF(ENABLE='1') THEN
            FOR i IN 0 TO 255 LOOP
                WRITELINE(OUTEST, LI);
					 LI:=NULL;
                FOR j IN 0 TO 255 LOOP
						  DATA:=R_IN(i,j);
                    READ(LI, DATA);
                END LOOP;
            END LOOP;

            FOR i IN 0 TO 255 LOOP
                LI:=NULL;
                WRITELINE(OUTEST, LI);
                FOR j IN 0 TO 255 LOOP
                    DATA:=G_IN(i,j);
                    READ(LI, DATA);
                END LOOP;
            END LOOP;

            FOR i IN 0 TO 255 LOOP
                LI:=NULL;
                WRITELINE(OUTEST, LI);
                FOR j IN 0 TO 255 LOOP
                    DATA:=B_IN(i,j);
                    READ(LI, DATA);
                END LOOP;
            END LOOP;
        END IF;
    END PROCESS;

    CLOCK: PROCESS(RESET,CLK)
    BEGIN
        IF(RESET='1') THEN
            ALL_FINISHED<='0';
        ELSIF(CLK'EVENT AND CLK='1') THEN
            IF(ENABLE='1') THEN
                ALL_FINISHED<='1';
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
