--CHOOSE entity
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY CHOOSE IS
    PORT(RESET: IN STD_LOGIC;
         CLK: IN STD_LOGIC;
         SEL: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
         TO_TRANS: OUT STD_LOGIC;
         TO_INSERT: OUT STD_LOGIC;
         TO_DETECT: OUT STD_LOGIC;
         TO_HIDE: OUT STD_LOGIC;
         TO_UNHIDE: OUT STD_LOGIC);
END ENTITY CHOOSE;
ARCHITECTURE ART1 OF CHOOSE IS
BEGIN
    PROCESS(SEL,RESET)
    BEGIN
        IF(RESET='1') THEN
            --TO_TRANS连接的是RGB2YUV,因为隐藏/解隐藏信息直接利用RGB
            TO_TRANS<= '0';
            TO_INSERT<= '0';
            TO_DETECT<= '0';
            TO_HIDE<= '0';
            TO_UNHIDE<= '0';
        ELSE
            IF(SEL="00") THEN
                TO_TRANS<= '1';
                TO_INSERT<= '1';
                TO_DETECT<= '0';
                TO_HIDE<= '0';
                TO_UNHIDE<= '0';
            ELSIF(SEL="01") THEN
                TO_TRANS<= '1';
                TO_INSERT<= '0';
                TO_DETECT<= '1';
                TO_HIDE<= '0';
                TO_UNHIDE<= '0';
            ELSIF(SEL="10") THEN
                TO_TRANS<= '0';
                TO_INSERT<= '0';
                TO_DETECT<= '0';
                TO_HIDE<= '1';
                TO_UNHIDE<= '0';
            ELSIF(SEL="11") THEN
                TO_TRANS<= '0';
                TO_INSERT<= '0';
                TO_DETECT<= '0';
                TO_HIDE<= '0';
                TO_UNHIDE<= '1';
            ELSE
                TO_TRANS<= '0';
                TO_INSERT<= '0';
                TO_DETECT<= '0';
                TO_HIDE<= '0';
                TO_UNHIDE<= '0';
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE ART1;
