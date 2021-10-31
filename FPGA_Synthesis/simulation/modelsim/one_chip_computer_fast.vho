-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/08/2021 18:57:16"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	one_chip_computer IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	led_output : OUT std_logic_vector(15 DOWNTO 0);
	clk_out : OUT std_logic;
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
	);
END one_chip_computer;

-- Design Ports Information
-- led_output[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_output[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_out	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z_Flag	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N_Flag	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- O_Flag	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF one_chip_computer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_Z_Flag : std_logic;
SIGNAL ww_N_Flag : std_logic;
SIGNAL ww_O_Flag : std_logic;
SIGNAL \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock_divider_inst|clk_prescaled~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider_inst|Add0~0_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~12_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~20_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~24_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~44_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~55\ : std_logic;
SIGNAL \clock_divider_inst|Add0~56_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~57\ : std_logic;
SIGNAL \clock_divider_inst|Add0~58_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~59\ : std_logic;
SIGNAL \clock_divider_inst|Add0~60_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~61\ : std_logic;
SIGNAL \clock_divider_inst|Add0~62_combout\ : std_logic;
SIGNAL \cpu_inst|WAddr[0]~0_combout\ : std_logic;
SIGNAL \cpu_inst|RW~regout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~6_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[4]~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~6_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~8_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~9_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~10_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~29_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|res_v~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[6]~38_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[6]~39_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[6]~40_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[6]~41_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[6]~42_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[6]~43_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~36_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~51_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[10]~63_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[10]~64_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[10]~65_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[10]~66_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[10]~67_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[10]~68_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[10]~64_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[10]~65_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~61_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[13]~15_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[14]~90_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[14]~91_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[14]~16_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~regout\ : std_logic;
SIGNAL \cpu_inst|Mux174~2_combout\ : std_logic;
SIGNAL \cpu_inst|address[13]~0_combout\ : std_logic;
SIGNAL \cpu_inst|address[13]~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux209~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux143~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux143~3_combout\ : std_logic;
SIGNAL \cpu_inst|Mux59~0_combout\ : std_logic;
SIGNAL \cpu_inst|offset[4]~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux148~1_combout\ : std_logic;
SIGNAL \cpu_inst|offset[0]~5_combout\ : std_logic;
SIGNAL \cpu_inst|Mux164~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux163~0_combout\ : std_logic;
SIGNAL \wren_activator~0_combout\ : std_logic;
SIGNAL \wren_activator~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux158~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux158~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux158~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux154~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux153~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux152~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux142~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~90_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~91_combout\ : std_logic;
SIGNAL \cpu_inst|Mux154~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~feeder_combout\ : std_logic;
SIGNAL \clock_divider_inst|count~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \clock_divider_inst|Add0~1\ : std_logic;
SIGNAL \clock_divider_inst|Add0~2_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~3\ : std_logic;
SIGNAL \clock_divider_inst|Add0~4_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~5\ : std_logic;
SIGNAL \clock_divider_inst|Add0~6_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~7\ : std_logic;
SIGNAL \clock_divider_inst|Add0~8_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~8_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~9\ : std_logic;
SIGNAL \clock_divider_inst|Add0~10_combout\ : std_logic;
SIGNAL \clock_divider_inst|count~5_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~11\ : std_logic;
SIGNAL \clock_divider_inst|Add0~13\ : std_logic;
SIGNAL \clock_divider_inst|Add0~14_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~15\ : std_logic;
SIGNAL \clock_divider_inst|Add0~16_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~7_combout\ : std_logic;
SIGNAL \clock_divider_inst|count~3_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~17\ : std_logic;
SIGNAL \clock_divider_inst|Add0~18_combout\ : std_logic;
SIGNAL \clock_divider_inst|count~4_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~19\ : std_logic;
SIGNAL \clock_divider_inst|Add0~21\ : std_logic;
SIGNAL \clock_divider_inst|Add0~22_combout\ : std_logic;
SIGNAL \clock_divider_inst|count~2_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~23\ : std_logic;
SIGNAL \clock_divider_inst|Add0~25\ : std_logic;
SIGNAL \clock_divider_inst|Add0~26_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~9_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~27\ : std_logic;
SIGNAL \clock_divider_inst|Add0~28_combout\ : std_logic;
SIGNAL \clock_divider_inst|count~1_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~29\ : std_logic;
SIGNAL \clock_divider_inst|Add0~30_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~31\ : std_logic;
SIGNAL \clock_divider_inst|Add0~32_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~33\ : std_logic;
SIGNAL \clock_divider_inst|Add0~34_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~35\ : std_logic;
SIGNAL \clock_divider_inst|Add0~36_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~37\ : std_logic;
SIGNAL \clock_divider_inst|Add0~39\ : std_logic;
SIGNAL \clock_divider_inst|Add0~40_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~41\ : std_logic;
SIGNAL \clock_divider_inst|Add0~43\ : std_logic;
SIGNAL \clock_divider_inst|Add0~45\ : std_logic;
SIGNAL \clock_divider_inst|Add0~46_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~47\ : std_logic;
SIGNAL \clock_divider_inst|Add0~48_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~42_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~38_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~49\ : std_logic;
SIGNAL \clock_divider_inst|Add0~50_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~51\ : std_logic;
SIGNAL \clock_divider_inst|Add0~53\ : std_logic;
SIGNAL \clock_divider_inst|Add0~54_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~52_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_inst|clk_prescaled~0_combout\ : std_logic;
SIGNAL \clock_divider_inst|clk_prescaled~regout\ : std_logic;
SIGNAL \clock_divider_inst|clk_prescaled~clkctrl_outclk\ : std_logic;
SIGNAL \cpu_inst|instr_reg[15]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|upc[2]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|Mux212~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux211~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux132~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux159~1_combout\ : std_logic;
SIGNAL \cpu_inst|bypassA~regout\ : std_logic;
SIGNAL \cpu_inst|ra[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \cpu_inst|readA~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux143~1_combout\ : std_logic;
SIGNAL \cpu_inst|ra[0]~0_combout\ : std_logic;
SIGNAL \cpu_inst|readA~0_combout\ : std_logic;
SIGNAL \cpu_inst|readA~2_combout\ : std_logic;
SIGNAL \cpu_inst|readA~regout\ : std_logic;
SIGNAL \cpu_inst|Mux17~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux160~0_combout\ : std_logic;
SIGNAL \cpu_inst|bypassB~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~4_combout\ : std_logic;
SIGNAL \cpu_inst|Mux80~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux148~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[6]~6_combout\ : std_logic;
SIGNAL \cpu_inst|WAddr[2]~3_combout\ : std_logic;
SIGNAL \cpu_inst|Mux152~3_combout\ : std_logic;
SIGNAL \cpu_inst|WAddr[2]~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux160~1_combout\ : std_logic;
SIGNAL \cpu_inst|WAddr[2]~4_combout\ : std_logic;
SIGNAL \cpu_inst|WAddr[2]~5_combout\ : std_logic;
SIGNAL \cpu_inst|Mux143~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux142~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux0~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux142~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux142~3_combout\ : std_logic;
SIGNAL \cpu_inst|write~regout\ : std_logic;
SIGNAL \cpu_inst|Mux153~3_combout\ : std_logic;
SIGNAL \cpu_inst|WAddr[1]~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]~regout\ : std_logic;
SIGNAL \cpu_inst|ra[0]~1_combout\ : std_logic;
SIGNAL \cpu_inst|offset[4]~2_combout\ : std_logic;
SIGNAL \cpu_inst|Mux158~3_combout\ : std_logic;
SIGNAL \cpu_inst|Mux158~4_combout\ : std_logic;
SIGNAL \cpu_inst|ie~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[15]~15_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[15]~92_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[15]~93_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[15]~94_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[15]~95_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[15]~96_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[15]~97_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|O_Flag~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|O_Flag~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux174~3_combout\ : std_logic;
SIGNAL \cpu_inst|O_Flag_Latched~regout\ : std_logic;
SIGNAL \cpu_inst|Mux14~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux14~1_combout\ : std_logic;
SIGNAL \cpu_inst|Mux157~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux157~1_combout\ : std_logic;
SIGNAL \cpu_inst|Op[1]~6_combout\ : std_logic;
SIGNAL \cpu_inst|Op[1]~0_combout\ : std_logic;
SIGNAL \cpu_inst|Op[1]~7_combout\ : std_logic;
SIGNAL \cpu_inst|Op[1]~8_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ : std_logic;
SIGNAL \cpu_inst|Dout[15]~0_combout\ : std_logic;
SIGNAL \cpu_inst|Dout[4]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|Dout[6]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[8]~8_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[8]~52_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[8]~53_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[8]~50_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[8]~51_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[8]~54_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[8]~55_combout\ : std_logic;
SIGNAL \cpu_inst|Mux145~0_combout\ : std_logic;
SIGNAL \cpu_inst|readB~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|readB~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~6_combout\ : std_logic;
SIGNAL \cpu_inst|Mux146~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux146~1_combout\ : std_logic;
SIGNAL \cpu_inst|ra[0]~2_combout\ : std_logic;
SIGNAL \cpu_inst|ra[0]~3_combout\ : std_logic;
SIGNAL \cpu_inst|ra[0]~4_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[12]~12_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[12]~78_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[12]~79_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[12]~75_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[12]~76_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[12]~77_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[12]~80_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[12]~74_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[12]~75_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[12]~76_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[12]~77_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[12]~78_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[12]~79_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[12]~14_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~70_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~71_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[7]~7_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[7]~48_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[7]~49_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[7]~45_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[7]~46_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[7]~47_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[7]~50_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~43_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[4]~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[4]~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[4]~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[4]~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[4]~6_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[4]~7_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[3]~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[3]~8_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[3]~9_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[3]~10_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[3]~11_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[3]~12_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[3]~13_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~7_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[13]~13_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[13]~80_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[13]~81_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[13]~82_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[13]~83_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[13]~84_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[13]~85_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~75_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[13]~84_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[13]~85_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[13]~81_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[13]~82_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[13]~83_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[13]~86_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~76_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~73\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~77_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~79_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[14]~14_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[14]~86_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[14]~87_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[14]~88_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[14]~89_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[14]~90_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[14]~91_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~80_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[14]~87_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[14]~88_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[14]~89_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[14]~92_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~81_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~78\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~82_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~84_combout\ : std_logic;
SIGNAL \cpu_inst|offset[11]~4_combout\ : std_logic;
SIGNAL \cpu_inst|offset[11]~6_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[1]~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[1]~20_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[1]~21_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[1]~22_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[1]~23_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[1]~24_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[1]~25_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[0]~4_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~26_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~27_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~28_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~29_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~30_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[0]~31_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~12_cout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~14\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~16\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~18\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~20\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~22\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~31\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~38\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~45\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~53\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~58\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~63\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~68\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~72_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~74_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[11]~11_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[11]~69_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[11]~70_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[11]~71_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[11]~72_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[11]~73_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[11]~74_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~66_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~67_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[11]~70_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[11]~71_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[11]~68_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[11]~69_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[11]~72_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[11]~73_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[11]~13_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~65_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~69_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[10]~10_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[10]~62_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[10]~63_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[10]~66_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[10]~67_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[10]~12_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~60_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~62_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~64_combout\ : std_logic;
SIGNAL \cpu_inst|Mux150~0_combout\ : std_logic;
SIGNAL \cpu_inst|rb[2]~0_combout\ : std_logic;
SIGNAL \cpu_inst|rb[2]~1_combout\ : std_logic;
SIGNAL \cpu_inst|rb[2]~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[9]~9_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[9]~60_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[9]~61_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[9]~57_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[9]~58_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[9]~59_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[9]~62_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~56_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~57_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[9]~56_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[9]~57_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[9]~58_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[9]~59_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[9]~60_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[9]~61_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[9]~11_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~55_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~59_combout\ : std_logic;
SIGNAL \cpu_inst|Mux151~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[8]~54_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[8]~55_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[8]~51_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[8]~52_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[8]~53_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[8]~56_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[8]~10_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~50_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~52_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~54_combout\ : std_logic;
SIGNAL \cpu_inst|Mux162~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[15]~93_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[15]~94_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[15]~95_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[15]~96_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[15]~97_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[15]~98_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[15]~17_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~85_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~86_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~83\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~87_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~89_combout\ : std_logic;
SIGNAL \cpu_inst|N_Flag_Latched~regout\ : std_logic;
SIGNAL \cpu_inst|offset[4]~0_combout\ : std_logic;
SIGNAL \cpu_inst|offset[4]~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[7]~46_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[7]~47_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[7]~44_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[7]~45_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[7]~48_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[7]~49_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[7]~9_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~42_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~44_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~46_combout\ : std_logic;
SIGNAL \cpu_inst|Mux147~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux147~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ra_mux[1]~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[6]~38_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[6]~39_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[6]~40_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[6]~41_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[6]~42_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[6]~43_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[6]~7_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~35_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~37_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~39_combout\ : std_logic;
SIGNAL \cpu_inst|Mux148~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ra_mux[0]~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[5]~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[5]~34_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[5]~35_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[5]~32_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[5]~33_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[5]~36_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[5]~37_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~30_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[5]~34_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[5]~35_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[5]~31_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[5]~32_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[5]~33_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[5]~36_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[5]~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~28_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~32_combout\ : std_logic;
SIGNAL \cpu_inst|Mux149~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[4]~0_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[4]~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[4]~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[4]~4_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[4]~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[4]~7_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[4]~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~21_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~24_combout\ : std_logic;
SIGNAL \cpu_inst|Mux56~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux143~4_combout\ : std_logic;
SIGNAL \cpu_inst|en_alu~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~23_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~19_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[3]~10_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[3]~11_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[3]~8_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[3]~9_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[3]~12_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[3]~13_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~47_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~48_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~49_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|mux[2]~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[2]~16_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[2]~17_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[2]~14_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[2]~15_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[2]~18_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxA_output[2]~19_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~25_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[2]~14_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[2]~15_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[2]~16_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[2]~17_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[2]~18_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[2]~44_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[2]~8_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~17_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~40_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~41_combout\ : std_logic;
SIGNAL \cpu_inst|address[2]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|Mux159~0_combout\ : std_logic;
SIGNAL \cpu_inst|Op[2]~1_combout\ : std_logic;
SIGNAL \cpu_inst|Op[2]~2_combout\ : std_logic;
SIGNAL \cpu_inst|Op[2]~3_combout\ : std_logic;
SIGNAL \cpu_inst|Op[2]~4_combout\ : std_logic;
SIGNAL \cpu_inst|Op[2]~5_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~15_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[1]~22_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[1]~23_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[1]~19_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[1]~20_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[1]~21_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[1]~37_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[1]~6_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~33_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~34_combout\ : std_logic;
SIGNAL \cpu_inst|instr_reg[13]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|address[13]~3_combout\ : std_logic;
SIGNAL \cpu_inst|address[13]~2_combout\ : std_logic;
SIGNAL \cpu_inst|address[13]~4_combout\ : std_logic;
SIGNAL \cpu_inst|Mux156~0_combout\ : std_logic;
SIGNAL \cpu_inst|Mux156~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~4_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~27_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~28_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~29_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~regout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~24_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~25_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~26_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|muxB_output[0]~30_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Sum[0]~4_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~13_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~26_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|Add0~27_combout\ : std_logic;
SIGNAL \gpio_inst|data[0]~feeder_combout\ : std_logic;
SIGNAL \ie_activator~1_combout\ : std_logic;
SIGNAL \ie_activator~0_combout\ : std_logic;
SIGNAL \ie_activator~3_combout\ : std_logic;
SIGNAL \ie_activator~2_combout\ : std_logic;
SIGNAL \ie_activator~4_combout\ : std_logic;
SIGNAL \ie_activator~combout\ : std_logic;
SIGNAL \gpio_inst|data[1]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[2]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[3]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[4]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[5]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[6]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[7]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[8]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[9]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[10]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[11]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[12]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[13]~feeder_combout\ : std_logic;
SIGNAL \gpio_inst|data[14]~feeder_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|res_v~2_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|res_v~3_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|res_v~1_combout\ : std_logic;
SIGNAL \cpu_inst|DATAPATH|ALU|res_v~4_combout\ : std_logic;
SIGNAL \cpu_inst|Z_Flag_Latched~regout\ : std_logic;
SIGNAL \memory_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_inst|rb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cpu_inst|ra\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gpio_inst|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_inst|Op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \clock_divider_inst|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \cpu_inst|address\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_inst|upc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cpu_inst|WAddr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cpu_inst|offset\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \cpu_inst|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_inst|instr_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_inst|ALT_INV_en_alu~regout\ : std_logic;
SIGNAL \cpu_inst|ALT_INV_upc\ : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
led_output <= ww_led_output;
clk_out <= ww_clk_out;
Z_Flag <= ww_Z_Flag;
N_Flag <= ww_N_Flag;
O_Flag <= ww_O_Flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\cpu_inst|Dout\(15) & \cpu_inst|Dout\(14) & \cpu_inst|Dout\(13) & \cpu_inst|Dout\(12) & \cpu_inst|Dout\(11) & \cpu_inst|Dout\(10) & \cpu_inst|Dout\(9) & 
\cpu_inst|Dout\(8) & \cpu_inst|Dout\(7) & \cpu_inst|Dout\(6) & \cpu_inst|Dout\(5) & \cpu_inst|Dout\(4) & \cpu_inst|Dout\(3) & \cpu_inst|Dout\(2) & \cpu_inst|Dout\(1) & \cpu_inst|Dout\(0));

\memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cpu_inst|address\(7) & \cpu_inst|address\(6) & \cpu_inst|address\(5) & \cpu_inst|address\(4) & \cpu_inst|address\(3) & \cpu_inst|address\(2) & 
\cpu_inst|address\(1) & \cpu_inst|address\(0));

\memory_inst|altsyncram_component|auto_generated|q_a\(0) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory_inst|altsyncram_component|auto_generated|q_a\(1) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory_inst|altsyncram_component|auto_generated|q_a\(2) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory_inst|altsyncram_component|auto_generated|q_a\(3) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory_inst|altsyncram_component|auto_generated|q_a\(4) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory_inst|altsyncram_component|auto_generated|q_a\(5) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory_inst|altsyncram_component|auto_generated|q_a\(6) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory_inst|altsyncram_component|auto_generated|q_a\(7) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memory_inst|altsyncram_component|auto_generated|q_a\(8) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memory_inst|altsyncram_component|auto_generated|q_a\(9) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memory_inst|altsyncram_component|auto_generated|q_a\(10) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memory_inst|altsyncram_component|auto_generated|q_a\(11) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memory_inst|altsyncram_component|auto_generated|q_a\(12) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memory_inst|altsyncram_component|auto_generated|q_a\(13) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memory_inst|altsyncram_component|auto_generated|q_a\(14) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memory_inst|altsyncram_component|auto_generated|q_a\(15) <= \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clock_divider_inst|clk_prescaled~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_divider_inst|clk_prescaled~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\cpu_inst|ALT_INV_en_alu~regout\ <= NOT \cpu_inst|en_alu~regout\;
\cpu_inst|ALT_INV_upc\(2) <= NOT \cpu_inst|upc\(2);

-- Location: LCCOMB_X63_Y25_N0
\clock_divider_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~0_combout\ = \clock_divider_inst|count\(0) $ (VCC)
-- \clock_divider_inst|Add0~1\ = CARRY(\clock_divider_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(0),
	datad => VCC,
	combout => \clock_divider_inst|Add0~0_combout\,
	cout => \clock_divider_inst|Add0~1\);

-- Location: LCCOMB_X63_Y25_N12
\clock_divider_inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~12_combout\ = (\clock_divider_inst|count\(6) & (\clock_divider_inst|Add0~11\ $ (GND))) # (!\clock_divider_inst|count\(6) & (!\clock_divider_inst|Add0~11\ & VCC))
-- \clock_divider_inst|Add0~13\ = CARRY((\clock_divider_inst|count\(6) & !\clock_divider_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(6),
	datad => VCC,
	cin => \clock_divider_inst|Add0~11\,
	combout => \clock_divider_inst|Add0~12_combout\,
	cout => \clock_divider_inst|Add0~13\);

-- Location: LCCOMB_X63_Y25_N20
\clock_divider_inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~20_combout\ = (\clock_divider_inst|count\(10) & (\clock_divider_inst|Add0~19\ $ (GND))) # (!\clock_divider_inst|count\(10) & (!\clock_divider_inst|Add0~19\ & VCC))
-- \clock_divider_inst|Add0~21\ = CARRY((\clock_divider_inst|count\(10) & !\clock_divider_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(10),
	datad => VCC,
	cin => \clock_divider_inst|Add0~19\,
	combout => \clock_divider_inst|Add0~20_combout\,
	cout => \clock_divider_inst|Add0~21\);

-- Location: LCCOMB_X63_Y25_N24
\clock_divider_inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~24_combout\ = (\clock_divider_inst|count\(12) & (\clock_divider_inst|Add0~23\ $ (GND))) # (!\clock_divider_inst|count\(12) & (!\clock_divider_inst|Add0~23\ & VCC))
-- \clock_divider_inst|Add0~25\ = CARRY((\clock_divider_inst|count\(12) & !\clock_divider_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(12),
	datad => VCC,
	cin => \clock_divider_inst|Add0~23\,
	combout => \clock_divider_inst|Add0~24_combout\,
	cout => \clock_divider_inst|Add0~25\);

-- Location: LCCOMB_X63_Y24_N12
\clock_divider_inst|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~44_combout\ = (\clock_divider_inst|count\(22) & (\clock_divider_inst|Add0~43\ $ (GND))) # (!\clock_divider_inst|count\(22) & (!\clock_divider_inst|Add0~43\ & VCC))
-- \clock_divider_inst|Add0~45\ = CARRY((\clock_divider_inst|count\(22) & !\clock_divider_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(22),
	datad => VCC,
	cin => \clock_divider_inst|Add0~43\,
	combout => \clock_divider_inst|Add0~44_combout\,
	cout => \clock_divider_inst|Add0~45\);

-- Location: LCCOMB_X63_Y24_N22
\clock_divider_inst|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~54_combout\ = (\clock_divider_inst|count\(27) & (!\clock_divider_inst|Add0~53\)) # (!\clock_divider_inst|count\(27) & ((\clock_divider_inst|Add0~53\) # (GND)))
-- \clock_divider_inst|Add0~55\ = CARRY((!\clock_divider_inst|Add0~53\) # (!\clock_divider_inst|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(27),
	datad => VCC,
	cin => \clock_divider_inst|Add0~53\,
	combout => \clock_divider_inst|Add0~54_combout\,
	cout => \clock_divider_inst|Add0~55\);

-- Location: LCCOMB_X63_Y24_N24
\clock_divider_inst|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~56_combout\ = (\clock_divider_inst|count\(28) & (\clock_divider_inst|Add0~55\ $ (GND))) # (!\clock_divider_inst|count\(28) & (!\clock_divider_inst|Add0~55\ & VCC))
-- \clock_divider_inst|Add0~57\ = CARRY((\clock_divider_inst|count\(28) & !\clock_divider_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(28),
	datad => VCC,
	cin => \clock_divider_inst|Add0~55\,
	combout => \clock_divider_inst|Add0~56_combout\,
	cout => \clock_divider_inst|Add0~57\);

-- Location: LCCOMB_X63_Y24_N26
\clock_divider_inst|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~58_combout\ = (\clock_divider_inst|count\(29) & (!\clock_divider_inst|Add0~57\)) # (!\clock_divider_inst|count\(29) & ((\clock_divider_inst|Add0~57\) # (GND)))
-- \clock_divider_inst|Add0~59\ = CARRY((!\clock_divider_inst|Add0~57\) # (!\clock_divider_inst|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(29),
	datad => VCC,
	cin => \clock_divider_inst|Add0~57\,
	combout => \clock_divider_inst|Add0~58_combout\,
	cout => \clock_divider_inst|Add0~59\);

-- Location: LCCOMB_X63_Y24_N28
\clock_divider_inst|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~60_combout\ = (\clock_divider_inst|count\(30) & (\clock_divider_inst|Add0~59\ $ (GND))) # (!\clock_divider_inst|count\(30) & (!\clock_divider_inst|Add0~59\ & VCC))
-- \clock_divider_inst|Add0~61\ = CARRY((\clock_divider_inst|count\(30) & !\clock_divider_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(30),
	datad => VCC,
	cin => \clock_divider_inst|Add0~59\,
	combout => \clock_divider_inst|Add0~60_combout\,
	cout => \clock_divider_inst|Add0~61\);

-- Location: LCCOMB_X63_Y24_N30
\clock_divider_inst|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~62_combout\ = \clock_divider_inst|Add0~61\ $ (\clock_divider_inst|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider_inst|count\(31),
	cin => \clock_divider_inst|Add0~61\,
	combout => \clock_divider_inst|Add0~62_combout\);

-- Location: LCFF_X29_Y24_N25
\cpu_inst|WAddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|WAddr[0]~0_combout\,
	sdata => \cpu_inst|Mux160~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu_inst|upc\(0),
	ena => \cpu_inst|WAddr[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|WAddr\(0));

-- Location: LCCOMB_X29_Y24_N24
\cpu_inst|WAddr[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|WAddr[0]~0_combout\ = (\cpu_inst|upc\(1) & (\cpu_inst|Mux154~2_combout\)) # (!\cpu_inst|upc\(1) & ((\cpu_inst|Mux154~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux154~2_combout\,
	datab => \cpu_inst|upc\(1),
	datad => \cpu_inst|Mux154~3_combout\,
	combout => \cpu_inst|WAddr[0]~0_combout\);

-- Location: LCFF_X31_Y22_N29
\cpu_inst|RW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux209~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|RW~regout\);

-- Location: LCFF_X33_Y23_N25
\cpu_inst|address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~54_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(8));

-- Location: LCFF_X34_Y23_N3
\cpu_inst|address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~84_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(14));

-- Location: LCFF_X63_Y24_N31
\clock_divider_inst|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~62_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(31));

-- Location: LCFF_X63_Y24_N29
\clock_divider_inst|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~60_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(30));

-- Location: LCFF_X63_Y24_N27
\clock_divider_inst|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~58_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(29));

-- Location: LCCOMB_X64_Y24_N12
\clock_divider_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~0_combout\ = (!\clock_divider_inst|count\(31) & (!\clock_divider_inst|count\(30) & (!\clock_divider_inst|count\(0) & !\clock_divider_inst|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(31),
	datab => \clock_divider_inst|count\(30),
	datac => \clock_divider_inst|count\(0),
	datad => \clock_divider_inst|count\(29),
	combout => \clock_divider_inst|Equal0~0_combout\);

-- Location: LCFF_X63_Y24_N25
\clock_divider_inst|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~56_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(28));

-- Location: LCFF_X63_Y24_N13
\clock_divider_inst|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~44_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(22));

-- Location: LCFF_X63_Y25_N25
\clock_divider_inst|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~24_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(12));

-- Location: LCCOMB_X64_Y25_N24
\clock_divider_inst|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~6_combout\ = (\clock_divider_inst|count\(11) & (\clock_divider_inst|count\(9) & (\clock_divider_inst|count\(10) & !\clock_divider_inst|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(11),
	datab => \clock_divider_inst|count\(9),
	datac => \clock_divider_inst|count\(10),
	datad => \clock_divider_inst|count\(12),
	combout => \clock_divider_inst|Equal0~6_combout\);

-- Location: LCFF_X63_Y25_N13
\clock_divider_inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(6));

-- Location: LCFF_X32_Y24_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]~regout\);

-- Location: LCFF_X33_Y21_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~regout\);

-- Location: LCCOMB_X32_Y24_N16
\cpu_inst|DATAPATH|muxA_output[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[4]~2_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]~regout\) # (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[4]~2_combout\);

-- Location: LCCOMB_X30_Y24_N18
\cpu_inst|DATAPATH|ALU|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~6_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[4]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Op\(0),
	datac => \cpu_inst|Op\(2),
	datad => \cpu_inst|DATAPATH|muxB_output[4]~7_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~6_combout\);

-- Location: LCCOMB_X33_Y24_N10
\cpu_inst|DATAPATH|ALU|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~8_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (((\cpu_inst|DATAPATH|muxB_output[2]~16_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(2),
	datac => \cpu_inst|DATAPATH|muxB_output[2]~16_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~90_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~8_combout\);

-- Location: LCCOMB_X32_Y23_N6
\cpu_inst|DATAPATH|ALU|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~9_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (((\cpu_inst|DATAPATH|muxB_output[1]~21_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datab => \cpu_inst|Op\(0),
	datac => \cpu_inst|DATAPATH|ALU|Add0~91_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[1]~21_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~9_combout\);

-- Location: LCCOMB_X32_Y24_N2
\cpu_inst|DATAPATH|ALU|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~10_combout\ = (\cpu_inst|Op\(2)) # (\cpu_inst|Op\(0) $ (((\cpu_inst|DATAPATH|muxB_output[0]~26_combout\) # (\cpu_inst|DATAPATH|muxB_output[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(2),
	datac => \cpu_inst|DATAPATH|muxB_output[0]~26_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[0]~29_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~10_combout\);

-- Location: LCFF_X32_Y24_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]~regout\);

-- Location: LCFF_X30_Y24_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]~regout\);

-- Location: LCCOMB_X30_Y24_N10
\cpu_inst|DATAPATH|ALU|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~29_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[5]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datac => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[5]~36_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~29_combout\);

-- Location: LCCOMB_X34_Y24_N16
\cpu_inst|DATAPATH|ALU|res_v~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|res_v~0_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~27_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~34_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~32_combout\) # (\cpu_inst|DATAPATH|ALU|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~27_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~34_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~32_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~24_combout\,
	combout => \cpu_inst|DATAPATH|ALU|res_v~0_combout\);

-- Location: LCCOMB_X31_Y24_N30
\cpu_inst|DATAPATH|muxB_output[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[6]~38_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[6]~38_combout\);

-- Location: LCCOMB_X31_Y24_N24
\cpu_inst|DATAPATH|muxB_output[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[6]~39_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[6]~38_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[6]~38_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[6]~38_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[6]~39_combout\);

-- Location: LCFF_X30_Y24_N9
\cpu_inst|offset[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(6));

-- Location: LCCOMB_X30_Y24_N8
\cpu_inst|DATAPATH|muxB_output[6]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[6]~40_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(6)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[6]~39_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[6]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(6),
	datad => \cpu_inst|DATAPATH|muxB_output[6]~39_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[6]~40_combout\);

-- Location: LCFF_X33_Y25_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~regout\);

-- Location: LCFF_X33_Y25_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~regout\);

-- Location: LCCOMB_X31_Y25_N18
\cpu_inst|DATAPATH|muxB_output[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[6]~41_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]~regout\) # (\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~regout\ & ((!\cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[6]~41_combout\);

-- Location: LCCOMB_X30_Y24_N2
\cpu_inst|DATAPATH|muxB_output[6]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[6]~42_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[6]~41_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[6]~41_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[6]~41_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[6]~42_combout\);

-- Location: LCCOMB_X30_Y24_N0
\cpu_inst|DATAPATH|muxB_output[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[6]~43_combout\ = (\cpu_inst|DATAPATH|muxB_output[6]~40_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[6]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[6]~40_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[6]~42_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[6]~43_combout\);

-- Location: LCCOMB_X30_Y24_N6
\cpu_inst|DATAPATH|ALU|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~36_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[6]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datac => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[6]~43_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~36_combout\);

-- Location: LCFF_X30_Y23_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]~regout\);

-- Location: LCFF_X29_Y23_N29
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~regout\);

-- Location: LCFF_X28_Y23_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~regout\);

-- Location: LCCOMB_X30_Y23_N4
\cpu_inst|DATAPATH|ALU|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~51_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|DATAPATH|muxB_output[8]~56_combout\ $ (\cpu_inst|Op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datac => \cpu_inst|DATAPATH|muxB_output[8]~56_combout\,
	datad => \cpu_inst|Op\(0),
	combout => \cpu_inst|DATAPATH|ALU|Add0~51_combout\);

-- Location: LCFF_X31_Y21_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~regout\);

-- Location: LCFF_X31_Y25_N29
\cpu_inst|offset[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux164~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|offset[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(9));

-- Location: LCFF_X32_Y23_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]~regout\);

-- Location: LCFF_X31_Y23_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~regout\);

-- Location: LCCOMB_X31_Y23_N18
\cpu_inst|DATAPATH|muxB_output[10]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[10]~63_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~regout\) # (\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~regout\ & ((!\cpu_inst|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[10]~63_combout\);

-- Location: LCCOMB_X35_Y25_N14
\cpu_inst|DATAPATH|muxB_output[10]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[10]~64_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[10]~63_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[10]~63_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[10]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~regout\,
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|DATAPATH|muxB_output[10]~63_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[10]~64_combout\);

-- Location: LCFF_X31_Y25_N15
\cpu_inst|offset[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux163~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|offset[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(10));

-- Location: LCCOMB_X34_Y22_N0
\cpu_inst|DATAPATH|muxB_output[10]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[10]~65_combout\ = (\cpu_inst|offset\(10) & ((\cpu_inst|bypassB~regout\) # ((\cpu_inst|DATAPATH|muxB_output[10]~64_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~2_combout\)))) # (!\cpu_inst|offset\(10) & 
-- (((\cpu_inst|DATAPATH|muxB_output[10]~64_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(10),
	datab => \cpu_inst|bypassB~regout\,
	datac => \cpu_inst|DATAPATH|muxB_output[10]~64_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[10]~65_combout\);

-- Location: LCFF_X33_Y25_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]~regout\);

-- Location: LCFF_X34_Y22_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]~regout\);

-- Location: LCFF_X33_Y25_N19
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]~regout\);

-- Location: LCCOMB_X33_Y25_N24
\cpu_inst|DATAPATH|muxB_output[10]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[10]~66_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]~regout\) # (\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]~regout\ & ((!\cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[10]~66_combout\);

-- Location: LCFF_X36_Y25_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~regout\);

-- Location: LCCOMB_X33_Y25_N30
\cpu_inst|DATAPATH|muxB_output[10]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[10]~67_combout\ = (\cpu_inst|DATAPATH|muxB_output[10]~66_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~regout\) # ((!\cpu_inst|rb\(0))))) # (!\cpu_inst|DATAPATH|muxB_output[10]~66_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]~regout\ & \cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]~regout\,
	datac => \cpu_inst|DATAPATH|muxB_output[10]~66_combout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[10]~67_combout\);

-- Location: LCCOMB_X34_Y22_N12
\cpu_inst|DATAPATH|muxB_output[10]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[10]~68_combout\ = (\cpu_inst|DATAPATH|muxB_output[10]~65_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[10]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[10]~67_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[10]~65_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[10]~68_combout\);

-- Location: LCCOMB_X34_Y22_N10
\cpu_inst|DATAPATH|muxA_output[10]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[10]~64_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]~regout\) # (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][10]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][10]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[10]~64_combout\);

-- Location: LCCOMB_X34_Y22_N6
\cpu_inst|DATAPATH|muxA_output[10]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[10]~65_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[10]~64_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[10]~64_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[10]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][10]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[10]~64_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[10]~65_combout\);

-- Location: LCCOMB_X34_Y22_N30
\cpu_inst|DATAPATH|ALU|Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~61_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[10]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datab => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[10]~68_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~61_combout\);

-- Location: LCFF_X30_Y25_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~regout\);

-- Location: LCFF_X32_Y25_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]~regout\);

-- Location: LCFF_X35_Y25_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~regout\);

-- Location: LCFF_X36_Y23_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~regout\);

-- Location: LCCOMB_X34_Y23_N16
\cpu_inst|DATAPATH|ALU|Sum[13]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[13]~15_combout\ = (\cpu_inst|DATAPATH|muxA_output[13]~85_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[13]~86_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[13]~85_combout\ & (\cpu_inst|DATAPATH|muxB_output[13]~86_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[13]~85_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[13]~86_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[13]~15_combout\);

-- Location: LCFF_X35_Y21_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~regout\);

-- Location: LCCOMB_X35_Y21_N4
\cpu_inst|DATAPATH|muxB_output[14]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[14]~90_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~regout\)) # (!\cpu_inst|rb\(1) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[14]~90_combout\);

-- Location: LCFF_X35_Y22_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~regout\);

-- Location: LCCOMB_X35_Y23_N20
\cpu_inst|DATAPATH|muxB_output[14]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[14]~91_combout\ = (\cpu_inst|DATAPATH|muxB_output[14]~90_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~regout\) # ((!\cpu_inst|rb\(0))))) # (!\cpu_inst|DATAPATH|muxB_output[14]~90_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]~regout\ & \cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[14]~90_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[14]~91_combout\);

-- Location: LCCOMB_X34_Y23_N6
\cpu_inst|DATAPATH|ALU|Sum[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[14]~16_combout\ = (\cpu_inst|DATAPATH|muxA_output[14]~91_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[14]~92_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[14]~91_combout\ & (\cpu_inst|DATAPATH|muxB_output[14]~92_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datab => \cpu_inst|DATAPATH|muxB_output[14]~92_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[14]~91_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[14]~16_combout\);

-- Location: LCFF_X35_Y25_N31
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~regout\);

-- Location: LCCOMB_X27_Y23_N6
\cpu_inst|Mux174~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux174~2_combout\ = (!\cpu_inst|instr_reg\(15) & (((!\cpu_inst|instr_reg\(14)) # (!\cpu_inst|instr_reg\(13))) # (!\cpu_inst|instr_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(12),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(14),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux174~2_combout\);

-- Location: LCCOMB_X27_Y23_N20
\cpu_inst|address[13]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|address[13]~0_combout\ = (\cpu_inst|upc\(0) & (\cpu_inst|upc\(1) & ((!\cpu_inst|Mux80~0_combout\) # (!\cpu_inst|instr_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(12),
	datab => \cpu_inst|upc\(0),
	datac => \cpu_inst|Mux80~0_combout\,
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|address[13]~0_combout\);

-- Location: LCCOMB_X27_Y23_N10
\cpu_inst|address[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|address[13]~1_combout\ = (\cpu_inst|instr_reg\(12) & (((!\cpu_inst|instr_reg\(13) & !\cpu_inst|instr_reg\(15))) # (!\cpu_inst|instr_reg\(14)))) # (!\cpu_inst|instr_reg\(12) & (((\cpu_inst|instr_reg\(13) & !\cpu_inst|instr_reg\(14))) # 
-- (!\cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(12),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(14),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|address[13]~1_combout\);

-- Location: LCCOMB_X31_Y22_N28
\cpu_inst|Mux209~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux209~0_combout\ = (\cpu_inst|Mux143~1_combout\ & (\cpu_inst|upc\(0) & \cpu_inst|upc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux143~1_combout\,
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|upc\(2),
	combout => \cpu_inst|Mux209~0_combout\);

-- Location: LCCOMB_X31_Y22_N26
\cpu_inst|Mux143~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux143~2_combout\ = (\cpu_inst|Mux80~0_combout\ & (\cpu_inst|en_alu~regout\ & (\cpu_inst|instr_reg\(12) & \cpu_inst|upc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux80~0_combout\,
	datab => \cpu_inst|en_alu~regout\,
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux143~2_combout\);

-- Location: LCCOMB_X31_Y22_N16
\cpu_inst|Mux143~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux143~3_combout\ = (!\cpu_inst|upc\(0) & ((\cpu_inst|Mux143~2_combout\) # ((!\cpu_inst|Op[1]~0_combout\ & !\cpu_inst|upc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op[1]~0_combout\,
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|Mux143~2_combout\,
	combout => \cpu_inst|Mux143~3_combout\);

-- Location: LCCOMB_X30_Y22_N4
\cpu_inst|Mux59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux59~0_combout\ = (\cpu_inst|instr_reg\(14) & (\cpu_inst|instr_reg\(13) & (\cpu_inst|instr_reg\(12) & !\cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(14),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux59~0_combout\);

-- Location: LCCOMB_X31_Y21_N12
\cpu_inst|offset[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[4]~1_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(13) & ((!\cpu_inst|O_Flag_Latched~regout\))) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & (!\cpu_inst|Z_Flag_Latched~regout\)))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (((!\memory_inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Z_Flag_Latched~regout\,
	datab => \cpu_inst|O_Flag_Latched~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \cpu_inst|offset[4]~1_combout\);

-- Location: LCCOMB_X33_Y22_N24
\cpu_inst|Mux148~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux148~1_combout\ = (\cpu_inst|ra[0]~1_combout\ & (((\memory_inst|altsyncram_component|auto_generated|q_a\(6))))) # (!\cpu_inst|ra[0]~1_combout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(3) & 
-- ((!\memory_inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \cpu_inst|ra[0]~1_combout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \cpu_inst|Mux148~1_combout\);

-- Location: LCCOMB_X30_Y21_N4
\cpu_inst|offset[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[0]~5_combout\ = ((\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (!\cpu_inst|N_Flag_Latched~regout\)) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & ((!\cpu_inst|Z_Flag_Latched~regout\)))) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \cpu_inst|N_Flag_Latched~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \cpu_inst|Z_Flag_Latched~regout\,
	combout => \cpu_inst|offset[0]~5_combout\);

-- Location: LCCOMB_X31_Y25_N28
\cpu_inst|Mux164~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux164~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (\memory_inst|altsyncram_component|auto_generated|q_a\(9))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & 
-- ((\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (\memory_inst|altsyncram_component|auto_generated|q_a\(9))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(9),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux164~0_combout\);

-- Location: LCCOMB_X31_Y25_N14
\cpu_inst|Mux163~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux163~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (((\memory_inst|altsyncram_component|auto_generated|q_a\(10))))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & 
-- ((\memory_inst|altsyncram_component|auto_generated|q_a\(12) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(10)))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (\memory_inst|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux163~0_combout\);

-- Location: LCCOMB_X34_Y25_N0
\wren_activator~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wren_activator~0_combout\ = (\cpu_inst|address\(14)) # ((\cpu_inst|address\(13)) # ((\cpu_inst|address\(15)) # (\cpu_inst|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address\(14),
	datab => \cpu_inst|address\(13),
	datac => \cpu_inst|address\(15),
	datad => \cpu_inst|address\(12),
	combout => \wren_activator~0_combout\);

-- Location: LCCOMB_X34_Y25_N2
\wren_activator~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wren_activator~1_combout\ = (\ie_activator~1_combout\ & (\cpu_inst|RW~regout\ & !\wren_activator~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ie_activator~1_combout\,
	datac => \cpu_inst|RW~regout\,
	datad => \wren_activator~0_combout\,
	combout => \wren_activator~1_combout\);

-- Location: LCCOMB_X27_Y24_N28
\cpu_inst|Mux158~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux158~0_combout\ = (!\cpu_inst|instr_reg\(14) & (!\cpu_inst|instr_reg\(13) & (\cpu_inst|upc\(1) & \cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(14),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|upc\(1),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux158~0_combout\);

-- Location: LCCOMB_X31_Y22_N4
\cpu_inst|Mux158~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux158~1_combout\ = (!\cpu_inst|upc\(0) & (\cpu_inst|Mux158~0_combout\ & ((\cpu_inst|ie~regout\) # (!\cpu_inst|instr_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(12),
	datab => \cpu_inst|upc\(0),
	datac => \cpu_inst|Mux158~0_combout\,
	datad => \cpu_inst|ie~regout\,
	combout => \cpu_inst|Mux158~1_combout\);

-- Location: LCCOMB_X30_Y22_N0
\cpu_inst|Mux158~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux158~2_combout\ = (\cpu_inst|instr_reg\(14) & (!\cpu_inst|instr_reg\(15) & ((!\cpu_inst|instr_reg\(12)) # (!\cpu_inst|instr_reg\(13))))) # (!\cpu_inst|instr_reg\(14) & (((\cpu_inst|instr_reg\(13) & !\cpu_inst|instr_reg\(12))) # 
-- (!\cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(14),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux158~2_combout\);

-- Location: LCFF_X28_Y24_N31
\cpu_inst|instr_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(9),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(9));

-- Location: LCCOMB_X28_Y24_N30
\cpu_inst|Mux154~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux154~2_combout\ = (!\cpu_inst|instr_reg\(13) & (!\cpu_inst|instr_reg\(14) & (\cpu_inst|instr_reg\(9) & \cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(13),
	datab => \cpu_inst|instr_reg\(14),
	datac => \cpu_inst|instr_reg\(9),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux154~2_combout\);

-- Location: LCFF_X28_Y24_N1
\cpu_inst|instr_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(10),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(10));

-- Location: LCCOMB_X28_Y24_N0
\cpu_inst|Mux153~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux153~2_combout\ = (!\cpu_inst|instr_reg\(13) & (!\cpu_inst|instr_reg\(14) & (\cpu_inst|instr_reg\(10) & \cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(13),
	datab => \cpu_inst|instr_reg\(14),
	datac => \cpu_inst|instr_reg\(10),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux153~2_combout\);

-- Location: LCFF_X28_Y24_N15
\cpu_inst|instr_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(11),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(11));

-- Location: LCCOMB_X28_Y24_N14
\cpu_inst|Mux152~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux152~2_combout\ = (!\cpu_inst|instr_reg\(13) & (!\cpu_inst|instr_reg\(14) & (\cpu_inst|instr_reg\(11) & \cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(13),
	datab => \cpu_inst|instr_reg\(14),
	datac => \cpu_inst|instr_reg\(11),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux152~2_combout\);

-- Location: LCCOMB_X27_Y24_N10
\cpu_inst|Mux142~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux142~0_combout\ = (\cpu_inst|instr_reg\(14) & (!\cpu_inst|instr_reg\(15) & ((!\cpu_inst|instr_reg\(12)) # (!\cpu_inst|instr_reg\(13))))) # (!\cpu_inst|instr_reg\(14) & (((!\cpu_inst|instr_reg\(15)) # (!\cpu_inst|instr_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(14),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux142~0_combout\);

-- Location: LCCOMB_X33_Y25_N14
\cpu_inst|DATAPATH|ALU|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~90_combout\ = ((\cpu_inst|bypassB~regout\) # ((!\cpu_inst|DATAPATH|muxB_output[2]~18_combout\) # (!\cpu_inst|readB~regout\))) # (!\cpu_inst|rb\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(2),
	datab => \cpu_inst|bypassB~regout\,
	datac => \cpu_inst|readB~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[2]~18_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~90_combout\);

-- Location: LCCOMB_X32_Y23_N14
\cpu_inst|DATAPATH|ALU|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~91_combout\ = (\cpu_inst|bypassB~regout\) # (((!\cpu_inst|DATAPATH|muxB_output[1]~23_combout\) # (!\cpu_inst|readB~regout\)) # (!\cpu_inst|rb\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|rb\(2),
	datac => \cpu_inst|readB~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[1]~23_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~91_combout\);

-- Location: LCCOMB_X31_Y25_N22
\cpu_inst|Mux154~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux154~3_combout\ = (\cpu_inst|WAddr[2]~3_combout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(9))) # (!\cpu_inst|WAddr[2]~3_combout\ & (((\memory_inst|altsyncram_component|auto_generated|q_a\(14)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(9),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \cpu_inst|WAddr[2]~3_combout\,
	combout => \cpu_inst|Mux154~3_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y21_N12
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~feeder_combout\ = \cpu_inst|DATAPATH|mux[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~feeder_combout\);

-- Location: LCCOMB_X33_Y25_N20
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~feeder_combout\ = \cpu_inst|DATAPATH|mux[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~feeder_combout\);

-- Location: LCCOMB_X33_Y25_N6
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~feeder_combout\ = \cpu_inst|DATAPATH|mux[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~feeder_combout\);

-- Location: LCCOMB_X29_Y23_N28
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~feeder_combout\ = \cpu_inst|DATAPATH|mux[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~feeder_combout\);

-- Location: LCCOMB_X28_Y23_N24
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~feeder_combout\ = \cpu_inst|DATAPATH|mux[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~feeder_combout\);

-- Location: LCCOMB_X31_Y21_N6
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~feeder_combout\ = \cpu_inst|DATAPATH|mux[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~feeder_combout\);

-- Location: LCCOMB_X31_Y23_N4
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~feeder_combout\ = \cpu_inst|DATAPATH|mux[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~feeder_combout\);

-- Location: LCCOMB_X36_Y25_N16
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~feeder_combout\ = \cpu_inst|DATAPATH|mux[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][10]~feeder_combout\);

-- Location: LCCOMB_X30_Y25_N12
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~feeder_combout\ = \cpu_inst|DATAPATH|mux[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~feeder_combout\);

-- Location: LCCOMB_X35_Y25_N6
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~feeder_combout\ = \cpu_inst|DATAPATH|mux[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~feeder_combout\);

-- Location: LCCOMB_X36_Y23_N6
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~feeder_combout\ = \cpu_inst|DATAPATH|mux[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~feeder_combout\);

-- Location: LCCOMB_X35_Y22_N26
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~feeder_combout\ = \cpu_inst|DATAPATH|mux[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~feeder_combout\);

-- Location: LCCOMB_X35_Y21_N20
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~feeder_combout\ = \cpu_inst|DATAPATH|mux[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~feeder_combout\);

-- Location: LCCOMB_X35_Y25_N30
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~feeder_combout\ = \cpu_inst|DATAPATH|mux[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~feeder_combout\);

-- Location: LCCOMB_X64_Y25_N28
\clock_divider_inst|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|count~0_combout\ = (\clock_divider_inst|Add0~0_combout\ & ((!\clock_divider_inst|Equal0~9_combout\) # (!\clock_divider_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Add0~0_combout\,
	datab => \clock_divider_inst|Equal0~4_combout\,
	datac => \clock_divider_inst|Equal0~9_combout\,
	combout => \clock_divider_inst|count~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G6
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X64_Y25_N29
\clock_divider_inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|count~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(0));

-- Location: LCCOMB_X63_Y25_N2
\clock_divider_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~2_combout\ = (\clock_divider_inst|count\(1) & (!\clock_divider_inst|Add0~1\)) # (!\clock_divider_inst|count\(1) & ((\clock_divider_inst|Add0~1\) # (GND)))
-- \clock_divider_inst|Add0~3\ = CARRY((!\clock_divider_inst|Add0~1\) # (!\clock_divider_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(1),
	datad => VCC,
	cin => \clock_divider_inst|Add0~1\,
	combout => \clock_divider_inst|Add0~2_combout\,
	cout => \clock_divider_inst|Add0~3\);

-- Location: LCFF_X63_Y25_N3
\clock_divider_inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(1));

-- Location: LCCOMB_X63_Y25_N4
\clock_divider_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~4_combout\ = (\clock_divider_inst|count\(2) & (\clock_divider_inst|Add0~3\ $ (GND))) # (!\clock_divider_inst|count\(2) & (!\clock_divider_inst|Add0~3\ & VCC))
-- \clock_divider_inst|Add0~5\ = CARRY((\clock_divider_inst|count\(2) & !\clock_divider_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(2),
	datad => VCC,
	cin => \clock_divider_inst|Add0~3\,
	combout => \clock_divider_inst|Add0~4_combout\,
	cout => \clock_divider_inst|Add0~5\);

-- Location: LCFF_X63_Y25_N5
\clock_divider_inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(2));

-- Location: LCCOMB_X63_Y25_N6
\clock_divider_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~6_combout\ = (\clock_divider_inst|count\(3) & (!\clock_divider_inst|Add0~5\)) # (!\clock_divider_inst|count\(3) & ((\clock_divider_inst|Add0~5\) # (GND)))
-- \clock_divider_inst|Add0~7\ = CARRY((!\clock_divider_inst|Add0~5\) # (!\clock_divider_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(3),
	datad => VCC,
	cin => \clock_divider_inst|Add0~5\,
	combout => \clock_divider_inst|Add0~6_combout\,
	cout => \clock_divider_inst|Add0~7\);

-- Location: LCFF_X63_Y25_N7
\clock_divider_inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(3));

-- Location: LCCOMB_X63_Y25_N8
\clock_divider_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~8_combout\ = (\clock_divider_inst|count\(4) & (\clock_divider_inst|Add0~7\ $ (GND))) # (!\clock_divider_inst|count\(4) & (!\clock_divider_inst|Add0~7\ & VCC))
-- \clock_divider_inst|Add0~9\ = CARRY((\clock_divider_inst|count\(4) & !\clock_divider_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(4),
	datad => VCC,
	cin => \clock_divider_inst|Add0~7\,
	combout => \clock_divider_inst|Add0~8_combout\,
	cout => \clock_divider_inst|Add0~9\);

-- Location: LCFF_X63_Y25_N9
\clock_divider_inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(4));

-- Location: LCCOMB_X64_Y25_N26
\clock_divider_inst|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~8_combout\ = (!\clock_divider_inst|count\(1) & (!\clock_divider_inst|count\(2) & (!\clock_divider_inst|count\(3) & !\clock_divider_inst|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(1),
	datab => \clock_divider_inst|count\(2),
	datac => \clock_divider_inst|count\(3),
	datad => \clock_divider_inst|count\(4),
	combout => \clock_divider_inst|Equal0~8_combout\);

-- Location: LCCOMB_X63_Y25_N10
\clock_divider_inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~10_combout\ = (\clock_divider_inst|count\(5) & (!\clock_divider_inst|Add0~9\)) # (!\clock_divider_inst|count\(5) & ((\clock_divider_inst|Add0~9\) # (GND)))
-- \clock_divider_inst|Add0~11\ = CARRY((!\clock_divider_inst|Add0~9\) # (!\clock_divider_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(5),
	datad => VCC,
	cin => \clock_divider_inst|Add0~9\,
	combout => \clock_divider_inst|Add0~10_combout\,
	cout => \clock_divider_inst|Add0~11\);

-- Location: LCCOMB_X64_Y25_N14
\clock_divider_inst|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|count~5_combout\ = (\clock_divider_inst|Add0~10_combout\ & ((!\clock_divider_inst|Equal0~4_combout\) # (!\clock_divider_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~9_combout\,
	datac => \clock_divider_inst|Equal0~4_combout\,
	datad => \clock_divider_inst|Add0~10_combout\,
	combout => \clock_divider_inst|count~5_combout\);

-- Location: LCFF_X64_Y25_N15
\clock_divider_inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|count~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(5));

-- Location: LCCOMB_X63_Y25_N14
\clock_divider_inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~14_combout\ = (\clock_divider_inst|count\(7) & (!\clock_divider_inst|Add0~13\)) # (!\clock_divider_inst|count\(7) & ((\clock_divider_inst|Add0~13\) # (GND)))
-- \clock_divider_inst|Add0~15\ = CARRY((!\clock_divider_inst|Add0~13\) # (!\clock_divider_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(7),
	datad => VCC,
	cin => \clock_divider_inst|Add0~13\,
	combout => \clock_divider_inst|Add0~14_combout\,
	cout => \clock_divider_inst|Add0~15\);

-- Location: LCFF_X63_Y25_N15
\clock_divider_inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(7));

-- Location: LCCOMB_X63_Y25_N16
\clock_divider_inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~16_combout\ = (\clock_divider_inst|count\(8) & (\clock_divider_inst|Add0~15\ $ (GND))) # (!\clock_divider_inst|count\(8) & (!\clock_divider_inst|Add0~15\ & VCC))
-- \clock_divider_inst|Add0~17\ = CARRY((\clock_divider_inst|count\(8) & !\clock_divider_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(8),
	datad => VCC,
	cin => \clock_divider_inst|Add0~15\,
	combout => \clock_divider_inst|Add0~16_combout\,
	cout => \clock_divider_inst|Add0~17\);

-- Location: LCFF_X63_Y25_N17
\clock_divider_inst|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(8));

-- Location: LCCOMB_X64_Y25_N16
\clock_divider_inst|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~7_combout\ = (!\clock_divider_inst|count\(6) & (!\clock_divider_inst|count\(8) & (!\clock_divider_inst|count\(7) & \clock_divider_inst|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(6),
	datab => \clock_divider_inst|count\(8),
	datac => \clock_divider_inst|count\(7),
	datad => \clock_divider_inst|count\(5),
	combout => \clock_divider_inst|Equal0~7_combout\);

-- Location: LCCOMB_X64_Y25_N20
\clock_divider_inst|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|count~3_combout\ = (\clock_divider_inst|Add0~20_combout\ & ((!\clock_divider_inst|Equal0~9_combout\) # (!\clock_divider_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Add0~20_combout\,
	datab => \clock_divider_inst|Equal0~4_combout\,
	datac => \clock_divider_inst|Equal0~9_combout\,
	combout => \clock_divider_inst|count~3_combout\);

-- Location: LCFF_X64_Y25_N21
\clock_divider_inst|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|count~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(10));

-- Location: LCCOMB_X63_Y25_N18
\clock_divider_inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~18_combout\ = (\clock_divider_inst|count\(9) & (!\clock_divider_inst|Add0~17\)) # (!\clock_divider_inst|count\(9) & ((\clock_divider_inst|Add0~17\) # (GND)))
-- \clock_divider_inst|Add0~19\ = CARRY((!\clock_divider_inst|Add0~17\) # (!\clock_divider_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(9),
	datad => VCC,
	cin => \clock_divider_inst|Add0~17\,
	combout => \clock_divider_inst|Add0~18_combout\,
	cout => \clock_divider_inst|Add0~19\);

-- Location: LCCOMB_X64_Y25_N18
\clock_divider_inst|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|count~4_combout\ = (\clock_divider_inst|Add0~18_combout\ & ((!\clock_divider_inst|Equal0~4_combout\) # (!\clock_divider_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~9_combout\,
	datac => \clock_divider_inst|Equal0~4_combout\,
	datad => \clock_divider_inst|Add0~18_combout\,
	combout => \clock_divider_inst|count~4_combout\);

-- Location: LCFF_X64_Y25_N19
\clock_divider_inst|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|count~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(9));

-- Location: LCCOMB_X63_Y25_N22
\clock_divider_inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~22_combout\ = (\clock_divider_inst|count\(11) & (!\clock_divider_inst|Add0~21\)) # (!\clock_divider_inst|count\(11) & ((\clock_divider_inst|Add0~21\) # (GND)))
-- \clock_divider_inst|Add0~23\ = CARRY((!\clock_divider_inst|Add0~21\) # (!\clock_divider_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(11),
	datad => VCC,
	cin => \clock_divider_inst|Add0~21\,
	combout => \clock_divider_inst|Add0~22_combout\,
	cout => \clock_divider_inst|Add0~23\);

-- Location: LCCOMB_X64_Y25_N22
\clock_divider_inst|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|count~2_combout\ = (\clock_divider_inst|Add0~22_combout\ & ((!\clock_divider_inst|Equal0~4_combout\) # (!\clock_divider_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~9_combout\,
	datac => \clock_divider_inst|Equal0~4_combout\,
	datad => \clock_divider_inst|Add0~22_combout\,
	combout => \clock_divider_inst|count~2_combout\);

-- Location: LCFF_X64_Y25_N23
\clock_divider_inst|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|count~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(11));

-- Location: LCCOMB_X63_Y25_N26
\clock_divider_inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~26_combout\ = (\clock_divider_inst|count\(13) & (!\clock_divider_inst|Add0~25\)) # (!\clock_divider_inst|count\(13) & ((\clock_divider_inst|Add0~25\) # (GND)))
-- \clock_divider_inst|Add0~27\ = CARRY((!\clock_divider_inst|Add0~25\) # (!\clock_divider_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(13),
	datad => VCC,
	cin => \clock_divider_inst|Add0~25\,
	combout => \clock_divider_inst|Add0~26_combout\,
	cout => \clock_divider_inst|Add0~27\);

-- Location: LCFF_X63_Y25_N27
\clock_divider_inst|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~26_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(13));

-- Location: LCCOMB_X64_Y25_N0
\clock_divider_inst|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~5_combout\ = (!\clock_divider_inst|count\(15) & (\clock_divider_inst|count\(14) & (!\clock_divider_inst|count\(16) & !\clock_divider_inst|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(15),
	datab => \clock_divider_inst|count\(14),
	datac => \clock_divider_inst|count\(16),
	datad => \clock_divider_inst|count\(13),
	combout => \clock_divider_inst|Equal0~5_combout\);

-- Location: LCCOMB_X64_Y25_N12
\clock_divider_inst|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~9_combout\ = (\clock_divider_inst|Equal0~6_combout\ & (\clock_divider_inst|Equal0~8_combout\ & (\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~6_combout\,
	datab => \clock_divider_inst|Equal0~8_combout\,
	datac => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Equal0~5_combout\,
	combout => \clock_divider_inst|Equal0~9_combout\);

-- Location: LCCOMB_X63_Y25_N28
\clock_divider_inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~28_combout\ = (\clock_divider_inst|count\(14) & (\clock_divider_inst|Add0~27\ $ (GND))) # (!\clock_divider_inst|count\(14) & (!\clock_divider_inst|Add0~27\ & VCC))
-- \clock_divider_inst|Add0~29\ = CARRY((\clock_divider_inst|count\(14) & !\clock_divider_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(14),
	datad => VCC,
	cin => \clock_divider_inst|Add0~27\,
	combout => \clock_divider_inst|Add0~28_combout\,
	cout => \clock_divider_inst|Add0~29\);

-- Location: LCCOMB_X64_Y25_N30
\clock_divider_inst|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|count~1_combout\ = (\clock_divider_inst|Add0~28_combout\ & ((!\clock_divider_inst|Equal0~4_combout\) # (!\clock_divider_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~9_combout\,
	datac => \clock_divider_inst|Equal0~4_combout\,
	datad => \clock_divider_inst|Add0~28_combout\,
	combout => \clock_divider_inst|count~1_combout\);

-- Location: LCFF_X64_Y25_N31
\clock_divider_inst|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|count~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(14));

-- Location: LCCOMB_X63_Y25_N30
\clock_divider_inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~30_combout\ = (\clock_divider_inst|count\(15) & (!\clock_divider_inst|Add0~29\)) # (!\clock_divider_inst|count\(15) & ((\clock_divider_inst|Add0~29\) # (GND)))
-- \clock_divider_inst|Add0~31\ = CARRY((!\clock_divider_inst|Add0~29\) # (!\clock_divider_inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(15),
	datad => VCC,
	cin => \clock_divider_inst|Add0~29\,
	combout => \clock_divider_inst|Add0~30_combout\,
	cout => \clock_divider_inst|Add0~31\);

-- Location: LCFF_X63_Y25_N31
\clock_divider_inst|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~30_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(15));

-- Location: LCCOMB_X63_Y24_N0
\clock_divider_inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~32_combout\ = (\clock_divider_inst|count\(16) & (\clock_divider_inst|Add0~31\ $ (GND))) # (!\clock_divider_inst|count\(16) & (!\clock_divider_inst|Add0~31\ & VCC))
-- \clock_divider_inst|Add0~33\ = CARRY((\clock_divider_inst|count\(16) & !\clock_divider_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(16),
	datad => VCC,
	cin => \clock_divider_inst|Add0~31\,
	combout => \clock_divider_inst|Add0~32_combout\,
	cout => \clock_divider_inst|Add0~33\);

-- Location: LCFF_X63_Y24_N1
\clock_divider_inst|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~32_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(16));

-- Location: LCCOMB_X63_Y24_N2
\clock_divider_inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~34_combout\ = (\clock_divider_inst|count\(17) & (!\clock_divider_inst|Add0~33\)) # (!\clock_divider_inst|count\(17) & ((\clock_divider_inst|Add0~33\) # (GND)))
-- \clock_divider_inst|Add0~35\ = CARRY((!\clock_divider_inst|Add0~33\) # (!\clock_divider_inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(17),
	datad => VCC,
	cin => \clock_divider_inst|Add0~33\,
	combout => \clock_divider_inst|Add0~34_combout\,
	cout => \clock_divider_inst|Add0~35\);

-- Location: LCFF_X63_Y24_N3
\clock_divider_inst|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~34_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(17));

-- Location: LCCOMB_X63_Y24_N4
\clock_divider_inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~36_combout\ = (\clock_divider_inst|count\(18) & (\clock_divider_inst|Add0~35\ $ (GND))) # (!\clock_divider_inst|count\(18) & (!\clock_divider_inst|Add0~35\ & VCC))
-- \clock_divider_inst|Add0~37\ = CARRY((\clock_divider_inst|count\(18) & !\clock_divider_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(18),
	datad => VCC,
	cin => \clock_divider_inst|Add0~35\,
	combout => \clock_divider_inst|Add0~36_combout\,
	cout => \clock_divider_inst|Add0~37\);

-- Location: LCFF_X63_Y24_N5
\clock_divider_inst|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~36_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(18));

-- Location: LCCOMB_X63_Y24_N6
\clock_divider_inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~38_combout\ = (\clock_divider_inst|count\(19) & (!\clock_divider_inst|Add0~37\)) # (!\clock_divider_inst|count\(19) & ((\clock_divider_inst|Add0~37\) # (GND)))
-- \clock_divider_inst|Add0~39\ = CARRY((!\clock_divider_inst|Add0~37\) # (!\clock_divider_inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(19),
	datad => VCC,
	cin => \clock_divider_inst|Add0~37\,
	combout => \clock_divider_inst|Add0~38_combout\,
	cout => \clock_divider_inst|Add0~39\);

-- Location: LCCOMB_X63_Y24_N8
\clock_divider_inst|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~40_combout\ = (\clock_divider_inst|count\(20) & (\clock_divider_inst|Add0~39\ $ (GND))) # (!\clock_divider_inst|count\(20) & (!\clock_divider_inst|Add0~39\ & VCC))
-- \clock_divider_inst|Add0~41\ = CARRY((\clock_divider_inst|count\(20) & !\clock_divider_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(20),
	datad => VCC,
	cin => \clock_divider_inst|Add0~39\,
	combout => \clock_divider_inst|Add0~40_combout\,
	cout => \clock_divider_inst|Add0~41\);

-- Location: LCFF_X63_Y24_N9
\clock_divider_inst|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~40_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(20));

-- Location: LCCOMB_X63_Y24_N10
\clock_divider_inst|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~42_combout\ = (\clock_divider_inst|count\(21) & (!\clock_divider_inst|Add0~41\)) # (!\clock_divider_inst|count\(21) & ((\clock_divider_inst|Add0~41\) # (GND)))
-- \clock_divider_inst|Add0~43\ = CARRY((!\clock_divider_inst|Add0~41\) # (!\clock_divider_inst|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(21),
	datad => VCC,
	cin => \clock_divider_inst|Add0~41\,
	combout => \clock_divider_inst|Add0~42_combout\,
	cout => \clock_divider_inst|Add0~43\);

-- Location: LCCOMB_X63_Y24_N14
\clock_divider_inst|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~46_combout\ = (\clock_divider_inst|count\(23) & (!\clock_divider_inst|Add0~45\)) # (!\clock_divider_inst|count\(23) & ((\clock_divider_inst|Add0~45\) # (GND)))
-- \clock_divider_inst|Add0~47\ = CARRY((!\clock_divider_inst|Add0~45\) # (!\clock_divider_inst|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(23),
	datad => VCC,
	cin => \clock_divider_inst|Add0~45\,
	combout => \clock_divider_inst|Add0~46_combout\,
	cout => \clock_divider_inst|Add0~47\);

-- Location: LCFF_X63_Y24_N15
\clock_divider_inst|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~46_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(23));

-- Location: LCCOMB_X63_Y24_N16
\clock_divider_inst|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~48_combout\ = (\clock_divider_inst|count\(24) & (\clock_divider_inst|Add0~47\ $ (GND))) # (!\clock_divider_inst|count\(24) & (!\clock_divider_inst|Add0~47\ & VCC))
-- \clock_divider_inst|Add0~49\ = CARRY((\clock_divider_inst|count\(24) & !\clock_divider_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(24),
	datad => VCC,
	cin => \clock_divider_inst|Add0~47\,
	combout => \clock_divider_inst|Add0~48_combout\,
	cout => \clock_divider_inst|Add0~49\);

-- Location: LCFF_X63_Y24_N17
\clock_divider_inst|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~48_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(24));

-- Location: LCFF_X63_Y24_N11
\clock_divider_inst|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~42_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(21));

-- Location: LCCOMB_X64_Y24_N0
\clock_divider_inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~2_combout\ = (!\clock_divider_inst|count\(22) & (!\clock_divider_inst|count\(24) & (!\clock_divider_inst|count\(23) & !\clock_divider_inst|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(22),
	datab => \clock_divider_inst|count\(24),
	datac => \clock_divider_inst|count\(23),
	datad => \clock_divider_inst|count\(21),
	combout => \clock_divider_inst|Equal0~2_combout\);

-- Location: LCFF_X63_Y24_N7
\clock_divider_inst|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~38_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(19));

-- Location: LCCOMB_X64_Y24_N14
\clock_divider_inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~3_combout\ = (!\clock_divider_inst|count\(20) & (!\clock_divider_inst|count\(19) & (!\clock_divider_inst|count\(18) & !\clock_divider_inst|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(20),
	datab => \clock_divider_inst|count\(19),
	datac => \clock_divider_inst|count\(18),
	datad => \clock_divider_inst|count\(17),
	combout => \clock_divider_inst|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y24_N18
\clock_divider_inst|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~50_combout\ = (\clock_divider_inst|count\(25) & (!\clock_divider_inst|Add0~49\)) # (!\clock_divider_inst|count\(25) & ((\clock_divider_inst|Add0~49\) # (GND)))
-- \clock_divider_inst|Add0~51\ = CARRY((!\clock_divider_inst|Add0~49\) # (!\clock_divider_inst|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|count\(25),
	datad => VCC,
	cin => \clock_divider_inst|Add0~49\,
	combout => \clock_divider_inst|Add0~50_combout\,
	cout => \clock_divider_inst|Add0~51\);

-- Location: LCFF_X63_Y24_N19
\clock_divider_inst|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~50_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(25));

-- Location: LCCOMB_X63_Y24_N20
\clock_divider_inst|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~52_combout\ = (\clock_divider_inst|count\(26) & (\clock_divider_inst|Add0~51\ $ (GND))) # (!\clock_divider_inst|count\(26) & (!\clock_divider_inst|Add0~51\ & VCC))
-- \clock_divider_inst|Add0~53\ = CARRY((\clock_divider_inst|count\(26) & !\clock_divider_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(26),
	datad => VCC,
	cin => \clock_divider_inst|Add0~51\,
	combout => \clock_divider_inst|Add0~52_combout\,
	cout => \clock_divider_inst|Add0~53\);

-- Location: LCFF_X63_Y24_N23
\clock_divider_inst|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~54_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(27));

-- Location: LCFF_X63_Y24_N21
\clock_divider_inst|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|Add0~52_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|count\(26));

-- Location: LCCOMB_X64_Y24_N18
\clock_divider_inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~1_combout\ = (!\clock_divider_inst|count\(28) & (!\clock_divider_inst|count\(27) & (!\clock_divider_inst|count\(26) & !\clock_divider_inst|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|count\(28),
	datab => \clock_divider_inst|count\(27),
	datac => \clock_divider_inst|count\(26),
	datad => \clock_divider_inst|count\(25),
	combout => \clock_divider_inst|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y24_N20
\clock_divider_inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~4_combout\ = (\clock_divider_inst|Equal0~0_combout\ & (\clock_divider_inst|Equal0~2_combout\ & (\clock_divider_inst|Equal0~3_combout\ & \clock_divider_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~0_combout\,
	datab => \clock_divider_inst|Equal0~2_combout\,
	datac => \clock_divider_inst|Equal0~3_combout\,
	datad => \clock_divider_inst|Equal0~1_combout\,
	combout => \clock_divider_inst|Equal0~4_combout\);

-- Location: LCCOMB_X64_Y19_N6
\clock_divider_inst|clk_prescaled~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock_divider_inst|clk_prescaled~0_combout\ = \clock_divider_inst|clk_prescaled~regout\ $ (((\clock_divider_inst|Equal0~4_combout\ & \clock_divider_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~4_combout\,
	datac => \clock_divider_inst|clk_prescaled~regout\,
	datad => \clock_divider_inst|Equal0~9_combout\,
	combout => \clock_divider_inst|clk_prescaled~0_combout\);

-- Location: LCFF_X64_Y19_N7
\clock_divider_inst|clk_prescaled\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clock_divider_inst|clk_prescaled~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock_divider_inst|clk_prescaled~regout\);

-- Location: CLKCTRL_G5
\clock_divider_inst|clk_prescaled~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_divider_inst|clk_prescaled~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y24_N20
\cpu_inst|instr_reg[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|instr_reg[15]~feeder_combout\ = \memory_inst|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|instr_reg[15]~feeder_combout\);

-- Location: LCCOMB_X27_Y24_N0
\cpu_inst|upc[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|upc[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \cpu_inst|upc[2]~feeder_combout\);

-- Location: LCFF_X27_Y24_N1
\cpu_inst|upc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|upc[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|upc\(2));

-- Location: LCCOMB_X27_Y24_N18
\cpu_inst|Mux212~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux212~0_combout\ = (!\cpu_inst|upc\(0) & \cpu_inst|upc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|upc\(2),
	combout => \cpu_inst|Mux212~0_combout\);

-- Location: LCFF_X27_Y24_N19
\cpu_inst|upc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux212~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|upc\(0));

-- Location: LCCOMB_X27_Y24_N4
\cpu_inst|Mux211~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux211~0_combout\ = \cpu_inst|upc\(1) $ (\cpu_inst|upc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|upc\(1),
	datad => \cpu_inst|upc\(0),
	combout => \cpu_inst|Mux211~0_combout\);

-- Location: LCFF_X27_Y24_N5
\cpu_inst|upc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux211~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|ALT_INV_upc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|upc\(1));

-- Location: LCCOMB_X31_Y22_N6
\cpu_inst|Mux132~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux132~0_combout\ = (!\cpu_inst|upc\(1) & (!\cpu_inst|upc\(0) & \cpu_inst|upc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|upc\(2),
	combout => \cpu_inst|Mux132~0_combout\);

-- Location: LCFF_X28_Y24_N21
\cpu_inst|instr_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|instr_reg[15]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(15));

-- Location: LCCOMB_X35_Y24_N2
\cpu_inst|DATAPATH|ALU|Sum[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ = (\cpu_inst|Op\(0)) # ((\cpu_inst|Op\(1) & \cpu_inst|Op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(1),
	datad => \cpu_inst|Op\(2),
	combout => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\);

-- Location: LCCOMB_X33_Y20_N0
\cpu_inst|Mux159~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux159~1_combout\ = (!\cpu_inst|upc\(0) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (\memory_inst|altsyncram_component|auto_generated|q_a\(13) & \cpu_inst|Mux159~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \cpu_inst|Mux159~0_combout\,
	combout => \cpu_inst|Mux159~1_combout\);

-- Location: LCFF_X33_Y20_N1
\cpu_inst|bypassA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux159~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|upc\(1),
	ena => \cpu_inst|upc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|bypassA~regout\);

-- Location: LCCOMB_X29_Y21_N0
\cpu_inst|ra[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|ra[0]~5_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(13)) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \cpu_inst|ra[0]~5_combout\);

-- Location: LCCOMB_X28_Y25_N6
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X27_Y24_N30
\cpu_inst|readA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|readA~1_combout\ = (\cpu_inst|instr_reg\(14) & (!\cpu_inst|instr_reg\(15) & ((!\cpu_inst|instr_reg\(12)) # (!\cpu_inst|instr_reg\(13))))) # (!\cpu_inst|instr_reg\(14) & (((!\cpu_inst|instr_reg\(15)) # (!\cpu_inst|instr_reg\(12))) # 
-- (!\cpu_inst|instr_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(14),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|readA~1_combout\);

-- Location: LCCOMB_X31_Y22_N24
\cpu_inst|Mux143~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux143~1_combout\ = (\cpu_inst|Mux80~0_combout\ & (\cpu_inst|instr_reg\(12) & \cpu_inst|upc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux80~0_combout\,
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux143~1_combout\);

-- Location: LCCOMB_X28_Y25_N10
\cpu_inst|ra[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|ra[0]~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(15)) # ((\memory_inst|altsyncram_component|auto_generated|q_a\(12) & 
-- \memory_inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \cpu_inst|ra[0]~0_combout\);

-- Location: LCCOMB_X28_Y25_N12
\cpu_inst|readA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|readA~0_combout\ = (!\cpu_inst|upc\(0) & ((\cpu_inst|Mux143~1_combout\) # ((!\cpu_inst|upc\(1) & \cpu_inst|ra[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|Mux143~1_combout\,
	datad => \cpu_inst|ra[0]~0_combout\,
	combout => \cpu_inst|readA~0_combout\);

-- Location: LCCOMB_X28_Y25_N26
\cpu_inst|readA~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|readA~2_combout\ = (\cpu_inst|upc\(2) & (!\cpu_inst|readA~0_combout\ & ((!\cpu_inst|readA~1_combout\) # (!\cpu_inst|Mux143~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux143~0_combout\,
	datab => \cpu_inst|readA~1_combout\,
	datac => \cpu_inst|upc\(2),
	datad => \cpu_inst|readA~0_combout\,
	combout => \cpu_inst|readA~2_combout\);

-- Location: LCFF_X29_Y21_N1
\cpu_inst|readA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|ra[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|upc\(1),
	sload => \cpu_inst|upc\(0),
	ena => \cpu_inst|readA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|readA~regout\);

-- Location: LCCOMB_X31_Y21_N14
\cpu_inst|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux17~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(15)) # ((\memory_inst|altsyncram_component|auto_generated|q_a\(13) & 
-- \memory_inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux17~0_combout\);

-- Location: LCCOMB_X31_Y22_N8
\cpu_inst|Mux160~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux160~0_combout\ = (!\cpu_inst|upc\(1) & ((\cpu_inst|upc\(0) & (!\cpu_inst|Mux56~0_combout\)) # (!\cpu_inst|upc\(0) & ((\cpu_inst|Mux17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \cpu_inst|Mux56~0_combout\,
	datac => \cpu_inst|Mux17~0_combout\,
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux160~0_combout\);

-- Location: LCFF_X31_Y22_N9
\cpu_inst|bypassB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux160~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|upc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|bypassB~regout\);

-- Location: LCCOMB_X32_Y22_N4
\cpu_inst|DATAPATH|muxA_output[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~4_combout\ = (!\cpu_inst|ra\(2) & (\cpu_inst|readA~regout\ & (!\cpu_inst|bypassB~regout\ & !\cpu_inst|bypassA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ra\(2),
	datab => \cpu_inst|readA~regout\,
	datac => \cpu_inst|bypassB~regout\,
	datad => \cpu_inst|bypassA~regout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\);

-- Location: LCFF_X27_Y23_N17
\cpu_inst|instr_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(14));

-- Location: LCCOMB_X27_Y23_N16
\cpu_inst|Mux80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux80~0_combout\ = (!\cpu_inst|instr_reg\(13) & (!\cpu_inst|instr_reg\(14) & \cpu_inst|instr_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(14),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|Mux80~0_combout\);

-- Location: LCCOMB_X30_Y22_N18
\cpu_inst|Mux148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux148~0_combout\ = (!\cpu_inst|upc\(0) & (((\cpu_inst|instr_reg\(12) & \cpu_inst|Mux80~0_combout\)) # (!\cpu_inst|upc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \cpu_inst|instr_reg\(12),
	datac => \cpu_inst|upc\(1),
	datad => \cpu_inst|Mux80~0_combout\,
	combout => \cpu_inst|Mux148~0_combout\);

-- Location: LCCOMB_X33_Y25_N10
\cpu_inst|DATAPATH|mux[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[6]~6_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(6))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ie~regout\,
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \cpu_inst|DATAPATH|ALU|Add0~39_combout\,
	combout => \cpu_inst|DATAPATH|mux[6]~6_combout\);

-- Location: LCCOMB_X31_Y25_N0
\cpu_inst|WAddr[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|WAddr[2]~3_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & ((!\memory_inst|altsyncram_component|auto_generated|q_a\(14)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(13))))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (((!\memory_inst|altsyncram_component|auto_generated|q_a\(15)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|WAddr[2]~3_combout\);

-- Location: LCCOMB_X31_Y25_N26
\cpu_inst|Mux152~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux152~3_combout\ = (\cpu_inst|WAddr[2]~3_combout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(11))) # (!\cpu_inst|WAddr[2]~3_combout\ & (((\memory_inst|altsyncram_component|auto_generated|q_a\(14)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \cpu_inst|WAddr[2]~3_combout\,
	combout => \cpu_inst|Mux152~3_combout\);

-- Location: LCCOMB_X29_Y24_N28
\cpu_inst|WAddr[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|WAddr[2]~2_combout\ = (\cpu_inst|upc\(1) & (\cpu_inst|Mux152~2_combout\)) # (!\cpu_inst|upc\(1) & ((\cpu_inst|Mux152~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux152~2_combout\,
	datab => \cpu_inst|upc\(1),
	datad => \cpu_inst|Mux152~3_combout\,
	combout => \cpu_inst|WAddr[2]~2_combout\);

-- Location: LCCOMB_X29_Y24_N14
\cpu_inst|Mux160~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux160~1_combout\ = (!\cpu_inst|upc\(1) & !\cpu_inst|Mux56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|upc\(1),
	datad => \cpu_inst|Mux56~0_combout\,
	combout => \cpu_inst|Mux160~1_combout\);

-- Location: LCCOMB_X28_Y25_N4
\cpu_inst|WAddr[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|WAddr[2]~4_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (!\cpu_inst|upc\(1) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & \memory_inst|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \cpu_inst|upc\(1),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|WAddr[2]~4_combout\);

-- Location: LCCOMB_X28_Y25_N30
\cpu_inst|WAddr[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|WAddr[2]~5_combout\ = (\cpu_inst|upc\(2) & ((\cpu_inst|upc\(0)) # ((!\cpu_inst|WAddr[2]~4_combout\ & !\cpu_inst|Mux143~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(2),
	datab => \cpu_inst|WAddr[2]~4_combout\,
	datac => \cpu_inst|Mux143~1_combout\,
	datad => \cpu_inst|upc\(0),
	combout => \cpu_inst|WAddr[2]~5_combout\);

-- Location: LCFF_X29_Y24_N29
\cpu_inst|WAddr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|WAddr[2]~2_combout\,
	sdata => \cpu_inst|Mux160~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu_inst|upc\(0),
	ena => \cpu_inst|WAddr[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|WAddr\(2));

-- Location: LCCOMB_X27_Y24_N12
\cpu_inst|Mux143~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux143~0_combout\ = (\cpu_inst|upc\(0) & !\cpu_inst|upc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|upc\(0),
	datac => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux143~0_combout\);

-- Location: LCCOMB_X27_Y24_N24
\cpu_inst|Mux142~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux142~1_combout\ = (\cpu_inst|Mux143~0_combout\ & ((\cpu_inst|Mux80~0_combout\) # ((\cpu_inst|Mux142~0_combout\ & \cpu_inst|write~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux142~0_combout\,
	datab => \cpu_inst|write~regout\,
	datac => \cpu_inst|Mux80~0_combout\,
	datad => \cpu_inst|Mux143~0_combout\,
	combout => \cpu_inst|Mux142~1_combout\);

-- Location: LCCOMB_X28_Y25_N16
\cpu_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux0~0_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (\memory_inst|altsyncram_component|auto_generated|q_a\(15) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(12)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y24_N2
\cpu_inst|Mux142~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux142~2_combout\ = (\cpu_inst|Mux158~0_combout\ & (((!\cpu_inst|upc\(1) & !\cpu_inst|Mux0~0_combout\)) # (!\cpu_inst|instr_reg\(12)))) # (!\cpu_inst|Mux158~0_combout\ & (!\cpu_inst|upc\(1) & ((!\cpu_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux158~0_combout\,
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|Mux0~0_combout\,
	combout => \cpu_inst|Mux142~2_combout\);

-- Location: LCCOMB_X27_Y24_N22
\cpu_inst|Mux142~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux142~3_combout\ = (\cpu_inst|Mux142~1_combout\) # ((!\cpu_inst|upc\(0) & \cpu_inst|Mux142~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|upc\(0),
	datac => \cpu_inst|Mux142~1_combout\,
	datad => \cpu_inst|Mux142~2_combout\,
	combout => \cpu_inst|Mux142~3_combout\);

-- Location: LCFF_X27_Y24_N23
\cpu_inst|write\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux142~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|ALT_INV_upc\(2),
	ena => \cpu_inst|upc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|write~regout\);

-- Location: LCCOMB_X31_Y25_N20
\cpu_inst|Mux153~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux153~3_combout\ = (\cpu_inst|WAddr[2]~3_combout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(10))) # (!\cpu_inst|WAddr[2]~3_combout\ & (((\memory_inst|altsyncram_component|auto_generated|q_a\(14)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \cpu_inst|WAddr[2]~3_combout\,
	combout => \cpu_inst|Mux153~3_combout\);

-- Location: LCCOMB_X29_Y24_N18
\cpu_inst|WAddr[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|WAddr[1]~1_combout\ = (\cpu_inst|upc\(1) & (\cpu_inst|Mux153~2_combout\)) # (!\cpu_inst|upc\(1) & ((\cpu_inst|Mux153~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux153~2_combout\,
	datab => \cpu_inst|upc\(1),
	datad => \cpu_inst|Mux153~3_combout\,
	combout => \cpu_inst|WAddr[1]~1_combout\);

-- Location: LCFF_X29_Y24_N19
\cpu_inst|WAddr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|WAddr[1]~1_combout\,
	sdata => \cpu_inst|Mux160~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \cpu_inst|upc\(0),
	ena => \cpu_inst|WAddr[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|WAddr\(1));

-- Location: LCCOMB_X29_Y24_N10
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\ = (!\cpu_inst|WAddr\(0) & (!\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & \cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\);

-- Location: LCFF_X31_Y24_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]~regout\);

-- Location: LCCOMB_X29_Y24_N0
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\ = (\cpu_inst|WAddr\(0) & (!\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & \cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\);

-- Location: LCFF_X32_Y24_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]~regout\);

-- Location: LCCOMB_X29_Y24_N6
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\ = (!\cpu_inst|WAddr\(0) & (!\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & !\cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\);

-- Location: LCFF_X31_Y24_N31
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]~regout\);

-- Location: LCCOMB_X29_Y24_N20
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\ = (\cpu_inst|WAddr\(0) & (!\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & !\cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\);

-- Location: LCFF_X32_Y24_N1
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]~regout\);

-- Location: LCCOMB_X33_Y22_N26
\cpu_inst|ra[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|ra[0]~1_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(15)) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|ra[0]~1_combout\);

-- Location: LCCOMB_X31_Y25_N4
\cpu_inst|offset[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[4]~2_combout\ = (!\cpu_inst|upc\(0) & (!\cpu_inst|upc\(1) & (\cpu_inst|upc\(2) & \memory_inst|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|upc\(2),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|offset[4]~2_combout\);

-- Location: LCCOMB_X31_Y22_N30
\cpu_inst|Mux158~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux158~3_combout\ = (\cpu_inst|upc\(0) & (\cpu_inst|Mux158~2_combout\)) # (!\cpu_inst|upc\(0) & (((!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & \cpu_inst|Mux159~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux158~2_combout\,
	datab => \cpu_inst|upc\(0),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \cpu_inst|Mux159~0_combout\,
	combout => \cpu_inst|Mux158~3_combout\);

-- Location: LCCOMB_X31_Y22_N10
\cpu_inst|Mux158~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux158~4_combout\ = (\cpu_inst|Mux158~1_combout\) # ((!\cpu_inst|upc\(1) & (\cpu_inst|ie~regout\ & \cpu_inst|Mux158~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux158~1_combout\,
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|ie~regout\,
	datad => \cpu_inst|Mux158~3_combout\,
	combout => \cpu_inst|Mux158~4_combout\);

-- Location: LCFF_X31_Y22_N11
\cpu_inst|ie\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux158~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|ALT_INV_upc\(2),
	ena => \cpu_inst|upc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|ie~regout\);

-- Location: LCCOMB_X35_Y25_N22
\cpu_inst|DATAPATH|mux[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[15]~15_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(15))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datad => \cpu_inst|DATAPATH|ALU|Add0~89_combout\,
	combout => \cpu_inst|DATAPATH|mux[15]~15_combout\);

-- Location: LCCOMB_X35_Y25_N8
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~feeder_combout\ = \cpu_inst|DATAPATH|mux[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~feeder_combout\);

-- Location: LCFF_X35_Y25_N9
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~regout\);

-- Location: LCFF_X36_Y23_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]~regout\);

-- Location: LCCOMB_X36_Y23_N14
\cpu_inst|DATAPATH|muxA_output[15]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[15]~92_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[15]~92_combout\);

-- Location: LCCOMB_X36_Y23_N26
\cpu_inst|DATAPATH|muxA_output[15]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[15]~93_combout\ = (\cpu_inst|DATAPATH|muxA_output[15]~92_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~regout\) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|muxA_output[15]~92_combout\ 
-- & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~regout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~regout\,
	datac => \cpu_inst|DATAPATH|muxA_output[15]~92_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[15]~93_combout\);

-- Location: LCCOMB_X29_Y24_N22
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\ = (\cpu_inst|WAddr\(0) & (\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & !\cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\);

-- Location: LCFF_X33_Y25_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]~regout\);

-- Location: LCCOMB_X36_Y25_N6
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~feeder_combout\ = \cpu_inst|DATAPATH|mux[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N12
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\ = (!\cpu_inst|WAddr\(0) & (\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & \cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\);

-- Location: LCFF_X36_Y25_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~regout\);

-- Location: LCCOMB_X36_Y25_N18
\cpu_inst|DATAPATH|muxA_output[15]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[15]~94_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\) # (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]~regout\ & (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~regout\,
	combout => \cpu_inst|DATAPATH|muxA_output[15]~94_combout\);

-- Location: LCCOMB_X36_Y25_N28
\cpu_inst|DATAPATH|muxA_output[15]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[15]~95_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[15]~94_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[15]~94_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[15]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[15]~94_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[15]~95_combout\);

-- Location: LCCOMB_X35_Y23_N0
\cpu_inst|DATAPATH|muxA_output[15]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[15]~96_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[15]~95_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[15]~93_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[15]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[15]~93_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[15]~95_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[15]~96_combout\);

-- Location: LCCOMB_X35_Y23_N10
\cpu_inst|DATAPATH|muxA_output[15]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[15]~97_combout\ = (\cpu_inst|DATAPATH|muxA_output[15]~96_combout\) # ((\cpu_inst|offset\(11) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(11),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[15]~96_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[15]~97_combout\);

-- Location: LCCOMB_X34_Y23_N10
\cpu_inst|DATAPATH|ALU|O_Flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|O_Flag~0_combout\ = (\cpu_inst|DATAPATH|muxA_output[15]~97_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~89_combout\ & (\cpu_inst|DATAPATH|muxB_output[15]~98_combout\ $ (\cpu_inst|Op\(0))))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[15]~97_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~89_combout\ & (\cpu_inst|DATAPATH|muxB_output[15]~98_combout\ $ (!\cpu_inst|Op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[15]~98_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[15]~97_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~89_combout\,
	datad => \cpu_inst|Op\(0),
	combout => \cpu_inst|DATAPATH|ALU|O_Flag~0_combout\);

-- Location: LCCOMB_X34_Y23_N0
\cpu_inst|DATAPATH|ALU|O_Flag~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|O_Flag~1_combout\ = (!\cpu_inst|Op\(1) & (!\cpu_inst|Op\(2) & (\cpu_inst|en_alu~regout\ & \cpu_inst|DATAPATH|ALU|O_Flag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(1),
	datab => \cpu_inst|Op\(2),
	datac => \cpu_inst|en_alu~regout\,
	datad => \cpu_inst|DATAPATH|ALU|O_Flag~0_combout\,
	combout => \cpu_inst|DATAPATH|ALU|O_Flag~1_combout\);

-- Location: LCCOMB_X27_Y23_N8
\cpu_inst|Mux174~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux174~3_combout\ = (\cpu_inst|Mux174~2_combout\ & (\cpu_inst|upc\(0) & (\cpu_inst|upc\(2) & !\cpu_inst|upc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux174~2_combout\,
	datab => \cpu_inst|upc\(0),
	datac => \cpu_inst|upc\(2),
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux174~3_combout\);

-- Location: LCFF_X34_Y23_N1
\cpu_inst|O_Flag_Latched\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|O_Flag~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Mux174~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|O_Flag_Latched~regout\);

-- Location: LCCOMB_X31_Y21_N20
\cpu_inst|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux14~0_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(13) & ((!\cpu_inst|O_Flag_Latched~regout\))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & 
-- (!\cpu_inst|Z_Flag_Latched~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Z_Flag_Latched~regout\,
	datab => \cpu_inst|O_Flag_Latched~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux14~0_combout\);

-- Location: LCCOMB_X31_Y21_N18
\cpu_inst|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux14~1_combout\ = (\cpu_inst|Mux14~0_combout\) # ((!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & (!\cpu_inst|N_Flag_Latched~regout\ & \memory_inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \cpu_inst|N_Flag_Latched~regout\,
	datac => \cpu_inst|Mux14~0_combout\,
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux14~1_combout\);

-- Location: LCCOMB_X28_Y25_N14
\cpu_inst|Mux157~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux157~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(15) & (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & ((\cpu_inst|Mux14~1_combout\)))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & 
-- (((\memory_inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \cpu_inst|Mux14~1_combout\,
	combout => \cpu_inst|Mux157~0_combout\);

-- Location: LCCOMB_X29_Y25_N16
\cpu_inst|Mux157~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux157~1_combout\ = (!\cpu_inst|upc\(1) & ((\cpu_inst|upc\(0)) # (\cpu_inst|Mux157~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|Mux157~0_combout\,
	combout => \cpu_inst|Mux157~1_combout\);

-- Location: LCCOMB_X29_Y24_N4
\cpu_inst|Op[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[1]~6_combout\ = (\cpu_inst|upc\(1) & ((\cpu_inst|upc\(0)) # ((!\cpu_inst|Mux80~0_combout\) # (!\cpu_inst|instr_reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \cpu_inst|instr_reg\(12),
	datac => \cpu_inst|upc\(1),
	datad => \cpu_inst|Mux80~0_combout\,
	combout => \cpu_inst|Op[1]~6_combout\);

-- Location: LCCOMB_X27_Y23_N22
\cpu_inst|Op[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[1]~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(15) & (\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & 
-- \memory_inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \cpu_inst|Op[1]~0_combout\);

-- Location: LCCOMB_X28_Y25_N18
\cpu_inst|Op[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[1]~7_combout\ = ((!\cpu_inst|upc\(1) & (\cpu_inst|Op[1]~0_combout\ & !\cpu_inst|upc\(0)))) # (!\cpu_inst|upc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(2),
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|Op[1]~0_combout\,
	datad => \cpu_inst|upc\(0),
	combout => \cpu_inst|Op[1]~7_combout\);

-- Location: LCCOMB_X28_Y25_N0
\cpu_inst|Op[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[1]~8_combout\ = (!\cpu_inst|Op[1]~6_combout\ & (!\cpu_inst|Op[1]~7_combout\ & ((!\cpu_inst|address[13]~3_combout\) # (!\cpu_inst|upc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \cpu_inst|address[13]~3_combout\,
	datac => \cpu_inst|Op[1]~6_combout\,
	datad => \cpu_inst|Op[1]~7_combout\,
	combout => \cpu_inst|Op[1]~8_combout\);

-- Location: LCFF_X29_Y25_N17
\cpu_inst|Op[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux157~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Op[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Op\(0));

-- Location: LCCOMB_X30_Y23_N16
\cpu_inst|DATAPATH|ALU|Sum[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ = (!\cpu_inst|Op\(0) & \cpu_inst|Op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Op\(0),
	datad => \cpu_inst|Op\(2),
	combout => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\cpu_inst|Dout[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Dout[15]~0_combout\ = (\cpu_inst|Mux80~0_combout\ & (\cpu_inst|Mux143~0_combout\ & (\cpu_inst|instr_reg\(12) & \cpu_inst|upc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux80~0_combout\,
	datab => \cpu_inst|Mux143~0_combout\,
	datac => \cpu_inst|instr_reg\(12),
	datad => \cpu_inst|upc\(2),
	combout => \cpu_inst|Dout[15]~0_combout\);

-- Location: LCFF_X34_Y24_N13
\cpu_inst|Dout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~34_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(1));

-- Location: LCFF_X34_Y25_N13
\cpu_inst|Dout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~41_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(2));

-- Location: LCFF_X34_Y24_N19
\cpu_inst|Dout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~49_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(3));

-- Location: LCCOMB_X34_Y24_N8
\cpu_inst|Dout[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Dout[4]~feeder_combout\ = \cpu_inst|DATAPATH|ALU|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|ALU|Add0~24_combout\,
	combout => \cpu_inst|Dout[4]~feeder_combout\);

-- Location: LCFF_X34_Y24_N9
\cpu_inst|Dout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Dout[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(4));

-- Location: LCFF_X34_Y24_N7
\cpu_inst|Dout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~32_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(5));

-- Location: LCCOMB_X34_Y25_N26
\cpu_inst|Dout[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Dout[6]~feeder_combout\ = \cpu_inst|DATAPATH|ALU|Add0~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|ALU|Add0~39_combout\,
	combout => \cpu_inst|Dout[6]~feeder_combout\);

-- Location: LCFF_X34_Y25_N27
\cpu_inst|Dout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Dout[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(6));

-- Location: LCFF_X33_Y23_N23
\cpu_inst|Dout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~46_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(7));

-- Location: LCFF_X30_Y23_N13
\cpu_inst|offset[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(8));

-- Location: LCCOMB_X29_Y23_N30
\cpu_inst|DATAPATH|mux[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[8]~8_combout\ = (\cpu_inst|ie~regout\ & ((\memory_inst|altsyncram_component|auto_generated|q_a\(8)))) # (!\cpu_inst|ie~regout\ & (\cpu_inst|DATAPATH|ALU|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ie~regout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~54_combout\,
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \cpu_inst|DATAPATH|mux[8]~8_combout\);

-- Location: LCCOMB_X28_Y23_N18
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~feeder_combout\ = \cpu_inst|DATAPATH|mux[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N8
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\ = (\cpu_inst|WAddr\(0) & (\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & \cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\);

-- Location: LCFF_X28_Y23_N19
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~regout\);

-- Location: LCCOMB_X29_Y23_N2
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~feeder_combout\ = \cpu_inst|DATAPATH|mux[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~feeder_combout\);

-- Location: LCFF_X29_Y23_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~regout\);

-- Location: LCCOMB_X29_Y23_N10
\cpu_inst|DATAPATH|muxA_output[8]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[8]~52_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~regout\) # (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[8]~52_combout\);

-- Location: LCCOMB_X29_Y23_N16
\cpu_inst|DATAPATH|muxA_output[8]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[8]~53_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[8]~52_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[8]~52_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[8]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[8]~52_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[8]~53_combout\);

-- Location: LCFF_X30_Y23_N31
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]~regout\);

-- Location: LCFF_X31_Y23_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]~regout\);

-- Location: LCCOMB_X31_Y23_N20
\cpu_inst|DATAPATH|muxA_output[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[8]~50_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]~regout\) # (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[8]~50_combout\);

-- Location: LCCOMB_X29_Y23_N0
\cpu_inst|DATAPATH|muxA_output[8]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[8]~51_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[8]~50_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[8]~50_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[8]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[8]~50_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[8]~51_combout\);

-- Location: LCCOMB_X29_Y23_N22
\cpu_inst|DATAPATH|muxA_output[8]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[8]~54_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[8]~53_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[8]~51_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[8]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[8]~53_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[8]~51_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[8]~54_combout\);

-- Location: LCCOMB_X29_Y23_N20
\cpu_inst|DATAPATH|muxA_output[8]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[8]~55_combout\ = (\cpu_inst|DATAPATH|muxA_output[8]~54_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datac => \cpu_inst|offset\(8),
	datad => \cpu_inst|DATAPATH|muxA_output[8]~54_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[8]~55_combout\);

-- Location: LCCOMB_X28_Y25_N8
\cpu_inst|Mux145~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux145~0_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & (((!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & !\memory_inst|altsyncram_component|auto_generated|q_a\(13))) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \cpu_inst|Mux145~0_combout\);

-- Location: LCCOMB_X28_Y25_N24
\cpu_inst|readB~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|readB~feeder_combout\ = \cpu_inst|Mux145~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Mux145~0_combout\,
	combout => \cpu_inst|readB~feeder_combout\);

-- Location: LCFF_X28_Y25_N25
\cpu_inst|readB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|readB~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|upc\(1),
	sload => \cpu_inst|upc\(0),
	ena => \cpu_inst|readA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|readB~regout\);

-- Location: LCCOMB_X32_Y25_N16
\cpu_inst|DATAPATH|muxB_output[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~6_combout\ = (!\cpu_inst|bypassB~regout\ & (\cpu_inst|readB~regout\ & \cpu_inst|rb\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|readB~regout\,
	datad => \cpu_inst|rb\(2),
	combout => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\);

-- Location: LCCOMB_X33_Y22_N8
\cpu_inst|Mux146~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux146~0_combout\ = (\cpu_inst|ra[0]~1_combout\ & (((\memory_inst|altsyncram_component|auto_generated|q_a\(8))))) # (!\cpu_inst|ra[0]~1_combout\ & (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & 
-- ((\memory_inst|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \cpu_inst|ra[0]~1_combout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \cpu_inst|Mux146~0_combout\);

-- Location: LCFF_X33_Y22_N23
\cpu_inst|instr_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(8));

-- Location: LCCOMB_X33_Y22_N16
\cpu_inst|Mux146~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux146~1_combout\ = (\cpu_inst|Mux148~0_combout\ & ((\cpu_inst|upc\(1) & ((\cpu_inst|instr_reg\(8)))) # (!\cpu_inst|upc\(1) & (\cpu_inst|Mux146~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(1),
	datab => \cpu_inst|Mux148~0_combout\,
	datac => \cpu_inst|Mux146~0_combout\,
	datad => \cpu_inst|instr_reg\(8),
	combout => \cpu_inst|Mux146~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\cpu_inst|ra[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|ra[0]~2_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(13) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(12) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(14)))) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (\memory_inst|altsyncram_component|auto_generated|q_a\(15))))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & (\memory_inst|altsyncram_component|auto_generated|q_a\(15) & 
-- (\memory_inst|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|ra[0]~2_combout\);

-- Location: LCCOMB_X31_Y21_N28
\cpu_inst|ra[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|ra[0]~3_combout\ = (!\cpu_inst|upc\(1) & ((\cpu_inst|upc\(0) & (!\cpu_inst|Mux59~0_combout\)) # (!\cpu_inst|upc\(0) & ((\cpu_inst|ra[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux59~0_combout\,
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|ra[0]~2_combout\,
	combout => \cpu_inst|ra[0]~3_combout\);

-- Location: LCCOMB_X32_Y22_N6
\cpu_inst|ra[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|ra[0]~4_combout\ = (\cpu_inst|upc\(2) & !\cpu_inst|ra[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|upc\(2),
	datad => \cpu_inst|ra[0]~3_combout\,
	combout => \cpu_inst|ra[0]~4_combout\);

-- Location: LCFF_X33_Y22_N17
\cpu_inst|ra[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux146~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|ra[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|ra\(2));

-- Location: LCCOMB_X32_Y21_N0
\cpu_inst|DATAPATH|muxA_output[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~5_combout\ = (!\cpu_inst|bypassA~regout\ & ((\cpu_inst|bypassB~regout\) # ((\cpu_inst|readA~regout\ & \cpu_inst|ra\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datab => \cpu_inst|bypassB~regout\,
	datac => \cpu_inst|readA~regout\,
	datad => \cpu_inst|ra\(2),
	combout => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\);

-- Location: LCCOMB_X35_Y25_N0
\cpu_inst|DATAPATH|mux[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[12]~12_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(12))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \cpu_inst|DATAPATH|ALU|Add0~74_combout\,
	combout => \cpu_inst|DATAPATH|mux[12]~12_combout\);

-- Location: LCCOMB_X29_Y24_N26
\cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\ = (!\cpu_inst|WAddr\(0) & (\cpu_inst|WAddr\(2) & (\cpu_inst|write~regout\ & !\cpu_inst|WAddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|WAddr\(0),
	datab => \cpu_inst|WAddr\(2),
	datac => \cpu_inst|write~regout\,
	datad => \cpu_inst|WAddr\(1),
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\);

-- Location: LCFF_X34_Y22_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]~regout\);

-- Location: LCFF_X34_Y22_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]~regout\);

-- Location: LCCOMB_X33_Y21_N2
\cpu_inst|DATAPATH|muxB_output[12]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[12]~78_combout\ = (\cpu_inst|rb\(0) & (\cpu_inst|rb\(1))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]~regout\))) # (!\cpu_inst|rb\(1) & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]~regout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[12]~78_combout\);

-- Location: LCFF_X32_Y23_N19
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]~regout\);

-- Location: LCCOMB_X32_Y23_N20
\cpu_inst|DATAPATH|muxB_output[12]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[12]~79_combout\ = (\cpu_inst|DATAPATH|muxB_output[12]~78_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]~regout\) # (!\cpu_inst|rb\(0))))) # (!\cpu_inst|DATAPATH|muxB_output[12]~78_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]~regout\ & (\cpu_inst|rb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[12]~78_combout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[12]~79_combout\);

-- Location: LCCOMB_X35_Y25_N28
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~feeder_combout\ = \cpu_inst|DATAPATH|mux[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~feeder_combout\);

-- Location: LCFF_X35_Y25_N29
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~regout\);

-- Location: LCFF_X31_Y23_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]~regout\);

-- Location: LCFF_X31_Y23_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]~regout\);

-- Location: LCCOMB_X31_Y23_N24
\cpu_inst|DATAPATH|muxB_output[12]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[12]~75_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[12]~75_combout\);

-- Location: LCCOMB_X35_Y25_N4
\cpu_inst|DATAPATH|muxB_output[12]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[12]~76_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[12]~75_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[12]~75_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[12]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~regout\,
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|DATAPATH|muxB_output[12]~75_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[12]~76_combout\);

-- Location: LCCOMB_X32_Y23_N12
\cpu_inst|DATAPATH|muxB_output[12]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[12]~77_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(11)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[12]~76_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[12]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|offset\(11),
	datac => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[12]~76_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[12]~77_combout\);

-- Location: LCCOMB_X32_Y23_N26
\cpu_inst|DATAPATH|muxB_output[12]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[12]~80_combout\ = (\cpu_inst|DATAPATH|muxB_output[12]~77_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[12]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[12]~79_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[12]~77_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[12]~80_combout\);

-- Location: LCCOMB_X31_Y23_N22
\cpu_inst|DATAPATH|muxA_output[12]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[12]~74_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]~regout\) # (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][12]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][12]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[12]~74_combout\);

-- Location: LCCOMB_X31_Y23_N14
\cpu_inst|DATAPATH|muxA_output[12]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[12]~75_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[12]~74_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[12]~74_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[12]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][12]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][12]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[12]~74_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[12]~75_combout\);

-- Location: LCFF_X35_Y24_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[12]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]~regout\);

-- Location: LCCOMB_X34_Y22_N26
\cpu_inst|DATAPATH|muxA_output[12]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[12]~76_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]~regout\) # ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]~regout\ & !\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][12]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][12]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[12]~76_combout\);

-- Location: LCCOMB_X32_Y23_N24
\cpu_inst|DATAPATH|muxA_output[12]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[12]~77_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[12]~76_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[12]~76_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[12]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][12]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][12]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[12]~76_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[12]~77_combout\);

-- Location: LCCOMB_X31_Y23_N8
\cpu_inst|DATAPATH|muxA_output[12]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[12]~78_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[12]~77_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[12]~75_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[12]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[12]~75_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[12]~77_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[12]~78_combout\);

-- Location: LCCOMB_X32_Y23_N30
\cpu_inst|DATAPATH|muxA_output[12]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[12]~79_combout\ = (\cpu_inst|DATAPATH|muxA_output[12]~78_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datab => \cpu_inst|offset\(11),
	datad => \cpu_inst|DATAPATH|muxA_output[12]~78_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[12]~79_combout\);

-- Location: LCCOMB_X31_Y23_N30
\cpu_inst|DATAPATH|ALU|Sum[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[12]~14_combout\ = (\cpu_inst|DATAPATH|muxA_output[12]~79_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[12]~80_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[12]~79_combout\ & (\cpu_inst|DATAPATH|muxB_output[12]~80_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[12]~80_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[12]~79_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[12]~14_combout\);

-- Location: LCCOMB_X32_Y23_N0
\cpu_inst|DATAPATH|ALU|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~70_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & ((!\cpu_inst|DATAPATH|muxA_output[12]~79_combout\))) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Sum[12]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[12]~14_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[12]~79_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~70_combout\);

-- Location: LCCOMB_X32_Y23_N22
\cpu_inst|DATAPATH|ALU|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~71_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[12]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datac => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[12]~80_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~71_combout\);

-- Location: LCCOMB_X33_Y21_N18
\cpu_inst|DATAPATH|mux[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[7]~7_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(7))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \cpu_inst|DATAPATH|ALU|Add0~46_combout\,
	combout => \cpu_inst|DATAPATH|mux[7]~7_combout\);

-- Location: LCCOMB_X33_Y21_N22
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~feeder_combout\ = \cpu_inst|DATAPATH|mux[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~feeder_combout\);

-- Location: LCFF_X33_Y21_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~regout\);

-- Location: LCCOMB_X33_Y21_N16
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~feeder_combout\ = \cpu_inst|DATAPATH|mux[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~feeder_combout\);

-- Location: LCFF_X33_Y21_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~regout\);

-- Location: LCCOMB_X34_Y21_N0
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~feeder_combout\ = \cpu_inst|DATAPATH|mux[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~feeder_combout\);

-- Location: LCFF_X34_Y21_N1
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~regout\);

-- Location: LCCOMB_X34_Y21_N14
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~feeder_combout\ = \cpu_inst|DATAPATH|mux[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~feeder_combout\);

-- Location: LCFF_X34_Y21_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~regout\);

-- Location: LCCOMB_X34_Y21_N28
\cpu_inst|DATAPATH|muxB_output[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[7]~48_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~regout\) # ((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~regout\ & !\cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[7]~48_combout\);

-- Location: LCCOMB_X33_Y21_N30
\cpu_inst|DATAPATH|muxB_output[7]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[7]~49_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[7]~48_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[7]~48_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[7]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[7]~48_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[7]~49_combout\);

-- Location: LCFF_X31_Y24_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]~regout\);

-- Location: LCFF_X32_Y24_N31
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]~regout\);

-- Location: LCFF_X31_Y24_N19
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[7]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]~regout\);

-- Location: LCCOMB_X31_Y24_N18
\cpu_inst|DATAPATH|muxB_output[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[7]~45_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[7]~45_combout\);

-- Location: LCCOMB_X30_Y23_N26
\cpu_inst|DATAPATH|muxB_output[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[7]~46_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[7]~45_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[7]~45_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[7]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[7]~45_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[7]~46_combout\);

-- Location: LCCOMB_X30_Y23_N8
\cpu_inst|DATAPATH|muxB_output[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[7]~47_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(7)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[7]~46_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[7]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(7),
	datad => \cpu_inst|DATAPATH|muxB_output[7]~46_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[7]~47_combout\);

-- Location: LCCOMB_X33_Y21_N0
\cpu_inst|DATAPATH|muxB_output[7]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[7]~50_combout\ = (\cpu_inst|DATAPATH|muxB_output[7]~47_combout\) # ((\cpu_inst|DATAPATH|muxB_output[7]~49_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[7]~49_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[7]~47_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[7]~50_combout\);

-- Location: LCCOMB_X33_Y21_N8
\cpu_inst|DATAPATH|ALU|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~43_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[7]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datac => \cpu_inst|Op\(2),
	datad => \cpu_inst|DATAPATH|muxB_output[7]~50_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~43_combout\);

-- Location: LCCOMB_X32_Y24_N14
\cpu_inst|DATAPATH|mux[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[4]~0_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(4))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(4),
	datad => \cpu_inst|DATAPATH|ALU|Add0~24_combout\,
	combout => \cpu_inst|DATAPATH|mux[4]~0_combout\);

-- Location: LCFF_X30_Y24_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]~regout\);

-- Location: LCFF_X32_Y21_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]~regout\);

-- Location: LCFF_X32_Y21_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]~regout\);

-- Location: LCCOMB_X32_Y21_N12
\cpu_inst|DATAPATH|muxA_output[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[4]~0_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[4]~0_combout\);

-- Location: LCCOMB_X33_Y21_N10
\cpu_inst|DATAPATH|muxA_output[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[4]~1_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[4]~0_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[4]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[4]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[4]~1_combout\);

-- Location: LCFF_X31_Y24_N29
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]~regout\);

-- Location: LCFF_X32_Y24_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]~regout\);

-- Location: LCCOMB_X32_Y24_N12
\cpu_inst|DATAPATH|muxA_output[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[4]~3_combout\ = (\cpu_inst|DATAPATH|muxA_output[4]~2_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]~regout\) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|muxA_output[4]~2_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]~regout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[4]~2_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[4]~3_combout\);

-- Location: LCCOMB_X33_Y24_N12
\cpu_inst|DATAPATH|muxA_output[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[4]~6_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[4]~1_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[4]~3_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[4]~1_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[4]~3_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[4]~6_combout\);

-- Location: LCCOMB_X33_Y24_N2
\cpu_inst|DATAPATH|muxA_output[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[4]~7_combout\ = (\cpu_inst|DATAPATH|muxA_output[4]~6_combout\) # ((\cpu_inst|offset\(4) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(4),
	datab => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[4]~6_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[4]~7_combout\);

-- Location: LCFF_X30_Y24_N21
\cpu_inst|offset[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(3));

-- Location: LCCOMB_X33_Y21_N28
\cpu_inst|DATAPATH|mux[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[3]~1_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(3))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \cpu_inst|ie~regout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~49_combout\,
	combout => \cpu_inst|DATAPATH|mux[3]~1_combout\);

-- Location: LCFF_X32_Y24_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]~regout\);

-- Location: LCFF_X31_Y24_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]~regout\);

-- Location: LCFF_X32_Y24_N29
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]~regout\);

-- Location: LCFF_X31_Y24_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]~regout\);

-- Location: LCCOMB_X31_Y24_N10
\cpu_inst|DATAPATH|muxB_output[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[3]~8_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]~regout\) # ((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]~regout\ & !\cpu_inst|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]~regout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[3]~8_combout\);

-- Location: LCCOMB_X31_Y24_N4
\cpu_inst|DATAPATH|muxB_output[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[3]~9_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[3]~8_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[3]~8_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[3]~8_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[3]~9_combout\);

-- Location: LCCOMB_X30_Y24_N20
\cpu_inst|DATAPATH|muxB_output[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[3]~10_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(3)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[3]~9_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(3),
	datad => \cpu_inst|DATAPATH|muxB_output[3]~9_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[3]~10_combout\);

-- Location: LCCOMB_X33_Y21_N26
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~feeder_combout\ = \cpu_inst|DATAPATH|mux[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~feeder_combout\);

-- Location: LCFF_X33_Y21_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~regout\);

-- Location: LCFF_X32_Y21_N29
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]~regout\);

-- Location: LCCOMB_X32_Y21_N28
\cpu_inst|DATAPATH|muxB_output[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[3]~11_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]~regout\) # ((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]~regout\ & !\cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[3]~11_combout\);

-- Location: LCCOMB_X33_Y21_N24
\cpu_inst|DATAPATH|muxB_output[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[3]~12_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[3]~11_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[3]~11_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[3]~11_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[3]~12_combout\);

-- Location: LCCOMB_X30_Y24_N30
\cpu_inst|DATAPATH|muxB_output[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[3]~13_combout\ = (\cpu_inst|DATAPATH|muxB_output[3]~10_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[3]~10_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[3]~12_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[3]~13_combout\);

-- Location: LCCOMB_X33_Y24_N4
\cpu_inst|DATAPATH|ALU|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~7_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(2),
	datac => \cpu_inst|DATAPATH|muxB_output[3]~13_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~7_combout\);

-- Location: LCCOMB_X35_Y23_N16
\cpu_inst|DATAPATH|mux[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[13]~13_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(13))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \cpu_inst|DATAPATH|ALU|Add0~79_combout\,
	combout => \cpu_inst|DATAPATH|mux[13]~13_combout\);

-- Location: LCCOMB_X37_Y23_N12
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~feeder_combout\ = \cpu_inst|DATAPATH|mux[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~feeder_combout\);

-- Location: LCFF_X37_Y23_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~regout\);

-- Location: LCCOMB_X36_Y23_N4
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~feeder_combout\ = \cpu_inst|DATAPATH|mux[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~feeder_combout\);

-- Location: LCFF_X36_Y23_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~regout\);

-- Location: LCCOMB_X36_Y23_N0
\cpu_inst|DATAPATH|muxA_output[13]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[13]~80_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[13]~80_combout\);

-- Location: LCCOMB_X36_Y23_N30
\cpu_inst|DATAPATH|muxA_output[13]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[13]~81_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[13]~80_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[13]~80_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[13]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[13]~80_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[13]~81_combout\);

-- Location: LCFF_X35_Y23_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]~regout\);

-- Location: LCFF_X34_Y22_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]~regout\);

-- Location: LCCOMB_X34_Y22_N2
\cpu_inst|DATAPATH|muxA_output[13]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[13]~82_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]~regout\)) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[13]~82_combout\);

-- Location: LCCOMB_X35_Y23_N22
\cpu_inst|DATAPATH|muxA_output[13]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[13]~83_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[13]~82_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[13]~82_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[13]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[13]~82_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[13]~83_combout\);

-- Location: LCCOMB_X35_Y23_N26
\cpu_inst|DATAPATH|muxA_output[13]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[13]~84_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[13]~83_combout\) # ((\cpu_inst|DATAPATH|muxA_output[13]~81_combout\ & \cpu_inst|DATAPATH|muxA_output[0]~4_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[13]~81_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[13]~81_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[13]~83_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[13]~84_combout\);

-- Location: LCCOMB_X35_Y23_N8
\cpu_inst|DATAPATH|muxA_output[13]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[13]~85_combout\ = (\cpu_inst|DATAPATH|muxA_output[13]~84_combout\) # ((\cpu_inst|offset\(11) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(11),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[13]~84_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[13]~85_combout\);

-- Location: LCCOMB_X34_Y23_N22
\cpu_inst|DATAPATH|ALU|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~75_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & ((!\cpu_inst|DATAPATH|muxA_output[13]~85_combout\))) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Sum[13]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[13]~15_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[13]~85_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~75_combout\);

-- Location: LCFF_X35_Y22_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]~regout\);

-- Location: LCFF_X34_Y22_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]~regout\);

-- Location: LCCOMB_X34_Y22_N16
\cpu_inst|DATAPATH|muxB_output[13]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[13]~84_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]~regout\))) # (!\cpu_inst|rb\(1) & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][13]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][13]~regout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[13]~84_combout\);

-- Location: LCCOMB_X35_Y22_N0
\cpu_inst|DATAPATH|muxB_output[13]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[13]~85_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[13]~84_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[13]~84_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]~regout\))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[13]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][13]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][13]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[13]~84_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[13]~85_combout\);

-- Location: LCFF_X35_Y23_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[13]~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]~regout\);

-- Location: LCCOMB_X36_Y23_N16
\cpu_inst|DATAPATH|muxB_output[13]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[13]~81_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~regout\) # (\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~regout\ & ((!\cpu_inst|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][13]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][13]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[13]~81_combout\);

-- Location: LCCOMB_X37_Y23_N18
\cpu_inst|DATAPATH|muxB_output[13]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[13]~82_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[13]~81_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[13]~81_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[13]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][13]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][13]~regout\,
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|DATAPATH|muxB_output[13]~81_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[13]~82_combout\);

-- Location: LCCOMB_X36_Y23_N22
\cpu_inst|DATAPATH|muxB_output[13]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[13]~83_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(11)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[13]~82_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[13]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|offset\(11),
	datac => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[13]~82_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[13]~83_combout\);

-- Location: LCCOMB_X35_Y23_N28
\cpu_inst|DATAPATH|muxB_output[13]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[13]~86_combout\ = (\cpu_inst|DATAPATH|muxB_output[13]~83_combout\) # ((\cpu_inst|DATAPATH|muxB_output[13]~85_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[13]~85_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[13]~83_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[13]~86_combout\);

-- Location: LCCOMB_X34_Y23_N28
\cpu_inst|DATAPATH|ALU|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~76_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[13]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Op\(2),
	datac => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[13]~86_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~76_combout\);

-- Location: LCCOMB_X33_Y23_N10
\cpu_inst|DATAPATH|ALU|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~72_combout\ = (\cpu_inst|DATAPATH|muxA_output[12]~79_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~71_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~68\ & VCC)) # (!\cpu_inst|DATAPATH|ALU|Add0~71_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~68\)))) # (!\cpu_inst|DATAPATH|muxA_output[12]~79_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~71_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~68\)) # (!\cpu_inst|DATAPATH|ALU|Add0~71_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~68\) # 
-- (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~73\ = CARRY((\cpu_inst|DATAPATH|muxA_output[12]~79_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~71_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~68\)) # (!\cpu_inst|DATAPATH|muxA_output[12]~79_combout\ & 
-- ((!\cpu_inst|DATAPATH|ALU|Add0~68\) # (!\cpu_inst|DATAPATH|ALU|Add0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[12]~79_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~71_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~68\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~72_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~73\);

-- Location: LCCOMB_X33_Y23_N12
\cpu_inst|DATAPATH|ALU|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~77_combout\ = ((\cpu_inst|DATAPATH|muxA_output[13]~85_combout\ $ (\cpu_inst|DATAPATH|ALU|Add0~76_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~73\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~78\ = CARRY((\cpu_inst|DATAPATH|muxA_output[13]~85_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~76_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~73\))) # (!\cpu_inst|DATAPATH|muxA_output[13]~85_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Add0~76_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[13]~85_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~76_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~73\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~77_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~78\);

-- Location: LCCOMB_X34_Y23_N8
\cpu_inst|DATAPATH|ALU|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~79_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~75_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~75_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~77_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~79_combout\);

-- Location: LCFF_X35_Y22_N17
\cpu_inst|Dout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~79_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(13));

-- Location: LCCOMB_X35_Y23_N6
\cpu_inst|DATAPATH|mux[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[14]~14_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(14))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ie~regout\,
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \cpu_inst|DATAPATH|ALU|Add0~84_combout\,
	combout => \cpu_inst|DATAPATH|mux[14]~14_combout\);

-- Location: LCCOMB_X37_Y23_N24
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~feeder_combout\ = \cpu_inst|DATAPATH|mux[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~feeder_combout\);

-- Location: LCFF_X37_Y23_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~regout\);

-- Location: LCFF_X36_Y23_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]~regout\);

-- Location: LCCOMB_X36_Y23_N2
\cpu_inst|DATAPATH|muxA_output[14]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[14]~86_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[14]~86_combout\);

-- Location: LCCOMB_X36_Y23_N28
\cpu_inst|DATAPATH|muxA_output[14]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[14]~87_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[14]~86_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[14]~86_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[14]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[14]~86_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[14]~87_combout\);

-- Location: LCFF_X35_Y23_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]~regout\);

-- Location: LCCOMB_X35_Y21_N2
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~feeder_combout\ = \cpu_inst|DATAPATH|mux[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~feeder_combout\);

-- Location: LCFF_X35_Y21_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~regout\);

-- Location: LCCOMB_X35_Y21_N26
\cpu_inst|DATAPATH|muxA_output[14]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[14]~88_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~regout\) # ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~regout\ & !\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][14]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][14]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[14]~88_combout\);

-- Location: LCCOMB_X35_Y23_N12
\cpu_inst|DATAPATH|muxA_output[14]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[14]~89_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[14]~88_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[14]~88_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[14]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][14]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][14]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[14]~88_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[14]~89_combout\);

-- Location: LCCOMB_X35_Y23_N18
\cpu_inst|DATAPATH|muxA_output[14]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[14]~90_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[14]~89_combout\) # ((\cpu_inst|DATAPATH|muxA_output[14]~87_combout\ & \cpu_inst|DATAPATH|muxA_output[0]~4_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[14]~87_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[14]~87_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[14]~89_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[14]~90_combout\);

-- Location: LCCOMB_X35_Y23_N4
\cpu_inst|DATAPATH|muxA_output[14]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[14]~91_combout\ = (\cpu_inst|DATAPATH|muxA_output[14]~90_combout\) # ((\cpu_inst|offset\(11) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(11),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[14]~90_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[14]~91_combout\);

-- Location: LCCOMB_X34_Y23_N20
\cpu_inst|DATAPATH|ALU|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~80_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & ((!\cpu_inst|DATAPATH|muxA_output[14]~91_combout\))) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Sum[14]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[14]~16_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[14]~91_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~80_combout\);

-- Location: LCCOMB_X35_Y23_N14
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~feeder_combout\ = \cpu_inst|DATAPATH|mux[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~feeder_combout\);

-- Location: LCFF_X35_Y23_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~regout\);

-- Location: LCFF_X36_Y23_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[14]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]~regout\);

-- Location: LCCOMB_X36_Y23_N10
\cpu_inst|DATAPATH|muxB_output[14]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[14]~87_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]~regout\) # ((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]~regout\ & !\cpu_inst|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][14]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][14]~regout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[14]~87_combout\);

-- Location: LCCOMB_X37_Y23_N30
\cpu_inst|DATAPATH|muxB_output[14]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[14]~88_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[14]~87_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[14]~87_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[14]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][14]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][14]~regout\,
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|DATAPATH|muxB_output[14]~87_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[14]~88_combout\);

-- Location: LCCOMB_X36_Y23_N24
\cpu_inst|DATAPATH|muxB_output[14]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[14]~89_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(11)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[14]~88_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[14]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|offset\(11),
	datac => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[14]~88_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[14]~89_combout\);

-- Location: LCCOMB_X35_Y23_N30
\cpu_inst|DATAPATH|muxB_output[14]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[14]~92_combout\ = (\cpu_inst|DATAPATH|muxB_output[14]~89_combout\) # ((\cpu_inst|DATAPATH|muxB_output[14]~91_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[14]~91_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[14]~89_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[14]~92_combout\);

-- Location: LCCOMB_X34_Y23_N30
\cpu_inst|DATAPATH|ALU|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~81_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[14]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Op\(2),
	datac => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[14]~92_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~81_combout\);

-- Location: LCCOMB_X33_Y23_N14
\cpu_inst|DATAPATH|ALU|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~82_combout\ = (\cpu_inst|DATAPATH|muxA_output[14]~91_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~81_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~78\ & VCC)) # (!\cpu_inst|DATAPATH|ALU|Add0~81_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~78\)))) # (!\cpu_inst|DATAPATH|muxA_output[14]~91_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~81_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~78\)) # (!\cpu_inst|DATAPATH|ALU|Add0~81_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~78\) # 
-- (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~83\ = CARRY((\cpu_inst|DATAPATH|muxA_output[14]~91_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~81_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~78\)) # (!\cpu_inst|DATAPATH|muxA_output[14]~91_combout\ & 
-- ((!\cpu_inst|DATAPATH|ALU|Add0~78\) # (!\cpu_inst|DATAPATH|ALU|Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[14]~91_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~81_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~78\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~82_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~83\);

-- Location: LCCOMB_X34_Y23_N2
\cpu_inst|DATAPATH|ALU|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~84_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~80_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~80_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~82_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~84_combout\);

-- Location: LCFF_X34_Y24_N21
\cpu_inst|Dout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~84_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(14));

-- Location: LCFF_X34_Y25_N25
\cpu_inst|Dout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~89_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(15));

-- Location: M4K_X26_Y21
\memory_inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"70007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000",
	mem_init0 => X"7000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000700070007000FFF1FFFBC002124091A088801480A20DFFFBC002124091A004808880A440A20D0DB00DB00DB00DB0AD00FFFBC0021240048006D89098A60FA440A20DA001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory:memory_inst|altsyncram:altsyncram_component|altsyncram_mvc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \wren_activator~1_combout\,
	clk0 => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	portadatain => \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X31_Y21_N26
\cpu_inst|offset[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[11]~4_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (\memory_inst|altsyncram_component|auto_generated|q_a\(13) & (!\cpu_inst|O_Flag_Latched~regout\ & !\memory_inst|altsyncram_component|auto_generated|q_a\(12)))) 
-- # (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (((\memory_inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \cpu_inst|O_Flag_Latched~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|offset[11]~4_combout\);

-- Location: LCCOMB_X31_Y25_N10
\cpu_inst|offset[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[11]~6_combout\ = (\cpu_inst|offset[4]~2_combout\ & (!\cpu_inst|offset[11]~4_combout\ & ((\memory_inst|altsyncram_component|auto_generated|q_a\(13)) # (!\cpu_inst|offset[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset[0]~5_combout\,
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \cpu_inst|offset[4]~2_combout\,
	datad => \cpu_inst|offset[11]~4_combout\,
	combout => \cpu_inst|offset[11]~6_combout\);

-- Location: LCFF_X31_Y25_N7
\cpu_inst|offset[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(1));

-- Location: LCCOMB_X32_Y23_N18
\cpu_inst|DATAPATH|mux[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[1]~3_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(1))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ie~regout\,
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(1),
	datad => \cpu_inst|DATAPATH|ALU|Add0~34_combout\,
	combout => \cpu_inst|DATAPATH|mux[1]~3_combout\);

-- Location: LCFF_X31_Y24_N1
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]~regout\);

-- Location: LCFF_X32_Y22_N1
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]~regout\);

-- Location: LCFF_X31_Y24_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]~regout\);

-- Location: LCFF_X32_Y22_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]~regout\);

-- Location: LCCOMB_X32_Y22_N18
\cpu_inst|DATAPATH|muxA_output[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[1]~20_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]~regout\,
	combout => \cpu_inst|DATAPATH|muxA_output[1]~20_combout\);

-- Location: LCCOMB_X32_Y22_N0
\cpu_inst|DATAPATH|muxA_output[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[1]~21_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[1]~20_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[1]~20_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[1]~20_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[1]~21_combout\);

-- Location: LCCOMB_X32_Y23_N2
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~feeder_combout\ = \cpu_inst|DATAPATH|mux[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~feeder_combout\);

-- Location: LCFF_X32_Y23_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~regout\);

-- Location: LCCOMB_X32_Y23_N16
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~feeder_combout\ = \cpu_inst|DATAPATH|mux[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~feeder_combout\);

-- Location: LCFF_X32_Y23_N17
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~regout\);

-- Location: LCFF_X32_Y21_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]~regout\);

-- Location: LCFF_X32_Y21_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[1]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]~regout\);

-- Location: LCCOMB_X32_Y21_N10
\cpu_inst|DATAPATH|muxA_output[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[1]~22_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[1]~22_combout\);

-- Location: LCCOMB_X32_Y22_N12
\cpu_inst|DATAPATH|muxA_output[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[1]~23_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[1]~22_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[1]~22_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[1]~22_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[1]~23_combout\);

-- Location: LCCOMB_X32_Y22_N22
\cpu_inst|DATAPATH|muxA_output[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[1]~24_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[1]~21_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & \cpu_inst|DATAPATH|muxA_output[1]~23_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (((\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & \cpu_inst|DATAPATH|muxA_output[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[1]~21_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[1]~23_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[1]~24_combout\);

-- Location: LCCOMB_X32_Y22_N28
\cpu_inst|DATAPATH|muxA_output[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[1]~25_combout\ = (\cpu_inst|DATAPATH|muxA_output[1]~24_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datac => \cpu_inst|offset\(1),
	datad => \cpu_inst|DATAPATH|muxA_output[1]~24_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[1]~25_combout\);

-- Location: LCFF_X31_Y25_N13
\cpu_inst|offset[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(0));

-- Location: LCCOMB_X33_Y22_N18
\cpu_inst|DATAPATH|mux[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[0]~4_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(0))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \cpu_inst|DATAPATH|ALU|Add0~27_combout\,
	combout => \cpu_inst|DATAPATH|mux[0]~4_combout\);

-- Location: LCFF_X32_Y22_N31
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]~regout\);

-- Location: LCCOMB_X32_Y22_N2
\cpu_inst|DATAPATH|muxA_output[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~26_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]~regout\) # (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~26_combout\);

-- Location: LCFF_X32_Y22_N9
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]~regout\);

-- Location: LCCOMB_X32_Y22_N8
\cpu_inst|DATAPATH|muxA_output[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~27_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~26_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]~regout\) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|muxA_output[0]~26_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]~regout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]~regout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~26_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~27_combout\);

-- Location: LCFF_X32_Y25_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]~regout\);

-- Location: LCCOMB_X34_Y22_N4
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~feeder_combout\ = \cpu_inst|DATAPATH|mux[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~feeder_combout\);

-- Location: LCFF_X34_Y22_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~regout\);

-- Location: LCCOMB_X32_Y22_N24
\cpu_inst|DATAPATH|muxA_output[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~28_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~28_combout\);

-- Location: LCCOMB_X32_Y25_N28
\cpu_inst|DATAPATH|muxA_output[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~29_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[0]~28_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[0]~28_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[0]~28_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~29_combout\);

-- Location: LCCOMB_X32_Y22_N26
\cpu_inst|DATAPATH|muxA_output[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~30_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[0]~27_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & \cpu_inst|DATAPATH|muxA_output[0]~29_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[0]~27_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[0]~29_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~30_combout\);

-- Location: LCCOMB_X32_Y22_N20
\cpu_inst|DATAPATH|muxA_output[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[0]~31_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~30_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datac => \cpu_inst|offset\(0),
	datad => \cpu_inst|DATAPATH|muxA_output[0]~30_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[0]~31_combout\);

-- Location: LCCOMB_X33_Y24_N16
\cpu_inst|DATAPATH|ALU|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~12_cout\ = CARRY((\cpu_inst|Op\(0) & !\cpu_inst|Op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(1),
	datad => VCC,
	cout => \cpu_inst|DATAPATH|ALU|Add0~12_cout\);

-- Location: LCCOMB_X33_Y24_N18
\cpu_inst|DATAPATH|ALU|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~13_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~10_combout\ & ((\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~12_cout\ & VCC)) # (!\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~12_cout\)))) # (!\cpu_inst|DATAPATH|ALU|Add0~10_combout\ & ((\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~12_cout\)) # (!\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Add0~12_cout\) # (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~14\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~10_combout\ & (!\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~12_cout\)) # (!\cpu_inst|DATAPATH|ALU|Add0~10_combout\ & 
-- ((!\cpu_inst|DATAPATH|ALU|Add0~12_cout\) # (!\cpu_inst|DATAPATH|muxA_output[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~10_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~31_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~12_cout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~13_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~14\);

-- Location: LCCOMB_X33_Y24_N20
\cpu_inst|DATAPATH|ALU|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~15_combout\ = ((\cpu_inst|DATAPATH|ALU|Add0~9_combout\ $ (\cpu_inst|DATAPATH|muxA_output[1]~25_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~14\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~16\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~9_combout\ & ((\cpu_inst|DATAPATH|muxA_output[1]~25_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~14\))) # (!\cpu_inst|DATAPATH|ALU|Add0~9_combout\ & 
-- (\cpu_inst|DATAPATH|muxA_output[1]~25_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~9_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[1]~25_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~14\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~15_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~16\);

-- Location: LCCOMB_X33_Y24_N22
\cpu_inst|DATAPATH|ALU|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~17_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~8_combout\ & ((\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~16\ & VCC)) # (!\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~16\)))) # (!\cpu_inst|DATAPATH|ALU|Add0~8_combout\ & ((\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~16\)) # (!\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~16\) 
-- # (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~18\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~8_combout\ & (!\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~16\)) # (!\cpu_inst|DATAPATH|ALU|Add0~8_combout\ & ((!\cpu_inst|DATAPATH|ALU|Add0~16\) # 
-- (!\cpu_inst|DATAPATH|muxA_output[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~8_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[2]~19_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~16\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~17_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~18\);

-- Location: LCCOMB_X33_Y24_N24
\cpu_inst|DATAPATH|ALU|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~19_combout\ = ((\cpu_inst|DATAPATH|muxA_output[3]~13_combout\ $ (\cpu_inst|DATAPATH|ALU|Add0~7_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~18\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~20\ = CARRY((\cpu_inst|DATAPATH|muxA_output[3]~13_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~7_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~18\))) # (!\cpu_inst|DATAPATH|muxA_output[3]~13_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Add0~7_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[3]~13_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~7_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~18\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~19_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~20\);

-- Location: LCCOMB_X33_Y24_N26
\cpu_inst|DATAPATH|ALU|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~21_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~6_combout\ & ((\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~20\ & VCC)) # (!\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~20\)))) # (!\cpu_inst|DATAPATH|ALU|Add0~6_combout\ & ((\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~20\)) # (!\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~20\) # 
-- (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~22\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~6_combout\ & (!\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~20\)) # (!\cpu_inst|DATAPATH|ALU|Add0~6_combout\ & ((!\cpu_inst|DATAPATH|ALU|Add0~20\) # 
-- (!\cpu_inst|DATAPATH|muxA_output[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~6_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[4]~7_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~20\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~21_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~22\);

-- Location: LCCOMB_X33_Y24_N28
\cpu_inst|DATAPATH|ALU|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~30_combout\ = ((\cpu_inst|DATAPATH|ALU|Add0~29_combout\ $ (\cpu_inst|DATAPATH|muxA_output[5]~37_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~22\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~31\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~29_combout\ & ((\cpu_inst|DATAPATH|muxA_output[5]~37_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~22\))) # (!\cpu_inst|DATAPATH|ALU|Add0~29_combout\ & 
-- (\cpu_inst|DATAPATH|muxA_output[5]~37_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~29_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[5]~37_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~22\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~30_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~31\);

-- Location: LCCOMB_X33_Y24_N30
\cpu_inst|DATAPATH|ALU|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~37_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~36_combout\ & ((\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~31\ & VCC)) # (!\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~31\)))) # (!\cpu_inst|DATAPATH|ALU|Add0~36_combout\ & ((\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~31\)) # (!\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Add0~31\) # (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~38\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~36_combout\ & (!\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~31\)) # (!\cpu_inst|DATAPATH|ALU|Add0~36_combout\ & ((!\cpu_inst|DATAPATH|ALU|Add0~31\) # 
-- (!\cpu_inst|DATAPATH|muxA_output[6]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~36_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[6]~43_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~31\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~37_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~38\);

-- Location: LCCOMB_X33_Y23_N0
\cpu_inst|DATAPATH|ALU|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~44_combout\ = ((\cpu_inst|DATAPATH|muxA_output[7]~49_combout\ $ (\cpu_inst|DATAPATH|ALU|Add0~43_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~38\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~45\ = CARRY((\cpu_inst|DATAPATH|muxA_output[7]~49_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~43_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~38\))) # (!\cpu_inst|DATAPATH|muxA_output[7]~49_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Add0~43_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[7]~49_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~43_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~38\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~44_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~45\);

-- Location: LCCOMB_X33_Y23_N2
\cpu_inst|DATAPATH|ALU|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~52_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~51_combout\ & ((\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~45\ & VCC)) # (!\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~45\)))) # (!\cpu_inst|DATAPATH|ALU|Add0~51_combout\ & ((\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~45\)) # (!\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Add0~45\) # (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~53\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~51_combout\ & (!\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~45\)) # (!\cpu_inst|DATAPATH|ALU|Add0~51_combout\ & ((!\cpu_inst|DATAPATH|ALU|Add0~45\) # 
-- (!\cpu_inst|DATAPATH|muxA_output[8]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~51_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[8]~55_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~45\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~52_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~53\);

-- Location: LCCOMB_X33_Y23_N4
\cpu_inst|DATAPATH|ALU|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~57_combout\ = ((\cpu_inst|DATAPATH|muxA_output[9]~61_combout\ $ (\cpu_inst|DATAPATH|ALU|Add0~56_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~53\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~58\ = CARRY((\cpu_inst|DATAPATH|muxA_output[9]~61_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~56_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~53\))) # (!\cpu_inst|DATAPATH|muxA_output[9]~61_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Add0~56_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[9]~61_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~56_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~53\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~57_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~58\);

-- Location: LCCOMB_X33_Y23_N6
\cpu_inst|DATAPATH|ALU|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~62_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~61_combout\ & ((\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~58\ & VCC)) # (!\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & 
-- (!\cpu_inst|DATAPATH|ALU|Add0~58\)))) # (!\cpu_inst|DATAPATH|ALU|Add0~61_combout\ & ((\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & (!\cpu_inst|DATAPATH|ALU|Add0~58\)) # (!\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Add0~58\) # (GND)))))
-- \cpu_inst|DATAPATH|ALU|Add0~63\ = CARRY((\cpu_inst|DATAPATH|ALU|Add0~61_combout\ & (!\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~58\)) # (!\cpu_inst|DATAPATH|ALU|Add0~61_combout\ & ((!\cpu_inst|DATAPATH|ALU|Add0~58\) # 
-- (!\cpu_inst|DATAPATH|muxA_output[10]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~61_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[10]~67_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~58\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~62_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~63\);

-- Location: LCCOMB_X33_Y23_N8
\cpu_inst|DATAPATH|ALU|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~67_combout\ = ((\cpu_inst|DATAPATH|muxA_output[11]~73_combout\ $ (\cpu_inst|DATAPATH|ALU|Add0~66_combout\ $ (!\cpu_inst|DATAPATH|ALU|Add0~63\)))) # (GND)
-- \cpu_inst|DATAPATH|ALU|Add0~68\ = CARRY((\cpu_inst|DATAPATH|muxA_output[11]~73_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~66_combout\) # (!\cpu_inst|DATAPATH|ALU|Add0~63\))) # (!\cpu_inst|DATAPATH|muxA_output[11]~73_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Add0~66_combout\ & !\cpu_inst|DATAPATH|ALU|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[11]~73_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~66_combout\,
	datad => VCC,
	cin => \cpu_inst|DATAPATH|ALU|Add0~63\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~67_combout\,
	cout => \cpu_inst|DATAPATH|ALU|Add0~68\);

-- Location: LCCOMB_X33_Y23_N28
\cpu_inst|DATAPATH|ALU|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~74_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~70_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~70_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~72_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~74_combout\);

-- Location: LCFF_X33_Y23_N29
\cpu_inst|Dout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~74_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(12));

-- Location: LCCOMB_X31_Y23_N2
\cpu_inst|DATAPATH|mux[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[11]~11_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(11))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \cpu_inst|DATAPATH|ALU|Add0~69_combout\,
	combout => \cpu_inst|DATAPATH|mux[11]~11_combout\);

-- Location: LCCOMB_X32_Y24_N22
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~feeder_combout\ = \cpu_inst|DATAPATH|mux[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~feeder_combout\);

-- Location: LCFF_X32_Y24_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~regout\);

-- Location: LCFF_X31_Y23_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]~regout\);

-- Location: LCFF_X31_Y23_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]~regout\);

-- Location: LCCOMB_X31_Y23_N12
\cpu_inst|DATAPATH|muxB_output[11]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[11]~69_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[11]~69_combout\);

-- Location: LCCOMB_X30_Y25_N14
\cpu_inst|DATAPATH|muxB_output[11]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[11]~70_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[11]~69_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[11]~69_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~regout\)))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[11]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[11]~69_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[11]~70_combout\);

-- Location: LCCOMB_X31_Y25_N30
\cpu_inst|DATAPATH|muxB_output[11]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[11]~71_combout\ = (\cpu_inst|offset\(11) & ((\cpu_inst|bypassB~regout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[11]~70_combout\)))) # (!\cpu_inst|offset\(11) & 
-- (((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[11]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(11),
	datab => \cpu_inst|bypassB~regout\,
	datac => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[11]~70_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[11]~71_combout\);

-- Location: LCCOMB_X34_Y22_N14
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~feeder_combout\ = \cpu_inst|DATAPATH|mux[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~feeder_combout\);

-- Location: LCFF_X34_Y22_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~regout\);

-- Location: LCFF_X34_Y22_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]~regout\);

-- Location: LCCOMB_X34_Y22_N20
\cpu_inst|DATAPATH|muxB_output[11]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[11]~72_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]~regout\))) # (!\cpu_inst|rb\(1) & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]~regout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[11]~72_combout\);

-- Location: LCFF_X32_Y25_N31
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[11]~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]~regout\);

-- Location: LCCOMB_X32_Y25_N30
\cpu_inst|DATAPATH|muxB_output[11]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[11]~73_combout\ = (\cpu_inst|DATAPATH|muxB_output[11]~72_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]~regout\) # ((!\cpu_inst|rb\(0))))) # (!\cpu_inst|DATAPATH|muxB_output[11]~72_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]~regout\ & \cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[11]~72_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[11]~73_combout\);

-- Location: LCCOMB_X32_Y25_N26
\cpu_inst|DATAPATH|muxB_output[11]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[11]~74_combout\ = (\cpu_inst|DATAPATH|muxB_output[11]~71_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[11]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[11]~71_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[11]~73_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[11]~74_combout\);

-- Location: LCCOMB_X32_Y25_N18
\cpu_inst|DATAPATH|ALU|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~66_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[11]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Op\(0),
	datac => \cpu_inst|Op\(2),
	datad => \cpu_inst|DATAPATH|muxB_output[11]~74_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~66_combout\);

-- Location: LCCOMB_X33_Y22_N2
\cpu_inst|DATAPATH|muxA_output[11]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[11]~70_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]~regout\)) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][11]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][11]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[11]~70_combout\);

-- Location: LCCOMB_X32_Y25_N24
\cpu_inst|DATAPATH|muxA_output[11]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[11]~71_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[11]~70_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[11]~70_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[11]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][11]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][11]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[11]~70_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[11]~71_combout\);

-- Location: LCCOMB_X30_Y25_N0
\cpu_inst|DATAPATH|muxA_output[11]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[11]~68_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]~regout\) # ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]~regout\ & !\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][11]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][11]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[11]~68_combout\);

-- Location: LCCOMB_X30_Y25_N26
\cpu_inst|DATAPATH|muxA_output[11]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[11]~69_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[11]~68_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[11]~68_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[11]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][11]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][11]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[11]~68_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[11]~69_combout\);

-- Location: LCCOMB_X32_Y25_N2
\cpu_inst|DATAPATH|muxA_output[11]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[11]~72_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[11]~71_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[11]~69_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[11]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[11]~71_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[11]~69_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[11]~72_combout\);

-- Location: LCCOMB_X32_Y25_N8
\cpu_inst|DATAPATH|muxA_output[11]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[11]~73_combout\ = (\cpu_inst|DATAPATH|muxA_output[11]~72_combout\) # ((\cpu_inst|offset\(11) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|offset\(11),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[11]~72_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[11]~73_combout\);

-- Location: LCCOMB_X32_Y25_N10
\cpu_inst|DATAPATH|ALU|Sum[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[11]~13_combout\ = (\cpu_inst|DATAPATH|muxA_output[11]~73_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[11]~74_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[11]~73_combout\ & (\cpu_inst|DATAPATH|muxB_output[11]~74_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[11]~73_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[11]~74_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[11]~13_combout\);

-- Location: LCCOMB_X32_Y25_N0
\cpu_inst|DATAPATH|ALU|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~65_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[11]~73_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[11]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[11]~73_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[11]~13_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~65_combout\);

-- Location: LCCOMB_X33_Y23_N26
\cpu_inst|DATAPATH|ALU|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~69_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~65_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~67_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~65_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~69_combout\);

-- Location: LCFF_X33_Y23_N27
\cpu_inst|Dout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~69_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(11));

-- Location: LCCOMB_X33_Y25_N8
\cpu_inst|DATAPATH|mux[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[10]~10_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(10))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \cpu_inst|DATAPATH|ALU|Add0~64_combout\,
	combout => \cpu_inst|DATAPATH|mux[10]~10_combout\);

-- Location: LCCOMB_X35_Y25_N18
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~feeder_combout\ = \cpu_inst|DATAPATH|mux[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~feeder_combout\);

-- Location: LCFF_X35_Y25_N19
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~regout\);

-- Location: LCCOMB_X35_Y25_N24
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~feeder_combout\ = \cpu_inst|DATAPATH|mux[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~feeder_combout\);

-- Location: LCFF_X35_Y25_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~regout\);

-- Location: LCCOMB_X31_Y23_N26
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~feeder_combout\ = \cpu_inst|DATAPATH|mux[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[10]~10_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~feeder_combout\);

-- Location: LCFF_X31_Y23_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~regout\);

-- Location: LCCOMB_X31_Y23_N16
\cpu_inst|DATAPATH|muxA_output[10]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[10]~62_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][10]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][10]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[10]~62_combout\);

-- Location: LCCOMB_X32_Y22_N14
\cpu_inst|DATAPATH|muxA_output[10]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[10]~63_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[10]~62_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[10]~62_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[10]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][10]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][10]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[10]~62_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[10]~63_combout\);

-- Location: LCCOMB_X33_Y22_N12
\cpu_inst|DATAPATH|muxA_output[10]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[10]~66_combout\ = (\cpu_inst|DATAPATH|muxA_output[10]~65_combout\ & ((\cpu_inst|DATAPATH|muxA_output[0]~5_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[10]~63_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[10]~65_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[10]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[10]~65_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[10]~63_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[10]~66_combout\);

-- Location: LCCOMB_X34_Y22_N28
\cpu_inst|DATAPATH|muxA_output[10]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[10]~67_combout\ = (\cpu_inst|DATAPATH|muxA_output[10]~66_combout\) # ((\cpu_inst|offset\(10) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(10),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[10]~66_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[10]~67_combout\);

-- Location: LCCOMB_X34_Y22_N18
\cpu_inst|DATAPATH|ALU|Sum[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[10]~12_combout\ = (\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|muxB_output[10]~68_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[10]~67_combout\ & (\cpu_inst|DATAPATH|muxB_output[10]~68_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[10]~68_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[10]~67_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[10]~12_combout\);

-- Location: LCCOMB_X34_Y22_N8
\cpu_inst|DATAPATH|ALU|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~60_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[10]~67_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[10]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[10]~67_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[10]~12_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~60_combout\);

-- Location: LCCOMB_X33_Y23_N30
\cpu_inst|DATAPATH|ALU|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~64_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~60_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~60_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~62_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~64_combout\);

-- Location: LCFF_X33_Y23_N11
\cpu_inst|Dout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~64_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(10));

-- Location: LCCOMB_X31_Y21_N24
\cpu_inst|Mux150~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux150~0_combout\ = (!\cpu_inst|upc\(0) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & (!\cpu_inst|upc\(1) & \memory_inst|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \cpu_inst|upc\(1),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \cpu_inst|Mux150~0_combout\);

-- Location: LCCOMB_X31_Y21_N4
\cpu_inst|rb[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|rb[2]~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(13) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(14)) # ((\memory_inst|altsyncram_component|auto_generated|q_a\(15) & 
-- !\memory_inst|altsyncram_component|auto_generated|q_a\(12))))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(15)) # ((\memory_inst|altsyncram_component|auto_generated|q_a\(14) & 
-- \memory_inst|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|rb[2]~0_combout\);

-- Location: LCCOMB_X31_Y21_N30
\cpu_inst|rb[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|rb[2]~1_combout\ = (!\cpu_inst|upc\(1) & ((\cpu_inst|upc\(0) & (!\cpu_inst|Mux59~0_combout\)) # (!\cpu_inst|upc\(0) & ((\cpu_inst|rb[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux59~0_combout\,
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|rb[2]~0_combout\,
	datad => \cpu_inst|upc\(0),
	combout => \cpu_inst|rb[2]~1_combout\);

-- Location: LCCOMB_X31_Y21_N8
\cpu_inst|rb[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|rb[2]~2_combout\ = (\cpu_inst|upc\(2) & (!\cpu_inst|rb[2]~1_combout\ & ((\cpu_inst|upc\(0)) # (!\cpu_inst|Mux143~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(2),
	datab => \cpu_inst|rb[2]~1_combout\,
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|Mux143~1_combout\,
	combout => \cpu_inst|rb[2]~2_combout\);

-- Location: LCFF_X31_Y21_N25
\cpu_inst|rb[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux150~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|rb[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|rb\(1));

-- Location: LCCOMB_X32_Y23_N8
\cpu_inst|DATAPATH|mux[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[9]~9_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(9))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \cpu_inst|DATAPATH|ALU|Add0~59_combout\,
	combout => \cpu_inst|DATAPATH|mux[9]~9_combout\);

-- Location: LCCOMB_X29_Y23_N24
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~feeder_combout\ = \cpu_inst|DATAPATH|mux[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~feeder_combout\);

-- Location: LCFF_X29_Y23_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~regout\);

-- Location: LCCOMB_X30_Y25_N6
\cpu_inst|DATAPATH|muxB_output[9]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[9]~60_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0)) # (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~regout\)))) # (!\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~regout\ & (!\cpu_inst|rb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[9]~60_combout\);

-- Location: LCFF_X32_Y23_N5
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]~regout\);

-- Location: LCCOMB_X31_Y23_N0
\cpu_inst|DATAPATH|muxB_output[9]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[9]~61_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[9]~60_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[9]~60_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]~regout\))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[9]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|DATAPATH|muxB_output[9]~60_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[9]~61_combout\);

-- Location: LCFF_X31_Y23_N29
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]~regout\);

-- Location: LCFF_X31_Y23_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]~regout\);

-- Location: LCCOMB_X31_Y23_N10
\cpu_inst|DATAPATH|muxB_output[9]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[9]~57_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[9]~57_combout\);

-- Location: LCCOMB_X29_Y23_N26
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~feeder_combout\ = \cpu_inst|DATAPATH|mux[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~feeder_combout\);

-- Location: LCFF_X29_Y23_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~regout\);

-- Location: LCCOMB_X30_Y21_N10
\cpu_inst|DATAPATH|muxB_output[9]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[9]~58_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[9]~57_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[9]~57_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[9]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|muxB_output[9]~57_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[9]~58_combout\);

-- Location: LCCOMB_X30_Y23_N18
\cpu_inst|DATAPATH|muxB_output[9]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[9]~59_combout\ = (\cpu_inst|offset\(9) & ((\cpu_inst|bypassB~regout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[9]~58_combout\)))) # (!\cpu_inst|offset\(9) & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[9]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(9),
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|bypassB~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[9]~58_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[9]~59_combout\);

-- Location: LCCOMB_X30_Y23_N28
\cpu_inst|DATAPATH|muxB_output[9]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[9]~62_combout\ = (\cpu_inst|DATAPATH|muxB_output[9]~59_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[9]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[9]~61_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[9]~59_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[9]~62_combout\);

-- Location: LCCOMB_X30_Y23_N20
\cpu_inst|DATAPATH|ALU|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~56_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[9]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(2),
	datab => \cpu_inst|Op\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[9]~62_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~56_combout\);

-- Location: LCCOMB_X31_Y23_N28
\cpu_inst|DATAPATH|muxA_output[9]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[9]~56_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][9]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][9]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[9]~56_combout\);

-- Location: LCCOMB_X29_Y23_N14
\cpu_inst|DATAPATH|muxA_output[9]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[9]~57_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[9]~56_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[9]~56_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[9]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][9]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][9]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[9]~56_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[9]~57_combout\);

-- Location: LCCOMB_X30_Y25_N20
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~feeder_combout\ = \cpu_inst|DATAPATH|mux[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[9]~9_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~feeder_combout\);

-- Location: LCFF_X30_Y25_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~regout\);

-- Location: LCCOMB_X29_Y23_N12
\cpu_inst|DATAPATH|muxA_output[9]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[9]~58_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~regout\) # ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~regout\ & !\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][9]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][9]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[9]~58_combout\);

-- Location: LCCOMB_X29_Y23_N18
\cpu_inst|DATAPATH|muxA_output[9]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[9]~59_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[9]~58_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[9]~58_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[9]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][9]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][9]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[9]~58_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[9]~59_combout\);

-- Location: LCCOMB_X29_Y23_N8
\cpu_inst|DATAPATH|muxA_output[9]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[9]~60_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[9]~59_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[9]~57_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[9]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[9]~57_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[9]~59_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[9]~60_combout\);

-- Location: LCCOMB_X30_Y23_N22
\cpu_inst|DATAPATH|muxA_output[9]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[9]~61_combout\ = (\cpu_inst|DATAPATH|muxA_output[9]~60_combout\) # ((\cpu_inst|offset\(9) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(9),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[9]~60_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[9]~61_combout\);

-- Location: LCCOMB_X30_Y23_N24
\cpu_inst|DATAPATH|ALU|Sum[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[9]~11_combout\ = (\cpu_inst|DATAPATH|muxA_output[9]~61_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|muxB_output[9]~62_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[9]~61_combout\ & (\cpu_inst|DATAPATH|muxB_output[9]~62_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|muxB_output[9]~62_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[9]~61_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[9]~11_combout\);

-- Location: LCCOMB_X30_Y23_N10
\cpu_inst|DATAPATH|ALU|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~55_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & ((!\cpu_inst|DATAPATH|muxA_output[9]~61_combout\))) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- (\cpu_inst|DATAPATH|ALU|Sum[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[9]~11_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[9]~61_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~55_combout\);

-- Location: LCCOMB_X33_Y23_N20
\cpu_inst|DATAPATH|ALU|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~59_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~55_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~57_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~55_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~59_combout\);

-- Location: LCFF_X33_Y23_N21
\cpu_inst|Dout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~59_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(9));

-- Location: LCCOMB_X31_Y21_N2
\cpu_inst|Mux151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux151~0_combout\ = (!\cpu_inst|upc\(0) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & (!\cpu_inst|upc\(1) & \memory_inst|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \cpu_inst|upc\(1),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \cpu_inst|Mux151~0_combout\);

-- Location: LCFF_X31_Y21_N3
\cpu_inst|rb[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux151~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|rb[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|rb\(0));

-- Location: LCFF_X29_Y22_N1
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]~regout\);

-- Location: LCCOMB_X29_Y23_N4
\cpu_inst|DATAPATH|muxB_output[8]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[8]~54_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~regout\) # ((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & (((!\cpu_inst|rb\(0) & \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][8]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][8]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[8]~54_combout\);

-- Location: LCCOMB_X29_Y23_N6
\cpu_inst|DATAPATH|muxB_output[8]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[8]~55_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[8]~54_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[8]~54_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[8]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][8]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|DATAPATH|muxB_output[8]~54_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][8]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[8]~55_combout\);

-- Location: LCFF_X31_Y23_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[8]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]~regout\);

-- Location: LCCOMB_X31_Y23_N6
\cpu_inst|DATAPATH|muxB_output[8]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[8]~51_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][8]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][8]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[8]~51_combout\);

-- Location: LCCOMB_X30_Y23_N30
\cpu_inst|DATAPATH|muxB_output[8]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[8]~52_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[8]~51_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[8]~51_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~regout\)))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[8]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][8]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][8]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[8]~51_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[8]~52_combout\);

-- Location: LCCOMB_X30_Y23_N12
\cpu_inst|DATAPATH|muxB_output[8]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[8]~53_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(8)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[8]~52_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[8]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(8),
	datad => \cpu_inst|DATAPATH|muxB_output[8]~52_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[8]~53_combout\);

-- Location: LCCOMB_X30_Y23_N14
\cpu_inst|DATAPATH|muxB_output[8]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[8]~56_combout\ = (\cpu_inst|DATAPATH|muxB_output[8]~53_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[8]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[8]~55_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[8]~53_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[8]~56_combout\);

-- Location: LCCOMB_X30_Y23_N0
\cpu_inst|DATAPATH|ALU|Sum[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[8]~10_combout\ = (\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[8]~56_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[8]~55_combout\ & (\cpu_inst|DATAPATH|muxB_output[8]~56_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datab => \cpu_inst|DATAPATH|muxB_output[8]~56_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[8]~55_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[8]~10_combout\);

-- Location: LCCOMB_X30_Y23_N2
\cpu_inst|DATAPATH|ALU|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~50_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[8]~55_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[8]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[8]~55_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[8]~10_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~50_combout\);

-- Location: LCCOMB_X33_Y23_N24
\cpu_inst|DATAPATH|ALU|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~54_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~50_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~50_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~52_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~54_combout\);

-- Location: LCFF_X33_Y23_N1
\cpu_inst|Dout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~54_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(8));

-- Location: LCCOMB_X31_Y25_N24
\cpu_inst|Mux162~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux162~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (\memory_inst|altsyncram_component|auto_generated|q_a\(11))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & 
-- ((\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (\memory_inst|altsyncram_component|auto_generated|q_a\(11))) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(12) & ((\memory_inst|altsyncram_component|auto_generated|q_a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(8),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|Mux162~0_combout\);

-- Location: LCFF_X31_Y25_N25
\cpu_inst|offset[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux162~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|offset[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(11));

-- Location: LCFF_X36_Y23_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]~regout\);

-- Location: LCCOMB_X36_Y23_N20
\cpu_inst|DATAPATH|muxB_output[15]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[15]~93_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]~regout\) # ((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]~regout\ & !\cpu_inst|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][15]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][15]~regout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[15]~93_combout\);

-- Location: LCCOMB_X36_Y23_N18
\cpu_inst|DATAPATH|muxB_output[15]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[15]~94_combout\ = (\cpu_inst|DATAPATH|muxB_output[15]~93_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~regout\) # (!\cpu_inst|rb\(1))))) # (!\cpu_inst|DATAPATH|muxB_output[15]~93_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~regout\ & ((\cpu_inst|rb\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][15]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][15]~regout\,
	datac => \cpu_inst|DATAPATH|muxB_output[15]~93_combout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[15]~94_combout\);

-- Location: LCCOMB_X36_Y23_N8
\cpu_inst|DATAPATH|muxB_output[15]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[15]~95_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(11)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[15]~94_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[15]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|offset\(11),
	datac => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[15]~94_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[15]~95_combout\);

-- Location: LCCOMB_X36_Y25_N24
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~feeder_combout\ = \cpu_inst|DATAPATH|mux[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~feeder_combout\);

-- Location: LCFF_X36_Y25_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~regout\);

-- Location: LCFF_X33_Y25_N11
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[15]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]~regout\);

-- Location: LCCOMB_X35_Y25_N2
\cpu_inst|DATAPATH|muxB_output[15]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[15]~96_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~regout\)) # (!\cpu_inst|rb\(1) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][15]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][15]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[15]~96_combout\);

-- Location: LCCOMB_X35_Y25_N16
\cpu_inst|DATAPATH|muxB_output[15]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[15]~97_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[15]~96_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[15]~96_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[15]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][15]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][15]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[15]~96_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[15]~97_combout\);

-- Location: LCCOMB_X35_Y23_N2
\cpu_inst|DATAPATH|muxB_output[15]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[15]~98_combout\ = (\cpu_inst|DATAPATH|muxB_output[15]~95_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[15]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[15]~95_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[15]~97_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[15]~98_combout\);

-- Location: LCCOMB_X34_Y23_N12
\cpu_inst|DATAPATH|ALU|Sum[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[15]~17_combout\ = (\cpu_inst|DATAPATH|muxA_output[15]~97_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[15]~98_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[15]~97_combout\ & (\cpu_inst|DATAPATH|muxB_output[15]~98_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[15]~97_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[15]~98_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[15]~17_combout\);

-- Location: LCCOMB_X34_Y23_N18
\cpu_inst|DATAPATH|ALU|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~85_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[15]~97_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[15]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[15]~97_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[15]~17_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~85_combout\);

-- Location: LCCOMB_X34_Y25_N18
\cpu_inst|DATAPATH|ALU|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~86_combout\ = (!\cpu_inst|Op\(2) & (\cpu_inst|Op\(0) $ (\cpu_inst|DATAPATH|muxB_output[15]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datac => \cpu_inst|Op\(2),
	datad => \cpu_inst|DATAPATH|muxB_output[15]~98_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~86_combout\);

-- Location: LCCOMB_X33_Y23_N16
\cpu_inst|DATAPATH|ALU|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~87_combout\ = \cpu_inst|DATAPATH|ALU|Add0~86_combout\ $ (\cpu_inst|DATAPATH|ALU|Add0~83\ $ (!\cpu_inst|DATAPATH|muxA_output[15]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|ALU|Add0~86_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[15]~97_combout\,
	cin => \cpu_inst|DATAPATH|ALU|Add0~83\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~87_combout\);

-- Location: LCCOMB_X34_Y23_N14
\cpu_inst|DATAPATH|ALU|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~89_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~85_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~85_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~87_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~89_combout\);

-- Location: LCFF_X34_Y23_N15
\cpu_inst|N_Flag_Latched\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~89_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Mux174~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|N_Flag_Latched~regout\);

-- Location: LCCOMB_X31_Y21_N22
\cpu_inst|offset[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[4]~0_combout\ = (\memory_inst|altsyncram_component|auto_generated|q_a\(12) & (((!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & !\cpu_inst|N_Flag_Latched~regout\)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \cpu_inst|N_Flag_Latched~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \cpu_inst|offset[4]~0_combout\);

-- Location: LCCOMB_X30_Y23_N6
\cpu_inst|offset[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|offset[4]~3_combout\ = (\cpu_inst|offset[4]~2_combout\ & (!\cpu_inst|offset[4]~0_combout\ & ((\memory_inst|altsyncram_component|auto_generated|q_a\(12)) # (!\cpu_inst|offset[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset[4]~1_combout\,
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \cpu_inst|offset[4]~2_combout\,
	datad => \cpu_inst|offset[4]~0_combout\,
	combout => \cpu_inst|offset[4]~3_combout\);

-- Location: LCFF_X30_Y23_N9
\cpu_inst|offset[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(7));

-- Location: LCCOMB_X34_Y21_N30
\cpu_inst|DATAPATH|muxA_output[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[7]~46_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][7]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][7]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[7]~46_combout\);

-- Location: LCCOMB_X33_Y21_N14
\cpu_inst|DATAPATH|muxA_output[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[7]~47_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[7]~46_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[7]~46_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[7]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][7]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][7]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[7]~46_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[7]~47_combout\);

-- Location: LCCOMB_X32_Y24_N4
\cpu_inst|DATAPATH|muxA_output[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[7]~44_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]~regout\)) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][7]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][7]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[7]~44_combout\);

-- Location: LCCOMB_X31_Y24_N16
\cpu_inst|DATAPATH|muxA_output[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[7]~45_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[7]~44_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[7]~44_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[7]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][7]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][7]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[7]~44_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[7]~45_combout\);

-- Location: LCCOMB_X32_Y21_N18
\cpu_inst|DATAPATH|muxA_output[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[7]~48_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[7]~45_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & \cpu_inst|DATAPATH|muxA_output[7]~47_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[7]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[7]~47_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[7]~45_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[7]~48_combout\);

-- Location: LCCOMB_X32_Y21_N8
\cpu_inst|DATAPATH|muxA_output[7]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[7]~49_combout\ = (\cpu_inst|DATAPATH|muxA_output[7]~48_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datab => \cpu_inst|offset\(7),
	datad => \cpu_inst|DATAPATH|muxA_output[7]~48_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[7]~49_combout\);

-- Location: LCCOMB_X32_Y21_N2
\cpu_inst|DATAPATH|ALU|Sum[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[7]~9_combout\ = (\cpu_inst|DATAPATH|muxA_output[7]~49_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|muxB_output[7]~50_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[7]~49_combout\ & (\cpu_inst|DATAPATH|muxB_output[7]~50_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[7]~49_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[7]~50_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[7]~9_combout\);

-- Location: LCCOMB_X32_Y21_N16
\cpu_inst|DATAPATH|ALU|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~42_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[7]~49_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[7]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[7]~49_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[7]~9_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~42_combout\);

-- Location: LCCOMB_X33_Y23_N22
\cpu_inst|DATAPATH|ALU|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~46_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~42_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~42_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~44_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~46_combout\);

-- Location: LCFF_X33_Y23_N5
\cpu_inst|address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~46_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(7));

-- Location: LCCOMB_X33_Y22_N28
\cpu_inst|Mux147~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux147~0_combout\ = (\cpu_inst|ra[0]~1_combout\ & (((\memory_inst|altsyncram_component|auto_generated|q_a\(7))))) # (!\cpu_inst|ra[0]~1_combout\ & (!\memory_inst|altsyncram_component|auto_generated|q_a\(13) & 
-- ((\memory_inst|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \cpu_inst|ra[0]~1_combout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \cpu_inst|Mux147~0_combout\);

-- Location: LCFF_X33_Y22_N29
\cpu_inst|instr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(7));

-- Location: LCCOMB_X33_Y22_N14
\cpu_inst|Mux147~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux147~1_combout\ = (\cpu_inst|Mux148~0_combout\ & ((\cpu_inst|upc\(1) & ((\cpu_inst|instr_reg\(7)))) # (!\cpu_inst|upc\(1) & (\cpu_inst|Mux147~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(1),
	datab => \cpu_inst|Mux148~0_combout\,
	datac => \cpu_inst|Mux147~0_combout\,
	datad => \cpu_inst|instr_reg\(7),
	combout => \cpu_inst|Mux147~1_combout\);

-- Location: LCFF_X33_Y22_N15
\cpu_inst|ra[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux147~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|ra[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|ra\(1));

-- Location: LCCOMB_X32_Y22_N10
\cpu_inst|DATAPATH|ra_mux[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ra_mux[1]~1_combout\ = (\cpu_inst|ra\(1)) # (\cpu_inst|bypassB~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|ra\(1),
	datad => \cpu_inst|bypassB~regout\,
	combout => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\);

-- Location: LCCOMB_X32_Y24_N0
\cpu_inst|DATAPATH|muxA_output[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[6]~38_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]~regout\) # (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][6]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][6]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[6]~38_combout\);

-- Location: LCCOMB_X32_Y24_N6
\cpu_inst|DATAPATH|muxA_output[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[6]~39_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[6]~38_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[6]~38_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][6]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][6]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[6]~38_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[6]~39_combout\);

-- Location: LCFF_X30_Y24_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]~regout\);

-- Location: LCFF_X31_Y25_N19
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]~regout\);

-- Location: LCCOMB_X33_Y25_N28
\cpu_inst|DATAPATH|muxA_output[6]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[6]~40_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]~regout\) # (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][6]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][6]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[6]~40_combout\);

-- Location: LCCOMB_X33_Y25_N26
\cpu_inst|DATAPATH|muxA_output[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[6]~41_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[6]~40_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[6]~40_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[6]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][6]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][6]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[6]~40_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[6]~41_combout\);

-- Location: LCCOMB_X33_Y24_N6
\cpu_inst|DATAPATH|muxA_output[6]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[6]~42_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[6]~41_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[6]~39_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[6]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[6]~39_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[6]~41_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[6]~42_combout\);

-- Location: LCCOMB_X33_Y24_N0
\cpu_inst|DATAPATH|muxA_output[6]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[6]~43_combout\ = (\cpu_inst|DATAPATH|muxA_output[6]~42_combout\) # ((\cpu_inst|offset\(6) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(6),
	datac => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[6]~42_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[6]~43_combout\);

-- Location: LCCOMB_X34_Y25_N6
\cpu_inst|DATAPATH|ALU|Sum[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[6]~7_combout\ = (\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|muxB_output[6]~43_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[6]~43_combout\ & (\cpu_inst|DATAPATH|muxB_output[6]~43_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[6]~43_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[6]~43_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[6]~7_combout\);

-- Location: LCCOMB_X34_Y25_N20
\cpu_inst|DATAPATH|ALU|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~35_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[6]~43_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[6]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[6]~43_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[6]~7_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~35_combout\);

-- Location: LCCOMB_X34_Y25_N30
\cpu_inst|DATAPATH|ALU|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~39_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~35_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~35_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~37_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~39_combout\);

-- Location: LCFF_X34_Y25_N31
\cpu_inst|address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~39_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(6));

-- Location: LCFF_X33_Y22_N25
\cpu_inst|instr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(6));

-- Location: LCCOMB_X33_Y22_N0
\cpu_inst|Mux148~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux148~2_combout\ = (\cpu_inst|Mux148~0_combout\ & ((\cpu_inst|upc\(1) & ((\cpu_inst|instr_reg\(6)))) # (!\cpu_inst|upc\(1) & (\cpu_inst|Mux148~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux148~1_combout\,
	datab => \cpu_inst|Mux148~0_combout\,
	datac => \cpu_inst|instr_reg\(6),
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux148~2_combout\);

-- Location: LCFF_X33_Y22_N1
\cpu_inst|ra[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux148~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|ra[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|ra\(0));

-- Location: LCCOMB_X32_Y22_N16
\cpu_inst|DATAPATH|ra_mux[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ra_mux[0]~0_combout\ = (\cpu_inst|ra\(0)) # (\cpu_inst|bypassB~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|ra\(0),
	datad => \cpu_inst|bypassB~regout\,
	combout => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\);

-- Location: LCCOMB_X33_Y25_N16
\cpu_inst|DATAPATH|mux[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[5]~5_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(5))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|ie~regout\,
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \cpu_inst|DATAPATH|ALU|Add0~32_combout\,
	combout => \cpu_inst|DATAPATH|mux[5]~5_combout\);

-- Location: LCFF_X33_Y25_N1
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]~regout\);

-- Location: LCFF_X33_Y25_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]~regout\);

-- Location: LCCOMB_X33_Y25_N12
\cpu_inst|DATAPATH|muxA_output[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[5]~34_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]~regout\) # ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]~regout\ & !\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[5]~34_combout\);

-- Location: LCCOMB_X33_Y25_N2
\cpu_inst|DATAPATH|muxA_output[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[5]~35_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[5]~34_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[5]~34_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[5]~34_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[5]~35_combout\);

-- Location: LCFF_X31_Y24_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]~regout\);

-- Location: LCFF_X31_Y24_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]~regout\);

-- Location: LCCOMB_X32_Y24_N18
\cpu_inst|DATAPATH|muxA_output[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[5]~32_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]~regout\)) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]~regout\,
	datac => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[5]~32_combout\);

-- Location: LCCOMB_X31_Y24_N20
\cpu_inst|DATAPATH|muxA_output[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[5]~33_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[5]~32_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[5]~32_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]~regout\,
	datab => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[5]~32_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[5]~33_combout\);

-- Location: LCCOMB_X33_Y24_N8
\cpu_inst|DATAPATH|muxA_output[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[5]~36_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[5]~35_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[5]~33_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[5]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[5]~35_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[5]~33_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[5]~36_combout\);

-- Location: LCCOMB_X34_Y24_N20
\cpu_inst|DATAPATH|muxA_output[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[5]~37_combout\ = (\cpu_inst|DATAPATH|muxA_output[5]~36_combout\) # ((\cpu_inst|offset\(5) & \cpu_inst|bypassA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|offset\(5),
	datab => \cpu_inst|bypassA~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[5]~36_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[5]~37_combout\);

-- Location: LCFF_X31_Y25_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]~regout\);

-- Location: LCCOMB_X31_Y25_N16
\cpu_inst|DATAPATH|muxB_output[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[5]~34_combout\ = (\cpu_inst|rb\(0) & (((\cpu_inst|rb\(1))))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]~regout\)) # (!\cpu_inst|rb\(1) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][5]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][5]~regout\,
	datad => \cpu_inst|rb\(1),
	combout => \cpu_inst|DATAPATH|muxB_output[5]~34_combout\);

-- Location: LCCOMB_X30_Y24_N22
\cpu_inst|DATAPATH|muxB_output[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[5]~35_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[5]~34_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[5]~34_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]~regout\))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][5]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|DATAPATH|muxB_output[5]~34_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][5]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[5]~35_combout\);

-- Location: LCFF_X30_Y24_N15
\cpu_inst|offset[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(5));

-- Location: LCFF_X32_Y24_N9
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]~regout\);

-- Location: LCCOMB_X32_Y24_N10
\cpu_inst|DATAPATH|muxB_output[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[5]~31_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][5]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][5]~regout\,
	datac => \cpu_inst|rb\(1),
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[5]~31_combout\);

-- Location: LCCOMB_X32_Y24_N8
\cpu_inst|DATAPATH|muxB_output[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[5]~32_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[5]~31_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[5]~31_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]~regout\)))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][5]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][5]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[5]~31_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[5]~32_combout\);

-- Location: LCCOMB_X30_Y24_N14
\cpu_inst|DATAPATH|muxB_output[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[5]~33_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(5)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[5]~32_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(5),
	datad => \cpu_inst|DATAPATH|muxB_output[5]~32_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[5]~33_combout\);

-- Location: LCCOMB_X30_Y24_N12
\cpu_inst|DATAPATH|muxB_output[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[5]~36_combout\ = (\cpu_inst|DATAPATH|muxB_output[5]~33_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[5]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datab => \cpu_inst|DATAPATH|muxB_output[5]~35_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[5]~33_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[5]~36_combout\);

-- Location: LCCOMB_X35_Y24_N4
\cpu_inst|DATAPATH|ALU|Sum[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[5]~5_combout\ = (\cpu_inst|DATAPATH|muxA_output[5]~37_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[5]~36_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[5]~37_combout\ & (\cpu_inst|DATAPATH|muxB_output[5]~36_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[5]~37_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[5]~36_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[5]~5_combout\);

-- Location: LCCOMB_X35_Y24_N10
\cpu_inst|DATAPATH|ALU|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~28_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[5]~37_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[5]~37_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~5_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~28_combout\);

-- Location: LCCOMB_X34_Y24_N6
\cpu_inst|DATAPATH|ALU|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~32_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~28_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~30_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~28_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~32_combout\);

-- Location: LCFF_X34_Y24_N17
\cpu_inst|address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~32_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(5));

-- Location: LCCOMB_X31_Y21_N16
\cpu_inst|Mux149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux149~0_combout\ = (!\cpu_inst|upc\(0) & (!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & (!\cpu_inst|upc\(1) & \memory_inst|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \cpu_inst|upc\(1),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \cpu_inst|Mux149~0_combout\);

-- Location: LCFF_X31_Y21_N17
\cpu_inst|rb[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux149~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|rb[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|rb\(2));

-- Location: LCCOMB_X31_Y25_N8
\cpu_inst|DATAPATH|muxB_output[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~2_combout\ = (\cpu_inst|readB~regout\ & (!\cpu_inst|rb\(2) & !\cpu_inst|bypassB~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|readB~regout\,
	datab => \cpu_inst|rb\(2),
	datad => \cpu_inst|bypassB~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\);

-- Location: LCFF_X30_Y24_N5
\cpu_inst|offset[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(4));

-- Location: LCFF_X31_Y24_N3
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[4]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]~regout\);

-- Location: LCCOMB_X31_Y24_N2
\cpu_inst|DATAPATH|muxB_output[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[4]~0_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][4]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][4]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[4]~0_combout\);

-- Location: LCCOMB_X31_Y24_N28
\cpu_inst|DATAPATH|muxB_output[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[4]~1_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[4]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[4]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][4]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][4]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[4]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[4]~1_combout\);

-- Location: LCCOMB_X30_Y24_N4
\cpu_inst|DATAPATH|muxB_output[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[4]~3_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(4)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[4]~1_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(4),
	datad => \cpu_inst|DATAPATH|muxB_output[4]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[4]~3_combout\);

-- Location: LCCOMB_X32_Y21_N22
\cpu_inst|DATAPATH|muxB_output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[4]~4_combout\ = (\cpu_inst|rb\(0) & (\cpu_inst|rb\(1))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]~regout\))) # (!\cpu_inst|rb\(1) & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][4]~regout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][4]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[4]~4_combout\);

-- Location: LCCOMB_X30_Y24_N26
\cpu_inst|DATAPATH|muxB_output[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[4]~5_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[4]~4_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[4]~4_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][4]~regout\,
	datab => \cpu_inst|rb\(0),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][4]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[4]~4_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[4]~5_combout\);

-- Location: LCCOMB_X30_Y24_N28
\cpu_inst|DATAPATH|muxB_output[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[4]~7_combout\ = (\cpu_inst|DATAPATH|muxB_output[4]~3_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[4]~3_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[4]~5_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[4]~7_combout\);

-- Location: LCCOMB_X35_Y24_N28
\cpu_inst|DATAPATH|ALU|Sum[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[4]~2_combout\ = (\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[4]~7_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[4]~7_combout\ & (\cpu_inst|DATAPATH|muxB_output[4]~7_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[4]~7_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[4]~7_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[4]~2_combout\);

-- Location: LCCOMB_X34_Y24_N14
\cpu_inst|DATAPATH|ALU|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~5_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[4]~7_combout\)) # (!\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & 
-- ((\cpu_inst|DATAPATH|ALU|Sum[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[4]~7_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[4]~2_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~5_combout\);

-- Location: LCCOMB_X34_Y24_N30
\cpu_inst|DATAPATH|ALU|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~24_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~5_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~5_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~21_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~24_combout\);

-- Location: LCFF_X34_Y24_N31
\cpu_inst|address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~24_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(4));

-- Location: LCFF_X27_Y23_N13
\cpu_inst|instr_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(12));

-- Location: LCCOMB_X29_Y24_N30
\cpu_inst|Mux56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux56~0_combout\ = (\cpu_inst|instr_reg\(14) & ((\cpu_inst|instr_reg\(15)) # ((\cpu_inst|instr_reg\(13) & \cpu_inst|instr_reg\(12))))) # (!\cpu_inst|instr_reg\(14) & (\cpu_inst|instr_reg\(13) & (\cpu_inst|instr_reg\(15) & 
-- \cpu_inst|instr_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(14),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(15),
	datad => \cpu_inst|instr_reg\(12),
	combout => \cpu_inst|Mux56~0_combout\);

-- Location: LCCOMB_X31_Y22_N0
\cpu_inst|Mux143~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux143~4_combout\ = (\cpu_inst|Mux143~3_combout\) # ((!\cpu_inst|Mux56~0_combout\ & (\cpu_inst|en_alu~regout\ & \cpu_inst|Mux143~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux143~3_combout\,
	datab => \cpu_inst|Mux56~0_combout\,
	datac => \cpu_inst|en_alu~regout\,
	datad => \cpu_inst|Mux143~0_combout\,
	combout => \cpu_inst|Mux143~4_combout\);

-- Location: LCFF_X31_Y22_N1
\cpu_inst|en_alu\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux143~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|ALT_INV_upc\(2),
	ena => \cpu_inst|upc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|en_alu~regout\);

-- Location: LCCOMB_X35_Y24_N12
\cpu_inst|DATAPATH|ALU|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~23_combout\ = (\cpu_inst|en_alu~regout\ & ((\cpu_inst|Op\(1) & (\cpu_inst|Op\(0) & \cpu_inst|Op\(2))) # (!\cpu_inst|Op\(1) & ((!\cpu_inst|Op\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(1),
	datac => \cpu_inst|en_alu~regout\,
	datad => \cpu_inst|Op\(2),
	combout => \cpu_inst|DATAPATH|ALU|Add0~23_combout\);

-- Location: LCCOMB_X33_Y21_N20
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~feeder_combout\ = \cpu_inst|DATAPATH|mux[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~feeder_combout\);

-- Location: LCFF_X33_Y21_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~regout\);

-- Location: LCFF_X32_Y21_N7
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[3]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]~regout\);

-- Location: LCCOMB_X32_Y21_N26
\cpu_inst|DATAPATH|muxA_output[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[3]~10_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]~regout\)) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][3]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][3]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[3]~10_combout\);

-- Location: LCCOMB_X32_Y21_N20
\cpu_inst|DATAPATH|muxA_output[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[3]~11_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[3]~10_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[3]~10_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][3]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][3]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[3]~10_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[3]~11_combout\);

-- Location: LCCOMB_X32_Y24_N28
\cpu_inst|DATAPATH|muxA_output[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[3]~8_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][3]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][3]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[3]~8_combout\);

-- Location: LCCOMB_X32_Y24_N26
\cpu_inst|DATAPATH|muxA_output[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[3]~9_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[3]~8_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[3]~8_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][3]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][3]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[3]~8_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[3]~9_combout\);

-- Location: LCCOMB_X32_Y21_N30
\cpu_inst|DATAPATH|muxA_output[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[3]~12_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & ((\cpu_inst|DATAPATH|muxA_output[3]~11_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & \cpu_inst|DATAPATH|muxA_output[3]~9_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[3]~11_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[3]~9_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[3]~12_combout\);

-- Location: LCCOMB_X32_Y21_N24
\cpu_inst|DATAPATH|muxA_output[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[3]~13_combout\ = (\cpu_inst|DATAPATH|muxA_output[3]~12_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datac => \cpu_inst|offset\(3),
	datad => \cpu_inst|DATAPATH|muxA_output[3]~12_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[3]~13_combout\);

-- Location: LCCOMB_X32_Y21_N14
\cpu_inst|DATAPATH|ALU|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~47_combout\ = (\cpu_inst|DATAPATH|muxA_output[3]~13_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[3]~13_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[3]~13_combout\ & (\cpu_inst|DATAPATH|muxB_output[3]~13_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[3]~13_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[3]~13_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~47_combout\);

-- Location: LCCOMB_X33_Y24_N14
\cpu_inst|DATAPATH|ALU|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~48_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~47_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & \cpu_inst|DATAPATH|ALU|Add0~19_combout\)))) # 
-- (!\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~25_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~19_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~47_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~48_combout\);

-- Location: LCCOMB_X34_Y24_N18
\cpu_inst|DATAPATH|ALU|Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~49_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~48_combout\) # ((!\cpu_inst|DATAPATH|muxA_output[3]~13_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[3]~13_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~48_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~49_combout\);

-- Location: LCFF_X34_Y24_N3
\cpu_inst|address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~49_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(3));

-- Location: LCFF_X31_Y25_N9
\cpu_inst|offset[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \memory_inst|altsyncram_component|auto_generated|q_a\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|offset[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|offset\(2));

-- Location: LCCOMB_X35_Y25_N26
\cpu_inst|DATAPATH|mux[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|mux[2]~2_combout\ = (\cpu_inst|ie~regout\ & (\memory_inst|altsyncram_component|auto_generated|q_a\(2))) # (!\cpu_inst|ie~regout\ & ((\cpu_inst|DATAPATH|ALU|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|ie~regout\,
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \cpu_inst|DATAPATH|ALU|Add0~41_combout\,
	combout => \cpu_inst|DATAPATH|mux[2]~2_combout\);

-- Location: LCCOMB_X36_Y25_N12
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~feeder_combout\ = \cpu_inst|DATAPATH|mux[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~feeder_combout\);

-- Location: LCFF_X36_Y25_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~regout\);

-- Location: LCFF_X35_Y24_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]~regout\);

-- Location: LCCOMB_X35_Y21_N8
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~feeder_combout\ = \cpu_inst|DATAPATH|mux[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~feeder_combout\);

-- Location: LCFF_X35_Y21_N9
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~regout\);

-- Location: LCCOMB_X35_Y24_N20
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~feeder_combout\ = \cpu_inst|DATAPATH|mux[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~feeder_combout\);

-- Location: LCFF_X35_Y24_N21
\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~regout\);

-- Location: LCCOMB_X35_Y24_N0
\cpu_inst|DATAPATH|muxA_output[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[2]~16_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~regout\) # (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~regout\ & ((!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[2]~16_combout\);

-- Location: LCCOMB_X35_Y24_N14
\cpu_inst|DATAPATH|muxA_output[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[2]~17_combout\ = (\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & ((\cpu_inst|DATAPATH|muxA_output[2]~16_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~regout\)) # (!\cpu_inst|DATAPATH|muxA_output[2]~16_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]~regout\))))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (((\cpu_inst|DATAPATH|muxA_output[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[2]~16_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[2]~17_combout\);

-- Location: LCFF_X31_Y24_N9
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]~regout\);

-- Location: LCCOMB_X35_Y25_N12
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~feeder_combout\ = \cpu_inst|DATAPATH|mux[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~feeder_combout\);

-- Location: LCFF_X35_Y25_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~regout\);

-- Location: LCFF_X31_Y24_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]~regout\);

-- Location: LCFF_X32_Y24_N25
\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[2]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]~regout\);

-- Location: LCCOMB_X32_Y24_N24
\cpu_inst|DATAPATH|muxA_output[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[2]~14_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]~regout\))) # (!\cpu_inst|DATAPATH|ra_mux[0]~0_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]~regout\,
	datad => \cpu_inst|DATAPATH|ra_mux[0]~0_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[2]~14_combout\);

-- Location: LCCOMB_X35_Y24_N6
\cpu_inst|DATAPATH|muxA_output[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[2]~15_combout\ = (\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & ((\cpu_inst|DATAPATH|muxA_output[2]~14_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~regout\))) # (!\cpu_inst|DATAPATH|muxA_output[2]~14_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]~regout\)))) # (!\cpu_inst|DATAPATH|ra_mux[1]~1_combout\ & (((\cpu_inst|DATAPATH|muxA_output[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ra_mux[1]~1_combout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~regout\,
	datad => \cpu_inst|DATAPATH|muxA_output[2]~14_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[2]~15_combout\);

-- Location: LCCOMB_X35_Y24_N18
\cpu_inst|DATAPATH|muxA_output[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[2]~18_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & ((\cpu_inst|DATAPATH|muxA_output[2]~15_combout\) # ((\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & \cpu_inst|DATAPATH|muxA_output[2]~17_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~4_combout\ & (\cpu_inst|DATAPATH|muxA_output[0]~5_combout\ & (\cpu_inst|DATAPATH|muxA_output[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~4_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[0]~5_combout\,
	datac => \cpu_inst|DATAPATH|muxA_output[2]~17_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[2]~15_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[2]~18_combout\);

-- Location: LCCOMB_X34_Y24_N24
\cpu_inst|DATAPATH|muxA_output[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxA_output[2]~19_combout\ = (\cpu_inst|DATAPATH|muxA_output[2]~18_combout\) # ((\cpu_inst|bypassA~regout\ & \cpu_inst|offset\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassA~regout\,
	datac => \cpu_inst|offset\(2),
	datad => \cpu_inst|DATAPATH|muxA_output[2]~18_combout\,
	combout => \cpu_inst|DATAPATH|muxA_output[2]~19_combout\);

-- Location: LCCOMB_X35_Y24_N22
\cpu_inst|DATAPATH|ALU|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~25_combout\ = (\cpu_inst|en_alu~regout\ & ((\cpu_inst|Op\(2) & (!\cpu_inst|Op\(0))) # (!\cpu_inst|Op\(2) & ((\cpu_inst|Op\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(1),
	datac => \cpu_inst|en_alu~regout\,
	datad => \cpu_inst|Op\(2),
	combout => \cpu_inst|DATAPATH|ALU|Add0~25_combout\);

-- Location: LCCOMB_X31_Y24_N14
\cpu_inst|DATAPATH|muxB_output[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[2]~14_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][2]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][2]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[2]~14_combout\);

-- Location: LCCOMB_X31_Y24_N8
\cpu_inst|DATAPATH|muxB_output[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[2]~15_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[2]~14_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[2]~14_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]~regout\)))) # (!\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|muxB_output[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|muxB_output[2]~14_combout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][2]~regout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][2]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[2]~15_combout\);

-- Location: LCCOMB_X30_Y24_N24
\cpu_inst|DATAPATH|muxB_output[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[2]~16_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(2)) # ((\cpu_inst|DATAPATH|muxB_output[2]~15_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~2_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[2]~15_combout\ & ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[2]~15_combout\,
	datac => \cpu_inst|offset\(2),
	datad => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[2]~16_combout\);

-- Location: LCCOMB_X35_Y21_N10
\cpu_inst|DATAPATH|muxB_output[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[2]~17_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0)) # (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~regout\)))) # (!\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~regout\ & (!\cpu_inst|rb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][2]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][2]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[2]~17_combout\);

-- Location: LCCOMB_X36_Y25_N26
\cpu_inst|DATAPATH|muxB_output[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[2]~18_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[2]~17_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[2]~17_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]~regout\))))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][2]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][2]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[2]~17_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[2]~18_combout\);

-- Location: LCCOMB_X35_Y24_N16
\cpu_inst|DATAPATH|muxB_output[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[2]~44_combout\ = (\cpu_inst|DATAPATH|muxB_output[2]~16_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[2]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[2]~16_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[2]~18_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[2]~44_combout\);

-- Location: LCCOMB_X35_Y24_N26
\cpu_inst|DATAPATH|ALU|Sum[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[2]~8_combout\ = (\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[2]~44_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & (\cpu_inst|DATAPATH|muxB_output[2]~44_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[2]~44_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[2]~19_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[2]~8_combout\);

-- Location: LCCOMB_X34_Y24_N10
\cpu_inst|DATAPATH|ALU|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~40_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~17_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & \cpu_inst|DATAPATH|ALU|Sum[2]~8_combout\)))) # 
-- (!\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~25_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[2]~8_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~17_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~40_combout\);

-- Location: LCCOMB_X34_Y25_N12
\cpu_inst|DATAPATH|ALU|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~41_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~40_combout\) # ((\cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ & (!\cpu_inst|DATAPATH|muxA_output[2]~19_combout\ & \cpu_inst|DATAPATH|ALU|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datab => \cpu_inst|DATAPATH|muxA_output[2]~19_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~40_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~41_combout\);

-- Location: LCCOMB_X34_Y25_N16
\cpu_inst|address[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|address[2]~feeder_combout\ = \cpu_inst|DATAPATH|ALU|Add0~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|ALU|Add0~41_combout\,
	combout => \cpu_inst|address[2]~feeder_combout\);

-- Location: LCFF_X34_Y25_N17
\cpu_inst|address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|address[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(2));

-- Location: LCCOMB_X31_Y21_N0
\cpu_inst|Mux159~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux159~0_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & \memory_inst|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|Mux159~0_combout\);

-- Location: LCCOMB_X31_Y22_N14
\cpu_inst|Op[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[2]~1_combout\ = (!\memory_inst|altsyncram_component|auto_generated|q_a\(14) & (\memory_inst|altsyncram_component|auto_generated|q_a\(15) & ((!\memory_inst|altsyncram_component|auto_generated|q_a\(12)) # 
-- (!\memory_inst|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(12),
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \cpu_inst|Op[2]~1_combout\);

-- Location: LCCOMB_X31_Y22_N20
\cpu_inst|Op[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[2]~2_combout\ = (\cpu_inst|Op[2]~1_combout\) # ((\memory_inst|altsyncram_component|auto_generated|q_a\(14) & ((\cpu_inst|Mux14~1_combout\) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \cpu_inst|Op[2]~1_combout\,
	datac => \cpu_inst|Mux14~1_combout\,
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \cpu_inst|Op[2]~2_combout\);

-- Location: LCCOMB_X31_Y22_N2
\cpu_inst|Op[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[2]~3_combout\ = (!\cpu_inst|upc\(0) & ((\cpu_inst|Mux143~1_combout\) # ((!\cpu_inst|upc\(1) & \cpu_inst|Op[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux143~1_combout\,
	datab => \cpu_inst|upc\(1),
	datac => \cpu_inst|Op[2]~2_combout\,
	datad => \cpu_inst|upc\(0),
	combout => \cpu_inst|Op[2]~3_combout\);

-- Location: LCCOMB_X31_Y22_N12
\cpu_inst|Op[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[2]~4_combout\ = (\cpu_inst|upc\(2) & ((\cpu_inst|Op[2]~3_combout\) # ((\cpu_inst|Mux143~0_combout\ & !\cpu_inst|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(2),
	datab => \cpu_inst|Mux143~0_combout\,
	datac => \cpu_inst|Mux56~0_combout\,
	datad => \cpu_inst|Op[2]~3_combout\,
	combout => \cpu_inst|Op[2]~4_combout\);

-- Location: LCCOMB_X31_Y22_N22
\cpu_inst|Op[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Op[2]~5_combout\ = (\cpu_inst|Op[2]~4_combout\) # ((\cpu_inst|Op\(2) & ((\cpu_inst|Mux159~0_combout\) # (!\cpu_inst|Mux132~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Mux132~0_combout\,
	datab => \cpu_inst|Mux159~0_combout\,
	datac => \cpu_inst|Op\(2),
	datad => \cpu_inst|Op[2]~4_combout\,
	combout => \cpu_inst|Op[2]~5_combout\);

-- Location: LCFF_X31_Y22_N23
\cpu_inst|Op[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Op[2]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Op\(2));

-- Location: LCCOMB_X32_Y24_N30
\cpu_inst|DATAPATH|ALU|Sum[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\ = (\cpu_inst|Op\(2) & \cpu_inst|Op\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|Op\(2),
	datad => \cpu_inst|Op\(0),
	combout => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\);

-- Location: LCCOMB_X32_Y21_N4
\cpu_inst|DATAPATH|muxB_output[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[1]~22_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]~regout\) # ((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]~regout\ & !\cpu_inst|rb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][1]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][1]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[1]~22_combout\);

-- Location: LCCOMB_X32_Y23_N28
\cpu_inst|DATAPATH|muxB_output[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[1]~23_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[1]~22_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[1]~22_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][1]~regout\,
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][1]~regout\,
	datac => \cpu_inst|rb\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[1]~22_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[1]~23_combout\);

-- Location: LCCOMB_X31_Y24_N22
\cpu_inst|DATAPATH|muxB_output[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[1]~19_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][1]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][1]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[1]~19_combout\);

-- Location: LCCOMB_X31_Y24_N0
\cpu_inst|DATAPATH|muxB_output[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[1]~20_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[1]~19_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[1]~19_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][1]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][1]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[1]~19_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[1]~20_combout\);

-- Location: LCCOMB_X31_Y25_N6
\cpu_inst|DATAPATH|muxB_output[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[1]~21_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(1)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[1]~20_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(1),
	datad => \cpu_inst|DATAPATH|muxB_output[1]~20_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[1]~21_combout\);

-- Location: LCCOMB_X35_Y24_N24
\cpu_inst|DATAPATH|muxB_output[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[1]~37_combout\ = (\cpu_inst|DATAPATH|muxB_output[1]~21_combout\) # ((\cpu_inst|DATAPATH|muxB_output[0]~6_combout\ & \cpu_inst|DATAPATH|muxB_output[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~6_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[1]~23_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[1]~21_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[1]~37_combout\);

-- Location: LCCOMB_X35_Y24_N30
\cpu_inst|DATAPATH|ALU|Sum[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[1]~6_combout\ = (\cpu_inst|DATAPATH|muxA_output[1]~25_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|muxB_output[1]~37_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[1]~25_combout\ & (\cpu_inst|DATAPATH|muxB_output[1]~37_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[1]~37_combout\,
	datad => \cpu_inst|DATAPATH|muxA_output[1]~25_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[1]~6_combout\);

-- Location: LCCOMB_X34_Y24_N0
\cpu_inst|DATAPATH|ALU|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~33_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~15_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & \cpu_inst|DATAPATH|ALU|Sum[1]~6_combout\)))) # 
-- (!\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~25_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~15_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[1]~6_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~33_combout\);

-- Location: LCCOMB_X34_Y24_N4
\cpu_inst|DATAPATH|ALU|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~34_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~33_combout\) # ((!\cpu_inst|DATAPATH|muxA_output[1]~25_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[1]~25_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~33_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~34_combout\);

-- Location: LCFF_X34_Y24_N5
\cpu_inst|address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~34_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(1));

-- Location: LCCOMB_X27_Y23_N18
\cpu_inst|instr_reg[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|instr_reg[13]~feeder_combout\ = \memory_inst|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \cpu_inst|instr_reg[13]~feeder_combout\);

-- Location: LCFF_X27_Y23_N19
\cpu_inst|instr_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|instr_reg[13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|instr_reg\(13));

-- Location: LCCOMB_X27_Y23_N2
\cpu_inst|address[13]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|address[13]~3_combout\ = (\cpu_inst|instr_reg\(14) & ((\cpu_inst|instr_reg\(15)) # ((\cpu_inst|instr_reg\(12) & \cpu_inst|instr_reg\(13))))) # (!\cpu_inst|instr_reg\(14) & (\cpu_inst|instr_reg\(12) & (\cpu_inst|instr_reg\(13) & 
-- \cpu_inst|instr_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|instr_reg\(12),
	datab => \cpu_inst|instr_reg\(13),
	datac => \cpu_inst|instr_reg\(14),
	datad => \cpu_inst|instr_reg\(15),
	combout => \cpu_inst|address[13]~3_combout\);

-- Location: LCCOMB_X27_Y23_N28
\cpu_inst|address[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|address[13]~2_combout\ = ((!\cpu_inst|upc\(1) & ((\cpu_inst|address[13]~1_combout\) # (!\cpu_inst|upc\(0))))) # (!\cpu_inst|upc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address[13]~1_combout\,
	datab => \cpu_inst|upc\(0),
	datac => \cpu_inst|upc\(2),
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|address[13]~2_combout\);

-- Location: LCCOMB_X27_Y23_N24
\cpu_inst|address[13]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|address[13]~4_combout\ = (!\cpu_inst|address[13]~0_combout\ & (!\cpu_inst|address[13]~2_combout\ & ((\cpu_inst|upc\(0)) # (!\cpu_inst|address[13]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address[13]~0_combout\,
	datab => \cpu_inst|address[13]~3_combout\,
	datac => \cpu_inst|upc\(0),
	datad => \cpu_inst|address[13]~2_combout\,
	combout => \cpu_inst|address[13]~4_combout\);

-- Location: LCFF_X34_Y24_N27
\cpu_inst|address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~27_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(0));

-- Location: LCCOMB_X28_Y25_N20
\cpu_inst|Mux156~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux156~0_combout\ = (\cpu_inst|upc\(0)) # ((\cpu_inst|upc\(1)) # ((!\memory_inst|altsyncram_component|auto_generated|q_a\(15) & \memory_inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|upc\(0),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \memory_inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \cpu_inst|upc\(1),
	combout => \cpu_inst|Mux156~0_combout\);

-- Location: LCCOMB_X28_Y25_N2
\cpu_inst|Mux156~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|Mux156~1_combout\ = (\cpu_inst|Mux156~0_combout\) # ((\memory_inst|altsyncram_component|auto_generated|q_a\(15) & ((\cpu_inst|Mux14~1_combout\) # (!\memory_inst|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory_inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \memory_inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \cpu_inst|Mux156~0_combout\,
	datad => \cpu_inst|Mux14~1_combout\,
	combout => \cpu_inst|Mux156~1_combout\);

-- Location: LCFF_X28_Y25_N3
\cpu_inst|Op[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|Mux156~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|Op[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Op\(1));

-- Location: LCCOMB_X35_Y24_N8
\cpu_inst|DATAPATH|ALU|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~4_combout\ = (\cpu_inst|en_alu~regout\ & ((\cpu_inst|Op\(1) & ((!\cpu_inst|Op\(2)) # (!\cpu_inst|Op\(0)))) # (!\cpu_inst|Op\(1) & ((\cpu_inst|Op\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|Op\(0),
	datab => \cpu_inst|Op\(1),
	datac => \cpu_inst|en_alu~regout\,
	datad => \cpu_inst|Op\(2),
	combout => \cpu_inst|DATAPATH|ALU|Add0~4_combout\);

-- Location: LCFF_X31_Y24_N13
\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]~regout\);

-- Location: LCFF_X31_Y24_N27
\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]~regout\);

-- Location: LCCOMB_X31_Y24_N26
\cpu_inst|DATAPATH|muxB_output[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~27_combout\ = (\cpu_inst|rb\(1) & (((\cpu_inst|rb\(0))))) # (!\cpu_inst|rb\(1) & ((\cpu_inst|rb\(0) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]~regout\)) # (!\cpu_inst|rb\(0) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|REGISTER_FILE|regs[1][0]~regout\,
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[0][0]~regout\,
	datad => \cpu_inst|rb\(0),
	combout => \cpu_inst|DATAPATH|muxB_output[0]~27_combout\);

-- Location: LCCOMB_X31_Y24_N12
\cpu_inst|DATAPATH|muxB_output[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~28_combout\ = (\cpu_inst|rb\(1) & ((\cpu_inst|DATAPATH|muxB_output[0]~27_combout\ & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]~regout\)) # (!\cpu_inst|DATAPATH|muxB_output[0]~27_combout\ & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]~regout\))))) # (!\cpu_inst|rb\(1) & (((\cpu_inst|DATAPATH|muxB_output[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(1),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[3][0]~regout\,
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[2][0]~regout\,
	datad => \cpu_inst|DATAPATH|muxB_output[0]~27_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~28_combout\);

-- Location: LCCOMB_X31_Y25_N12
\cpu_inst|DATAPATH|muxB_output[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~29_combout\ = (\cpu_inst|bypassB~regout\ & ((\cpu_inst|offset\(0)) # ((\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & \cpu_inst|DATAPATH|muxB_output[0]~28_combout\)))) # (!\cpu_inst|bypassB~regout\ & 
-- (\cpu_inst|DATAPATH|muxB_output[0]~2_combout\ & ((\cpu_inst|DATAPATH|muxB_output[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|DATAPATH|muxB_output[0]~2_combout\,
	datac => \cpu_inst|offset\(0),
	datad => \cpu_inst|DATAPATH|muxB_output[0]~28_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~29_combout\);

-- Location: LCFF_X32_Y25_N15
\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]~regout\);

-- Location: LCCOMB_X34_Y22_N22
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~feeder_combout\ = \cpu_inst|DATAPATH|mux[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|DATAPATH|mux[0]~4_combout\,
	combout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~feeder_combout\);

-- Location: LCFF_X34_Y22_N23
\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|DATAPATH|REGISTER_FILE|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~regout\);

-- Location: LCCOMB_X32_Y25_N4
\cpu_inst|DATAPATH|muxB_output[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~24_combout\ = (\cpu_inst|rb\(0) & (\cpu_inst|rb\(1))) # (!\cpu_inst|rb\(0) & ((\cpu_inst|rb\(1) & (\cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~regout\)) # (!\cpu_inst|rb\(1) & 
-- ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|rb\(1),
	datac => \cpu_inst|DATAPATH|REGISTER_FILE|regs[6][0]~regout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[4][0]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~24_combout\);

-- Location: LCCOMB_X32_Y25_N12
\cpu_inst|DATAPATH|muxB_output[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~25_combout\ = (\cpu_inst|rb\(0) & ((\cpu_inst|DATAPATH|muxB_output[0]~24_combout\ & ((\cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]~regout\))) # (!\cpu_inst|DATAPATH|muxB_output[0]~24_combout\ & 
-- (\cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]~regout\)))) # (!\cpu_inst|rb\(0) & (((\cpu_inst|DATAPATH|muxB_output[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|rb\(0),
	datab => \cpu_inst|DATAPATH|REGISTER_FILE|regs[5][0]~regout\,
	datac => \cpu_inst|DATAPATH|muxB_output[0]~24_combout\,
	datad => \cpu_inst|DATAPATH|REGISTER_FILE|regs[7][0]~regout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~25_combout\);

-- Location: LCCOMB_X32_Y25_N22
\cpu_inst|DATAPATH|muxB_output[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~26_combout\ = (!\cpu_inst|bypassB~regout\ & (\cpu_inst|readB~regout\ & (\cpu_inst|rb\(2) & \cpu_inst|DATAPATH|muxB_output[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|bypassB~regout\,
	datab => \cpu_inst|readB~regout\,
	datac => \cpu_inst|rb\(2),
	datad => \cpu_inst|DATAPATH|muxB_output[0]~25_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~26_combout\);

-- Location: LCCOMB_X32_Y22_N30
\cpu_inst|DATAPATH|muxB_output[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|muxB_output[0]~30_combout\ = (\cpu_inst|DATAPATH|muxB_output[0]~29_combout\) # (\cpu_inst|DATAPATH|muxB_output[0]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_inst|DATAPATH|muxB_output[0]~29_combout\,
	datad => \cpu_inst|DATAPATH|muxB_output[0]~26_combout\,
	combout => \cpu_inst|DATAPATH|muxB_output[0]~30_combout\);

-- Location: LCCOMB_X33_Y22_N10
\cpu_inst|DATAPATH|ALU|Sum[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Sum[0]~4_combout\ = (\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & ((\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\) # (\cpu_inst|DATAPATH|muxB_output[0]~30_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\)))) # 
-- (!\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & (\cpu_inst|DATAPATH|muxB_output[0]~30_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\ $ (\cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~31_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Sum[5]~1_combout\,
	datac => \cpu_inst|DATAPATH|muxB_output[0]~30_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Sum[5]~0_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Sum[0]~4_combout\);

-- Location: LCCOMB_X34_Y24_N22
\cpu_inst|DATAPATH|ALU|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~26_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & ((\cpu_inst|DATAPATH|ALU|Add0~13_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & \cpu_inst|DATAPATH|ALU|Sum[0]~4_combout\)))) # 
-- (!\cpu_inst|DATAPATH|ALU|Add0~23_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~25_combout\ & (\cpu_inst|DATAPATH|ALU|Sum[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~23_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~25_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[0]~4_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~13_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~26_combout\);

-- Location: LCCOMB_X34_Y24_N26
\cpu_inst|DATAPATH|ALU|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|Add0~27_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~26_combout\) # ((!\cpu_inst|DATAPATH|muxA_output[0]~31_combout\ & (\cpu_inst|DATAPATH|ALU|Add0~4_combout\ & \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|muxA_output[0]~31_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~4_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Sum[5]~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~26_combout\,
	combout => \cpu_inst|DATAPATH|ALU|Add0~27_combout\);

-- Location: LCFF_X34_Y24_N29
\cpu_inst|Dout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~27_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|Dout[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Dout\(0));

-- Location: LCCOMB_X33_Y20_N18
\gpio_inst|data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[0]~feeder_combout\ = \cpu_inst|Dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(0),
	combout => \gpio_inst|data[0]~feeder_combout\);

-- Location: LCFF_X33_Y23_N31
\cpu_inst|address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~64_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(10));

-- Location: LCFF_X34_Y25_N23
\cpu_inst|address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~59_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(9));

-- Location: LCFF_X33_Y23_N3
\cpu_inst|address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~69_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(11));

-- Location: LCCOMB_X34_Y25_N22
\ie_activator~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ie_activator~1_combout\ = (!\cpu_inst|address\(8) & (!\cpu_inst|address\(10) & (!\cpu_inst|address\(9) & !\cpu_inst|address\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address\(8),
	datab => \cpu_inst|address\(10),
	datac => \cpu_inst|address\(9),
	datad => \cpu_inst|address\(11),
	combout => \ie_activator~1_combout\);

-- Location: LCCOMB_X34_Y24_N2
\ie_activator~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ie_activator~0_combout\ = (!\cpu_inst|address\(2) & (!\cpu_inst|address\(1) & (!\cpu_inst|address\(3) & !\cpu_inst|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address\(2),
	datab => \cpu_inst|address\(1),
	datac => \cpu_inst|address\(3),
	datad => \cpu_inst|address\(0),
	combout => \ie_activator~0_combout\);

-- Location: LCCOMB_X34_Y25_N8
\ie_activator~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ie_activator~3_combout\ = (!\cpu_inst|address\(4) & !\cpu_inst|address\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|address\(4),
	datad => \cpu_inst|address\(5),
	combout => \ie_activator~3_combout\);

-- Location: LCFF_X34_Y25_N5
\cpu_inst|address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~89_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(15));

-- Location: LCFF_X34_Y23_N9
\cpu_inst|address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|Add0~79_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(13));

-- Location: LCFF_X33_Y23_N17
\cpu_inst|address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|DATAPATH|ALU|Add0~74_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \cpu_inst|address[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|address\(12));

-- Location: LCCOMB_X34_Y25_N10
\ie_activator~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ie_activator~2_combout\ = (\cpu_inst|address\(14) & (\cpu_inst|address\(15) & (\cpu_inst|address\(13) & \cpu_inst|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address\(14),
	datab => \cpu_inst|address\(15),
	datac => \cpu_inst|address\(13),
	datad => \cpu_inst|address\(12),
	combout => \ie_activator~2_combout\);

-- Location: LCCOMB_X34_Y25_N28
\ie_activator~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ie_activator~4_combout\ = (!\cpu_inst|address\(7) & (!\cpu_inst|address\(6) & (\ie_activator~3_combout\ & \ie_activator~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|address\(7),
	datab => \cpu_inst|address\(6),
	datac => \ie_activator~3_combout\,
	datad => \ie_activator~2_combout\,
	combout => \ie_activator~4_combout\);

-- Location: LCCOMB_X34_Y25_N14
ie_activator : cycloneii_lcell_comb
-- Equation(s):
-- \ie_activator~combout\ = (\cpu_inst|RW~regout\ & (\ie_activator~1_combout\ & (\ie_activator~0_combout\ & \ie_activator~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|RW~regout\,
	datab => \ie_activator~1_combout\,
	datac => \ie_activator~0_combout\,
	datad => \ie_activator~4_combout\,
	combout => \ie_activator~combout\);

-- Location: LCFF_X33_Y20_N19
\gpio_inst|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(0));

-- Location: LCCOMB_X33_Y20_N4
\gpio_inst|data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[1]~feeder_combout\ = \cpu_inst|Dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|Dout\(1),
	combout => \gpio_inst|data[1]~feeder_combout\);

-- Location: LCFF_X33_Y20_N5
\gpio_inst|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(1));

-- Location: LCCOMB_X33_Y20_N6
\gpio_inst|data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[2]~feeder_combout\ = \cpu_inst|Dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(2),
	combout => \gpio_inst|data[2]~feeder_combout\);

-- Location: LCFF_X33_Y20_N7
\gpio_inst|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(2));

-- Location: LCCOMB_X33_Y20_N28
\gpio_inst|data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[3]~feeder_combout\ = \cpu_inst|Dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|Dout\(3),
	combout => \gpio_inst|data[3]~feeder_combout\);

-- Location: LCFF_X33_Y20_N29
\gpio_inst|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(3));

-- Location: LCCOMB_X33_Y20_N22
\gpio_inst|data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[4]~feeder_combout\ = \cpu_inst|Dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|Dout\(4),
	combout => \gpio_inst|data[4]~feeder_combout\);

-- Location: LCFF_X33_Y20_N23
\gpio_inst|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(4));

-- Location: LCCOMB_X33_Y20_N12
\gpio_inst|data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[5]~feeder_combout\ = \cpu_inst|Dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(5),
	combout => \gpio_inst|data[5]~feeder_combout\);

-- Location: LCFF_X33_Y20_N13
\gpio_inst|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[5]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(5));

-- Location: LCCOMB_X33_Y20_N26
\gpio_inst|data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[6]~feeder_combout\ = \cpu_inst|Dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|Dout\(6),
	combout => \gpio_inst|data[6]~feeder_combout\);

-- Location: LCFF_X33_Y20_N27
\gpio_inst|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(6));

-- Location: LCCOMB_X33_Y20_N20
\gpio_inst|data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[7]~feeder_combout\ = \cpu_inst|Dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|Dout\(7),
	combout => \gpio_inst|data[7]~feeder_combout\);

-- Location: LCFF_X33_Y20_N21
\gpio_inst|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(7));

-- Location: LCCOMB_X33_Y20_N14
\gpio_inst|data[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[8]~feeder_combout\ = \cpu_inst|Dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(8),
	combout => \gpio_inst|data[8]~feeder_combout\);

-- Location: LCFF_X33_Y20_N15
\gpio_inst|data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(8));

-- Location: LCCOMB_X33_Y20_N8
\gpio_inst|data[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[9]~feeder_combout\ = \cpu_inst|Dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(9),
	combout => \gpio_inst|data[9]~feeder_combout\);

-- Location: LCFF_X33_Y20_N9
\gpio_inst|data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[9]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(9));

-- Location: LCCOMB_X33_Y20_N30
\gpio_inst|data[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[10]~feeder_combout\ = \cpu_inst|Dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(10),
	combout => \gpio_inst|data[10]~feeder_combout\);

-- Location: LCFF_X33_Y20_N31
\gpio_inst|data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(10));

-- Location: LCCOMB_X33_Y20_N24
\gpio_inst|data[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[11]~feeder_combout\ = \cpu_inst|Dout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_inst|Dout\(11),
	combout => \gpio_inst|data[11]~feeder_combout\);

-- Location: LCFF_X33_Y20_N25
\gpio_inst|data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[11]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(11));

-- Location: LCCOMB_X33_Y20_N2
\gpio_inst|data[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[12]~feeder_combout\ = \cpu_inst|Dout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(12),
	combout => \gpio_inst|data[12]~feeder_combout\);

-- Location: LCFF_X33_Y20_N3
\gpio_inst|data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[12]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(12));

-- Location: LCCOMB_X33_Y20_N16
\gpio_inst|data[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[13]~feeder_combout\ = \cpu_inst|Dout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(13),
	combout => \gpio_inst|data[13]~feeder_combout\);

-- Location: LCFF_X33_Y20_N17
\gpio_inst|data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(13));

-- Location: LCCOMB_X33_Y20_N10
\gpio_inst|data[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gpio_inst|data[14]~feeder_combout\ = \cpu_inst|Dout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_inst|Dout\(14),
	combout => \gpio_inst|data[14]~feeder_combout\);

-- Location: LCFF_X33_Y20_N11
\gpio_inst|data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \gpio_inst|data[14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(14));

-- Location: LCFF_X30_Y21_N17
\gpio_inst|data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	sdata => \cpu_inst|Dout\(15),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \ie_activator~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gpio_inst|data\(15));

-- Location: LCCOMB_X33_Y23_N18
\cpu_inst|DATAPATH|ALU|res_v~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|res_v~2_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~54_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~69_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~59_combout\) # (\cpu_inst|DATAPATH|ALU|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~54_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~69_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~59_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~64_combout\,
	combout => \cpu_inst|DATAPATH|ALU|res_v~2_combout\);

-- Location: LCCOMB_X34_Y23_N24
\cpu_inst|DATAPATH|ALU|res_v~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|res_v~3_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~74_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~84_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~89_combout\) # (\cpu_inst|DATAPATH|ALU|Add0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~74_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~84_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~89_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~79_combout\,
	combout => \cpu_inst|DATAPATH|ALU|res_v~3_combout\);

-- Location: LCCOMB_X34_Y23_N26
\cpu_inst|DATAPATH|ALU|res_v~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|res_v~1_combout\ = (\cpu_inst|DATAPATH|ALU|Add0~49_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~46_combout\) # ((\cpu_inst|DATAPATH|ALU|Add0~39_combout\) # (\cpu_inst|DATAPATH|ALU|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|Add0~49_combout\,
	datab => \cpu_inst|DATAPATH|ALU|Add0~46_combout\,
	datac => \cpu_inst|DATAPATH|ALU|Add0~39_combout\,
	datad => \cpu_inst|DATAPATH|ALU|Add0~41_combout\,
	combout => \cpu_inst|DATAPATH|ALU|res_v~1_combout\);

-- Location: LCCOMB_X34_Y23_N4
\cpu_inst|DATAPATH|ALU|res_v~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cpu_inst|DATAPATH|ALU|res_v~4_combout\ = (!\cpu_inst|DATAPATH|ALU|res_v~0_combout\ & (!\cpu_inst|DATAPATH|ALU|res_v~2_combout\ & (!\cpu_inst|DATAPATH|ALU|res_v~3_combout\ & !\cpu_inst|DATAPATH|ALU|res_v~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_inst|DATAPATH|ALU|res_v~0_combout\,
	datab => \cpu_inst|DATAPATH|ALU|res_v~2_combout\,
	datac => \cpu_inst|DATAPATH|ALU|res_v~3_combout\,
	datad => \cpu_inst|DATAPATH|ALU|res_v~1_combout\,
	combout => \cpu_inst|DATAPATH|ALU|res_v~4_combout\);

-- Location: LCFF_X34_Y23_N5
\cpu_inst|Z_Flag_Latched\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_divider_inst|clk_prescaled~clkctrl_outclk\,
	datain => \cpu_inst|DATAPATH|ALU|res_v~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \cpu_inst|ALT_INV_en_alu~regout\,
	ena => \cpu_inst|Mux174~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_inst|Z_Flag_Latched~regout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_output[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \gpio_inst|data\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_output(15));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clock_divider_inst|clk_prescaled~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_out);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z_Flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu_inst|Z_Flag_Latched~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z_Flag);

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N_Flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu_inst|N_Flag_Latched~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N_Flag);

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\O_Flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cpu_inst|O_Flag_Latched~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_O_Flag);
END structure;


