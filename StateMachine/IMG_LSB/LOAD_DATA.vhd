LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE WORK.MYTYPE.ALL;
ENTITY LOAD_DATA IS
    PORT(CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         R_OUT: OUT MATRIX;
         G_OUT: OUT MATRIX;
         B_OUT: OUT MATRIX;
         FINISHED: OUT STD_LOGIC);
END ENTITY LOAD_DATA;
ARCHITECTURE ART1 OF LOAD_DATA IS
    FILE INTEST : TEXT IS IN "INPUT_IMG.TXT";
    VARIABLE LI: LINE;
    VARIABLE R_REG: MATRIX;
    VARIABLE G_REG: MATRIX;
    VARIABLE B_REG: MATRIX;
BEGIN
    READING: PROCESS(RESET)
    BEGIN
        IF(RESET'EVENT AND RESET='0') THEN
            FOR i IN 0 TO 255 LOOP
                READLINE(INTEST, LI);
                FOR j IN 0 TO 255 LOOP
                    READ(LI, R_REG(i, j));
                END LOOP;
            END LOOP;

            FOR i IN 0 TO 255 LOOP
                READLINE(INTEST, LI);
                FOR j IN 0 TO 255 LOOP
                    READ(LI, G_REG(i, j));
                END LOOP;
            END LOOP;

            FOR i IN 0 TO 255 LOOP
                READLINE(INTEST, LI);
                FOR j IN 0 TO 255 LOOP
                    READ(LI, B_REG(i, j));
                END LOOP;
            END LOOP;
        END IF;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET)
    BEGIN
        IF(RESET='1') THEN
            FINISHED<='0';
        ELSIF(CLK'EVENT AND CLK='1') THEN
            R_OUT<=R_REG;
            G_OUT<=G_REG;
            B_OUT<=B_REG;
            FINISHED<='1';
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
