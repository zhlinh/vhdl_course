LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--自定义程序包
PACKAGE MYTYPE IS
SUBTYPE COLOR IS INTEGER RANGE 0 TO 255;
END PACKAGE MYTYPE;
