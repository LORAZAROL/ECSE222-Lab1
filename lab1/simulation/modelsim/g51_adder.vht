-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/11/2019 14:27:38"
                                                            
-- Vhdl Test Bench template for design  :  g51_adder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g51_adder_vhd_tst IS
END g51_adder_vhd_tst;
ARCHITECTURE g51_adder_arch OF g51_adder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL decoded_A : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL decoded_AplusB : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL decoded_B : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT g51_adder
	PORT (
	A : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	decoded_A : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0);
	decoded_AplusB : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0);
	decoded_B : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g51_adder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	decoded_A => decoded_A,
	decoded_AplusB => decoded_AplusB,
	decoded_B => decoded_B
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                            
		
	
	
END g51_adder_arch;
