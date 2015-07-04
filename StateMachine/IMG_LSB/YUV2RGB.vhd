LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY YUV2RGB IS
    PORT(ENABLE: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         FIXED_Y_IN: IN MATRIX;
         U_IN: IN MATRIX;
         V_IN: IN MATRIX;
         R_OUT: OUT MATRIX;
         G_OUT: OUT MATRIX;
         B_OUT: OUT MATRIX;
         FINISHED: OUT STD_LOGIC);
END ENTITY YUV2RGB;
ARCHITECTURE ART1 OF YUV2RGB IS
    VARIABLE Y:INTEGER;
    VARIABLE U:INTEGER;
    VARIABLE V:INTEGER;
    VARIABLE R_REG: MATRIX;
    VARIABLE G_REG: MATRIX;
    VARIABLE B_REG: MATRIX;
BEGIN
    TRANSFORM: PROCESS(ENABLE)
    BEGIN
        IF(ENABLE'EVENT AND ENABLE='1') THEN
            FOR i IN 0 TO 255 LOOP
                FOR j IN 0 TO 255 LOOP
                    Y:=FIXED_Y_IN(i,j);
                    U:=U_IN(i,j);
                    V:=V_IN(i,j);
                    R_REG(i,j):= (1000*Y + 1140*V)/1000;
                    G_REG(i,j):=(1000*Y - 394*U - 581*V)/1000;
                    B_REG(i,j):=(1000*Y + 2032*U)/1000;
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

