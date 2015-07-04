LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE WORK.MYTYPE.ALL;
ENTITY LSB_INSERT IS
    PORT(ENABLE: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         RESET: IN STD_LOGIC;
         Y_IN: IN MATRIX;

         AX_LOCATE: IN INTEGER;
         AY_LOCATE: IN INTEGER;

         BX_LOCATE: IN INTEGER;
         BY_LOCATE: IN INTEGER;

         CX_LOCATE: IN INTEGER;
         CY_LOCATE: IN INTEGER;

         FIXED_Y_OUT: OUT MATRIX;
         FINISHED: OUT STD_LOGIC);
END ENTITY LSB_INSERT;
ARCHITECTURE ART1 OF LSB_INSERT IS
    VARIABLE FIXED_Y_REM: MATRIX;
    VARIABLE GREY_REM: STD_LOGIC_VECTOR(7 DOWNTO 0);
    CONSTANT A_SEQ: STD_LOGIC_VECTOR(0 TO 4):="01101";
    CONSTANT B_SEQ: STD_LOGIC_VECTOR(0 TO 4):="10101";
    CONSTANT C_SEQ: STD_LOGIC_VECTOR(0 TO 4):="11001";
BEGIN
    INSERT: PROCESS(ENABLE)
    BEGIN
        FIXED_Y_REM:= Y_IN;
        IF(ENABLE = '1') THEN
            --LSB插入第一个序列
            FOR I IN 0 TO 4 LOOP
                IF(AY_LOCATE + I <= 255) THEN
                    -- 取出灰度的8 bit 数据
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(AX_LOCATE,AY_LOCATE + I), 8);
                    -- 更改 LSB位
                    GREY_REM(0):= A_SEQ(I);
                    -- 将更改 赋值到 Y 像素矩阵中
                    FIXED_Y_REM(AX_LOCATE,AY_LOCATE + I):= CONV_INTEGER(UNSIGNED(GREY_REM));
                ELSE
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(AX_LOCATE + 1,AY_LOCATE + I - 256), 8);
                    GREY_REM(0):= A_SEQ(I);
                    FIXED_Y_REM(AX_LOCATE + 1,AY_LOCATE + I - 256):= CONV_INTEGER(UNSIGNED(GREY_REM));
                END IF;
            END LOOP;
            --LSB插入第二个序列
            FOR I IN 0 TO 4 LOOP
                IF(BY_LOCATE + I <= 255) THEN
                    -- 取出灰度的8 bit 数据
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(BX_LOCATE,BY_LOCATE + I), 8);
                    -- 更改 LSB位
                    GREY_REM(0):= B_SEQ(I);
                    -- 将更改 赋值到 Y 像素矩阵中
                    FIXED_Y_REM(BX_LOCATE,BY_LOCATE + I):= CONV_INTEGER(UNSIGNED(GREY_REM));
                ELSE
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(BX_LOCATE + 1,BY_LOCATE + I - 256), 8);
                    GREY_REM(0):= B_SEQ(I);
                    FIXED_Y_REM(BX_LOCATE + 1,BY_LOCATE + I - 256):= CONV_INTEGER(UNSIGNED(GREY_REM));
                END IF;
            END LOOP;
            --LSB插入第三个序列
            FOR I IN 0 TO 4 LOOP
                IF(CY_LOCATE + I <= 255) THEN
                    -- 取出灰度的8 bit 数据
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(CX_LOCATE,CY_LOCATE + I), 8);
                    -- 更改 LSB位
                    GREY_REM(0):= C_SEQ(I);
                    -- 将更改 赋值到 Y 像素矩阵中
                    FIXED_Y_REM(CX_LOCATE,CY_LOCATE + I):= CONV_INTEGER(UNSIGNED(GREY_REM));
                ELSE
                    GREY_REM:= CONV_STD_LOGIC_VECTOR(Y_IN(CX_LOCATE + 1,CY_LOCATE + I - 256), 8);
                    GREY_REM(0):= B_SEQ(I);
                    FIXED_Y_REM(CX_LOCATE + 1,CY_LOCATE + I - 256):= CONV_INTEGER(UNSIGNED(GREY_REM));
                END IF;
            END LOOP;
        END IF;
    END PROCESS;

    CLOCK: PROCESS(CLK,RESET)
    BEGIN
        IF(RESET='1') THEN
            FINISHED<='0';
        ELSIF(CLK'EVENT AND CLK='1') THEN
            FIXED_Y_OUT<= FIXED_Y_REM;
            FINISHED<='1';
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
