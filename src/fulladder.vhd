-- Full adder

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY fulladder IS
	PORT
	(
		Cin: IN std_logic;
		A: IN std_logic;
		B: IN std_logic;
		Cout: OUT std_logic;
		S: OUT std_logic
	);
END fulladder;

ARCHITECTURE rtl OF fulladder IS
	SIGNAL wire0: std_logic;
	SIGNAL wire1: std_logic;
	SIGNAL wire2: std_logic;
BEGIN
	wire0 <= A xor B;
	wire1 <= A and B;
	S <= wire0 xor Cin;
	wire2 <= wire0 and Cin;
	Cout <= wire1 or wire2;
END rtl;
