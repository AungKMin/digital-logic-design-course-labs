-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/23/2022 10:12:48"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	xreg : BUFFER std_logic_vector(3 DOWNTO 0);
	yreg : BUFFER std_logic_vector(3 DOWNTO 0);
	xPOS : BUFFER std_logic_vector(3 DOWNTO 0);
	yPOS : BUFFER std_logic_vector(3 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_xreg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_yreg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_xPOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_yPOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \xreg[0]~output_o\ : std_logic;
SIGNAL \xreg[1]~output_o\ : std_logic;
SIGNAL \xreg[2]~output_o\ : std_logic;
SIGNAL \xreg[3]~output_o\ : std_logic;
SIGNAL \yreg[0]~output_o\ : std_logic;
SIGNAL \yreg[1]~output_o\ : std_logic;
SIGNAL \yreg[2]~output_o\ : std_logic;
SIGNAL \yreg[3]~output_o\ : std_logic;
SIGNAL \xPOS[0]~output_o\ : std_logic;
SIGNAL \xPOS[1]~output_o\ : std_logic;
SIGNAL \xPOS[2]~output_o\ : std_logic;
SIGNAL \xPOS[3]~output_o\ : std_logic;
SIGNAL \yPOS[0]~output_o\ : std_logic;
SIGNAL \yPOS[1]~output_o\ : std_logic;
SIGNAL \yPOS[2]~output_o\ : std_logic;
SIGNAL \yPOS[3]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \extender_inst|Selector1~0_combout\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \xy_motion_inst|Selector3~4_combout\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \xy_motion_inst|current_state.RELEASE~q\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \xy_motion_inst|Selector1~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.HOLD_ERROR~q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \xy_motion_inst|Selector3~2_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector6~0_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~1_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~0_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~2_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~3_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~4_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~4_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \y_comparator|AEQB~0_combout\ : std_logic;
SIGNAL \y_comparator|AEQB~combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector0~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector0~1_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.HOLD~q\ : std_logic;
SIGNAL \xy_motion_inst|Selector4~2_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector5~0_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~1_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~0_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~2_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~3_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~5_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \x_comparator|AEQB~0_combout\ : std_logic;
SIGNAL \x_comparator|AEQB~combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector3~3_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector10~0_combout\ : std_logic;
SIGNAL \extender_inst|next_state.DOWN1_118~combout\ : std_logic;
SIGNAL \extender_inst|current_state.DOWN1~q\ : std_logic;
SIGNAL \extender_register_inst|sreg~3_combout\ : std_logic;
SIGNAL \extender_inst|Selector4~0_combout\ : std_logic;
SIGNAL \extender_inst|Selector4~1_combout\ : std_logic;
SIGNAL \extender_inst|Equal1~0_combout\ : std_logic;
SIGNAL \extender_inst|Selector0~0_combout\ : std_logic;
SIGNAL \extender_inst|next_state.DOWN0_124~combout\ : std_logic;
SIGNAL \extender_inst|current_state.DOWN0~q\ : std_logic;
SIGNAL \extender_inst|Selector3~0_combout\ : std_logic;
SIGNAL \extender_inst|next_state.UP1_106~combout\ : std_logic;
SIGNAL \extender_inst|current_state.UP1~q\ : std_logic;
SIGNAL \extender_inst|Selector2~0_combout\ : std_logic;
SIGNAL \extender_inst|next_state.UP0_112~combout\ : std_logic;
SIGNAL \extender_inst|current_state.UP0~0_combout\ : std_logic;
SIGNAL \extender_inst|current_state.UP0~q\ : std_logic;
SIGNAL \extender_register_inst|sreg~2_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg~1_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg~0_combout\ : std_logic;
SIGNAL \extender_inst|Equal0~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector2~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector2~1_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.PRESSED~q\ : std_logic;
SIGNAL \xy_motion_inst|Selector7~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector7~1_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \grappler_inst|next_state~5_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.OPEN1~q\ : std_logic;
SIGNAL \grappler_inst|Selector1~0_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.CLOSED0~q\ : std_logic;
SIGNAL \grappler_inst|Selector0~0_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.OPEN0~q\ : std_logic;
SIGNAL \grappler_inst|next_state~4_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.CLOSED1~q\ : std_logic;
SIGNAL \grappler_inst|grappler_on~0_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_counter_inst|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \extender_register_inst|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y_register|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_register|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \grappler_inst|ALT_INV_grappler_on~0_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
xreg <= ww_xreg;
yreg <= ww_yreg;
xPOS <= ww_xPOS;
yPOS <= ww_yPOS;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\grappler_inst|ALT_INV_grappler_on~0_combout\ <= NOT \grappler_inst|grappler_on~0_combout\;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xy_motion_inst|Selector7~1_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \grappler_inst|ALT_INV_grappler_on~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extender_register_inst|sreg\(0),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extender_register_inst|sreg\(1),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extender_register_inst|sreg\(2),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extender_register_inst|sreg\(3),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\xreg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_register|sreg\(0),
	devoe => ww_devoe,
	o => \xreg[0]~output_o\);

\xreg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_register|sreg\(1),
	devoe => ww_devoe,
	o => \xreg[1]~output_o\);

\xreg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_register|sreg\(2),
	devoe => ww_devoe,
	o => \xreg[2]~output_o\);

\xreg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_register|sreg\(3),
	devoe => ww_devoe,
	o => \xreg[3]~output_o\);

\yreg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_register|sreg\(0),
	devoe => ww_devoe,
	o => \yreg[0]~output_o\);

\yreg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_register|sreg\(1),
	devoe => ww_devoe,
	o => \yreg[1]~output_o\);

\yreg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_register|sreg\(2),
	devoe => ww_devoe,
	o => \yreg[2]~output_o\);

\yreg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_register|sreg\(3),
	devoe => ww_devoe,
	o => \yreg[3]~output_o\);

\xPOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_counter_inst|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \xPOS[0]~output_o\);

\xPOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_counter_inst|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \xPOS[1]~output_o\);

\xPOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_counter_inst|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \xPOS[2]~output_o\);

\xPOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x_counter_inst|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \xPOS[3]~output_o\);

\yPOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_counter_inst|ud_bin_counter\(0),
	devoe => ww_devoe,
	o => \yPOS[0]~output_o\);

\yPOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_counter_inst|ud_bin_counter\(1),
	devoe => ww_devoe,
	o => \yPOS[1]~output_o\);

\yPOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_counter_inst|ud_bin_counter\(2),
	devoe => ww_devoe,
	o => \yPOS[2]~output_o\);

\yPOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y_counter_inst|ud_bin_counter\(3),
	devoe => ww_devoe,
	o => \yPOS[3]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\extender_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector1~0_combout\ = (!\pb_n[1]~input_o\ & ((\extender_inst|current_state.DOWN1~q\) # ((\extender_inst|Equal0~0_combout\ & !\extender_inst|current_state.UP0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|current_state.DOWN1~q\,
	datab => \extender_inst|Equal0~0_combout\,
	datac => \extender_inst|current_state.UP0~q\,
	datad => \pb_n[1]~input_o\,
	combout => \extender_inst|Selector1~0_combout\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\xy_motion_inst|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector3~4_combout\ = (\xy_motion_inst|Selector3~3_combout\) # ((\pb_n[2]~input_o\ & (\xy_motion_inst|current_state.PRESSED~q\ & \extender_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \xy_motion_inst|current_state.PRESSED~q\,
	datac => \xy_motion_inst|Selector3~3_combout\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \xy_motion_inst|Selector3~4_combout\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\xy_motion_inst|current_state.RELEASE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xy_motion_inst|Selector3~4_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.RELEASE~q\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\xy_motion_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector1~0_combout\ = (\xy_motion_inst|current_state.HOLD_ERROR~q\ & ((\pb_n[2]~input_o\) # ((!\extender_inst|Equal0~0_combout\)))) # (!\xy_motion_inst|current_state.HOLD_ERROR~q\ & (\pb_n[2]~input_o\ & 
-- (\xy_motion_inst|current_state.PRESSED~q\ & !\extender_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	datab => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.PRESSED~q\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \xy_motion_inst|Selector1~0_combout\);

\xy_motion_inst|current_state.HOLD_ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xy_motion_inst|Selector1~0_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.HOLD_ERROR~q\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\y_register|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[0]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(0));

\xy_motion_inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector3~2_combout\ = (\pb_n[2]~input_o\ & \xy_motion_inst|current_state.PRESSED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \xy_motion_inst|current_state.PRESSED~q\,
	combout => \xy_motion_inst|Selector3~2_combout\);

\xy_motion_inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector6~0_combout\ = (\extender_inst|Equal0~0_combout\ & (\y_comparator|AEQB~combout\ & ((\xy_motion_inst|current_state.RELEASE~q\) # (\xy_motion_inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \y_comparator|AEQB~combout\,
	datac => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \xy_motion_inst|Selector3~2_combout\,
	combout => \xy_motion_inst|Selector6~0_combout\);

\y_counter_inst|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[0]~3_combout\ = \y_counter_inst|ud_bin_counter\(0) $ (\xy_motion_inst|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_counter_inst|ud_bin_counter\(0),
	datad => \xy_motion_inst|Selector6~0_combout\,
	combout => \y_counter_inst|ud_bin_counter[0]~3_combout\);

\y_counter_inst|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \y_counter_inst|ud_bin_counter[0]~3_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(0));

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\y_register|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[1]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(1));

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\y_register|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[3]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(3));

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\y_register|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[2]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(2));

\y_counter_inst|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[1]~5_cout\ = CARRY(\y_counter_inst|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(0),
	datad => VCC,
	cout => \y_counter_inst|ud_bin_counter[1]~5_cout\);

\y_counter_inst|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[1]~6_combout\ = (\y_counter_inst|process_0~4_combout\ & ((\y_counter_inst|ud_bin_counter\(1) & (!\y_counter_inst|ud_bin_counter[1]~5_cout\)) # (!\y_counter_inst|ud_bin_counter\(1) & 
-- ((\y_counter_inst|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\y_counter_inst|process_0~4_combout\ & ((\y_counter_inst|ud_bin_counter\(1) & (\y_counter_inst|ud_bin_counter[1]~5_cout\ & VCC)) # (!\y_counter_inst|ud_bin_counter\(1) & 
-- (!\y_counter_inst|ud_bin_counter[1]~5_cout\))))
-- \y_counter_inst|ud_bin_counter[1]~7\ = CARRY((\y_counter_inst|process_0~4_combout\ & ((!\y_counter_inst|ud_bin_counter[1]~5_cout\) # (!\y_counter_inst|ud_bin_counter\(1)))) # (!\y_counter_inst|process_0~4_combout\ & (!\y_counter_inst|ud_bin_counter\(1) & 
-- !\y_counter_inst|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|process_0~4_combout\,
	datab => \y_counter_inst|ud_bin_counter\(1),
	datad => VCC,
	cin => \y_counter_inst|ud_bin_counter[1]~5_cout\,
	combout => \y_counter_inst|ud_bin_counter[1]~6_combout\,
	cout => \y_counter_inst|ud_bin_counter[1]~7\);

\y_counter_inst|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[2]~8_combout\ = ((\y_counter_inst|process_0~4_combout\ $ (\y_counter_inst|ud_bin_counter\(2) $ (\y_counter_inst|ud_bin_counter[1]~7\)))) # (GND)
-- \y_counter_inst|ud_bin_counter[2]~9\ = CARRY((\y_counter_inst|process_0~4_combout\ & (\y_counter_inst|ud_bin_counter\(2) & !\y_counter_inst|ud_bin_counter[1]~7\)) # (!\y_counter_inst|process_0~4_combout\ & ((\y_counter_inst|ud_bin_counter\(2)) # 
-- (!\y_counter_inst|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|process_0~4_combout\,
	datab => \y_counter_inst|ud_bin_counter\(2),
	datad => VCC,
	cin => \y_counter_inst|ud_bin_counter[1]~7\,
	combout => \y_counter_inst|ud_bin_counter[2]~8_combout\,
	cout => \y_counter_inst|ud_bin_counter[2]~9\);

\y_counter_inst|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \y_counter_inst|ud_bin_counter[2]~8_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(2));

\y_counter_inst|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[3]~10_combout\ = \y_counter_inst|process_0~4_combout\ $ (\y_counter_inst|ud_bin_counter\(3) $ (!\y_counter_inst|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|process_0~4_combout\,
	datab => \y_counter_inst|ud_bin_counter\(3),
	cin => \y_counter_inst|ud_bin_counter[2]~9\,
	combout => \y_counter_inst|ud_bin_counter[3]~10_combout\);

\y_counter_inst|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \y_counter_inst|ud_bin_counter[3]~10_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(3));

\y_counter_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~1_combout\ = (\y_register|sreg\(3) & (((\y_register|sreg\(2) & !\y_counter_inst|ud_bin_counter\(2))) # (!\y_counter_inst|ud_bin_counter\(3)))) # (!\y_register|sreg\(3) & (\y_register|sreg\(2) & 
-- (!\y_counter_inst|ud_bin_counter\(2) & !\y_counter_inst|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(3),
	datab => \y_register|sreg\(2),
	datac => \y_counter_inst|ud_bin_counter\(2),
	datad => \y_counter_inst|ud_bin_counter\(3),
	combout => \y_counter_inst|process_0~1_combout\);

\y_counter_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~0_combout\ = (\y_register|sreg\(2) & (\y_counter_inst|ud_bin_counter\(2) & (\y_register|sreg\(3) $ (!\y_counter_inst|ud_bin_counter\(3))))) # (!\y_register|sreg\(2) & (!\y_counter_inst|ud_bin_counter\(2) & (\y_register|sreg\(3) $ 
-- (!\y_counter_inst|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(2),
	datab => \y_register|sreg\(3),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(2),
	combout => \y_counter_inst|process_0~0_combout\);

\y_counter_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~2_combout\ = (\y_register|sreg\(1) & (((\y_register|sreg\(0) & !\y_counter_inst|ud_bin_counter\(0))) # (!\y_counter_inst|ud_bin_counter\(1)))) # (!\y_register|sreg\(1) & (\y_register|sreg\(0) & 
-- (!\y_counter_inst|ud_bin_counter\(0) & !\y_counter_inst|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(1),
	datab => \y_register|sreg\(0),
	datac => \y_counter_inst|ud_bin_counter\(0),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \y_counter_inst|process_0~2_combout\);

\y_counter_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~3_combout\ = (\y_counter_inst|process_0~1_combout\) # ((\y_counter_inst|process_0~0_combout\ & \y_counter_inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|process_0~1_combout\,
	datab => \y_counter_inst|process_0~0_combout\,
	datac => \y_counter_inst|process_0~2_combout\,
	combout => \y_counter_inst|process_0~3_combout\);

\x_counter_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~4_combout\ = (\extender_inst|Equal0~0_combout\ & (\pb_n[2]~input_o\ & (\xy_motion_inst|current_state.PRESSED~q\ & !\xy_motion_inst|current_state.RELEASE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.PRESSED~q\,
	datad => \xy_motion_inst|current_state.RELEASE~q\,
	combout => \x_counter_inst|process_0~4_combout\);

\y_counter_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~4_combout\ = (\y_comparator|AEQB~combout\ & (\y_counter_inst|process_0~3_combout\ & ((\xy_motion_inst|Selector3~3_combout\) # (\x_counter_inst|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_comparator|AEQB~combout\,
	datab => \y_counter_inst|process_0~3_combout\,
	datac => \xy_motion_inst|Selector3~3_combout\,
	datad => \x_counter_inst|process_0~4_combout\,
	combout => \y_counter_inst|process_0~4_combout\);

\y_counter_inst|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \y_counter_inst|ud_bin_counter[1]~6_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(1));

\y_comparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_comparator|AEQB~0_combout\ = (\y_register|sreg\(0) & ((\y_register|sreg\(1) $ (\y_counter_inst|ud_bin_counter\(1))) # (!\y_counter_inst|ud_bin_counter\(0)))) # (!\y_register|sreg\(0) & ((\y_counter_inst|ud_bin_counter\(0)) # (\y_register|sreg\(1) $ 
-- (\y_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(0),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_register|sreg\(1),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \y_comparator|AEQB~0_combout\);

\y_comparator|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_comparator|AEQB~combout\ = (\y_comparator|AEQB~0_combout\) # (!\y_counter_inst|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_comparator|AEQB~0_combout\,
	datad => \y_counter_inst|process_0~0_combout\,
	combout => \y_comparator|AEQB~combout\);

\xy_motion_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector0~0_combout\ = (\xy_motion_inst|current_state.RELEASE~q\ & (((!\x_comparator|AEQB~combout\ & !\y_comparator|AEQB~combout\)) # (!\extender_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.RELEASE~q\,
	datab => \x_comparator|AEQB~combout\,
	datac => \y_comparator|AEQB~combout\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \xy_motion_inst|Selector0~0_combout\);

\xy_motion_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector0~1_combout\ = (!\xy_motion_inst|Selector0~0_combout\ & ((\xy_motion_inst|current_state.HOLD~q\) # ((!\pb_n[2]~input_o\ & \extender_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|Selector0~0_combout\,
	datab => \pb_n[2]~input_o\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \xy_motion_inst|current_state.HOLD~q\,
	combout => \xy_motion_inst|Selector0~1_combout\);

\xy_motion_inst|current_state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xy_motion_inst|Selector0~1_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.HOLD~q\);

\xy_motion_inst|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector4~2_combout\ = (\extender_inst|Equal0~0_combout\ & (!\pb_n[2]~input_o\ & ((\xy_motion_inst|current_state.HOLD_ERROR~q\) # (!\xy_motion_inst|current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	datab => \xy_motion_inst|current_state.HOLD~q\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \pb_n[2]~input_o\,
	combout => \xy_motion_inst|Selector4~2_combout\);

\x_register|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[4]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(0));

\xy_motion_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector5~0_combout\ = (\extender_inst|Equal0~0_combout\ & (\x_comparator|AEQB~combout\ & ((\xy_motion_inst|current_state.RELEASE~q\) # (\xy_motion_inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \x_comparator|AEQB~combout\,
	datac => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \xy_motion_inst|Selector3~2_combout\,
	combout => \xy_motion_inst|Selector5~0_combout\);

\x_counter_inst|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[0]~3_combout\ = \x_counter_inst|ud_bin_counter\(0) $ (\xy_motion_inst|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_counter_inst|ud_bin_counter\(0),
	datad => \xy_motion_inst|Selector5~0_combout\,
	combout => \x_counter_inst|ud_bin_counter[0]~3_combout\);

\x_counter_inst|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \x_counter_inst|ud_bin_counter[0]~3_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(0));

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\x_register|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[5]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(1));

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\x_register|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[7]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(3));

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\x_register|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[6]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(2));

\x_counter_inst|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[1]~5_cout\ = CARRY(\x_counter_inst|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(0),
	datad => VCC,
	cout => \x_counter_inst|ud_bin_counter[1]~5_cout\);

\x_counter_inst|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[1]~6_combout\ = (\x_counter_inst|process_0~5_combout\ & ((\x_counter_inst|ud_bin_counter\(1) & (!\x_counter_inst|ud_bin_counter[1]~5_cout\)) # (!\x_counter_inst|ud_bin_counter\(1) & 
-- ((\x_counter_inst|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\x_counter_inst|process_0~5_combout\ & ((\x_counter_inst|ud_bin_counter\(1) & (\x_counter_inst|ud_bin_counter[1]~5_cout\ & VCC)) # (!\x_counter_inst|ud_bin_counter\(1) & 
-- (!\x_counter_inst|ud_bin_counter[1]~5_cout\))))
-- \x_counter_inst|ud_bin_counter[1]~7\ = CARRY((\x_counter_inst|process_0~5_combout\ & ((!\x_counter_inst|ud_bin_counter[1]~5_cout\) # (!\x_counter_inst|ud_bin_counter\(1)))) # (!\x_counter_inst|process_0~5_combout\ & (!\x_counter_inst|ud_bin_counter\(1) & 
-- !\x_counter_inst|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~5_combout\,
	datab => \x_counter_inst|ud_bin_counter\(1),
	datad => VCC,
	cin => \x_counter_inst|ud_bin_counter[1]~5_cout\,
	combout => \x_counter_inst|ud_bin_counter[1]~6_combout\,
	cout => \x_counter_inst|ud_bin_counter[1]~7\);

\x_counter_inst|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[2]~8_combout\ = ((\x_counter_inst|process_0~5_combout\ $ (\x_counter_inst|ud_bin_counter\(2) $ (\x_counter_inst|ud_bin_counter[1]~7\)))) # (GND)
-- \x_counter_inst|ud_bin_counter[2]~9\ = CARRY((\x_counter_inst|process_0~5_combout\ & (\x_counter_inst|ud_bin_counter\(2) & !\x_counter_inst|ud_bin_counter[1]~7\)) # (!\x_counter_inst|process_0~5_combout\ & ((\x_counter_inst|ud_bin_counter\(2)) # 
-- (!\x_counter_inst|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~5_combout\,
	datab => \x_counter_inst|ud_bin_counter\(2),
	datad => VCC,
	cin => \x_counter_inst|ud_bin_counter[1]~7\,
	combout => \x_counter_inst|ud_bin_counter[2]~8_combout\,
	cout => \x_counter_inst|ud_bin_counter[2]~9\);

\x_counter_inst|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \x_counter_inst|ud_bin_counter[2]~8_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(2));

\x_counter_inst|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[3]~10_combout\ = \x_counter_inst|process_0~5_combout\ $ (\x_counter_inst|ud_bin_counter\(3) $ (!\x_counter_inst|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~5_combout\,
	datab => \x_counter_inst|ud_bin_counter\(3),
	cin => \x_counter_inst|ud_bin_counter[2]~9\,
	combout => \x_counter_inst|ud_bin_counter[3]~10_combout\);

\x_counter_inst|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \x_counter_inst|ud_bin_counter[3]~10_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(3));

\x_counter_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~1_combout\ = (\x_register|sreg\(3) & (((\x_register|sreg\(2) & !\x_counter_inst|ud_bin_counter\(2))) # (!\x_counter_inst|ud_bin_counter\(3)))) # (!\x_register|sreg\(3) & (\x_register|sreg\(2) & 
-- (!\x_counter_inst|ud_bin_counter\(2) & !\x_counter_inst|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sreg\(3),
	datab => \x_register|sreg\(2),
	datac => \x_counter_inst|ud_bin_counter\(2),
	datad => \x_counter_inst|ud_bin_counter\(3),
	combout => \x_counter_inst|process_0~1_combout\);

\x_counter_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~0_combout\ = (\x_register|sreg\(2) & (\x_counter_inst|ud_bin_counter\(2) & (\x_register|sreg\(3) $ (!\x_counter_inst|ud_bin_counter\(3))))) # (!\x_register|sreg\(2) & (!\x_counter_inst|ud_bin_counter\(2) & (\x_register|sreg\(3) $ 
-- (!\x_counter_inst|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sreg\(2),
	datab => \x_register|sreg\(3),
	datac => \x_counter_inst|ud_bin_counter\(3),
	datad => \x_counter_inst|ud_bin_counter\(2),
	combout => \x_counter_inst|process_0~0_combout\);

\x_counter_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~2_combout\ = (\x_register|sreg\(1) & (((\x_register|sreg\(0) & !\x_counter_inst|ud_bin_counter\(0))) # (!\x_counter_inst|ud_bin_counter\(1)))) # (!\x_register|sreg\(1) & (\x_register|sreg\(0) & 
-- (!\x_counter_inst|ud_bin_counter\(0) & !\x_counter_inst|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sreg\(1),
	datab => \x_register|sreg\(0),
	datac => \x_counter_inst|ud_bin_counter\(0),
	datad => \x_counter_inst|ud_bin_counter\(1),
	combout => \x_counter_inst|process_0~2_combout\);

\x_counter_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~3_combout\ = (\x_counter_inst|process_0~1_combout\) # ((\x_counter_inst|process_0~0_combout\ & \x_counter_inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~1_combout\,
	datab => \x_counter_inst|process_0~0_combout\,
	datac => \x_counter_inst|process_0~2_combout\,
	combout => \x_counter_inst|process_0~3_combout\);

\x_counter_inst|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~5_combout\ = (\x_comparator|AEQB~combout\ & (\x_counter_inst|process_0~3_combout\ & ((\xy_motion_inst|Selector3~3_combout\) # (\x_counter_inst|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_comparator|AEQB~combout\,
	datab => \x_counter_inst|process_0~3_combout\,
	datac => \xy_motion_inst|Selector3~3_combout\,
	datad => \x_counter_inst|process_0~4_combout\,
	combout => \x_counter_inst|process_0~5_combout\);

\x_counter_inst|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \x_counter_inst|ud_bin_counter[1]~6_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \xy_motion_inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(1));

\x_comparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_comparator|AEQB~0_combout\ = (\x_register|sreg\(0) & ((\x_register|sreg\(1) $ (\x_counter_inst|ud_bin_counter\(1))) # (!\x_counter_inst|ud_bin_counter\(0)))) # (!\x_register|sreg\(0) & ((\x_counter_inst|ud_bin_counter\(0)) # (\x_register|sreg\(1) $ 
-- (\x_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sreg\(0),
	datab => \x_counter_inst|ud_bin_counter\(0),
	datac => \x_register|sreg\(1),
	datad => \x_counter_inst|ud_bin_counter\(1),
	combout => \x_comparator|AEQB~0_combout\);

\x_comparator|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_comparator|AEQB~combout\ = (\x_comparator|AEQB~0_combout\) # (!\x_counter_inst|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_comparator|AEQB~0_combout\,
	datad => \x_counter_inst|process_0~0_combout\,
	combout => \x_comparator|AEQB~combout\);

\xy_motion_inst|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector3~3_combout\ = (\extender_inst|Equal0~0_combout\ & (\xy_motion_inst|current_state.RELEASE~q\ & ((\x_comparator|AEQB~combout\) # (\y_comparator|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \xy_motion_inst|current_state.RELEASE~q\,
	datac => \x_comparator|AEQB~combout\,
	datad => \y_comparator|AEQB~combout\,
	combout => \xy_motion_inst|Selector3~3_combout\);

\xy_motion_inst|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector10~0_combout\ = (!\xy_motion_inst|Selector3~3_combout\ & (((!\xy_motion_inst|current_state.PRESSED~q\) # (!\pb_n[2]~input_o\)) # (!\extender_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.PRESSED~q\,
	datad => \xy_motion_inst|Selector3~3_combout\,
	combout => \xy_motion_inst|Selector10~0_combout\);

\extender_inst|next_state.DOWN1_118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|next_state.DOWN1_118~combout\ = (\xy_motion_inst|Selector10~0_combout\ & (\extender_inst|Selector1~0_combout\)) # (!\xy_motion_inst|Selector10~0_combout\ & ((\extender_inst|next_state.DOWN1_118~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extender_inst|Selector1~0_combout\,
	datac => \extender_inst|next_state.DOWN1_118~combout\,
	datad => \xy_motion_inst|Selector10~0_combout\,
	combout => \extender_inst|next_state.DOWN1_118~combout\);

\extender_inst|current_state.DOWN1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_inst|next_state.DOWN1_118~combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.DOWN1~q\);

\extender_register_inst|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~3_combout\ = (\extender_register_inst|sreg\(2)) # ((\extender_inst|current_state.UP0~q\ & !\extender_inst|current_state.UP1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(2),
	datab => \extender_inst|current_state.UP0~q\,
	datad => \extender_inst|current_state.UP1~q\,
	combout => \extender_register_inst|sreg~3_combout\);

\extender_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector4~0_combout\ = (\extender_inst|current_state.DOWN0~q\ & (((!\extender_inst|Equal0~0_combout\ & !\extender_inst|current_state.UP0~q\)) # (!\extender_inst|Equal1~0_combout\))) # (!\extender_inst|current_state.DOWN0~q\ & 
-- (!\extender_inst|Equal0~0_combout\ & (!\extender_inst|current_state.UP0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|current_state.DOWN0~q\,
	datab => \extender_inst|Equal0~0_combout\,
	datac => \extender_inst|current_state.UP0~q\,
	datad => \extender_inst|Equal1~0_combout\,
	combout => \extender_inst|Selector4~0_combout\);

\extender_inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector4~1_combout\ = (\extender_inst|Selector4~0_combout\) # ((\pb_n[1]~input_o\ & ((\extender_inst|current_state.UP1~q\) # (\extender_inst|current_state.DOWN1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Selector4~0_combout\,
	datab => \pb_n[1]~input_o\,
	datac => \extender_inst|current_state.UP1~q\,
	datad => \extender_inst|current_state.DOWN1~q\,
	combout => \extender_inst|Selector4~1_combout\);

\extender_register_inst|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_register_inst|sreg~3_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(3));

\extender_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Equal1~0_combout\ = (\extender_register_inst|sreg\(2) & (\extender_register_inst|sreg\(1) & (\extender_register_inst|sreg\(0) & \extender_register_inst|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(2),
	datab => \extender_register_inst|sreg\(1),
	datac => \extender_register_inst|sreg\(0),
	datad => \extender_register_inst|sreg\(3),
	combout => \extender_inst|Equal1~0_combout\);

\extender_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector0~0_combout\ = (\pb_n[1]~input_o\ & ((\extender_inst|current_state.DOWN0~q\) # ((\extender_inst|current_state.DOWN1~q\)))) # (!\pb_n[1]~input_o\ & (\extender_inst|current_state.DOWN0~q\ & ((!\extender_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datab => \extender_inst|current_state.DOWN0~q\,
	datac => \extender_inst|current_state.DOWN1~q\,
	datad => \extender_inst|Equal1~0_combout\,
	combout => \extender_inst|Selector0~0_combout\);

\extender_inst|next_state.DOWN0_124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|next_state.DOWN0_124~combout\ = (\xy_motion_inst|Selector10~0_combout\ & (\extender_inst|Selector0~0_combout\)) # (!\xy_motion_inst|Selector10~0_combout\ & ((\extender_inst|next_state.DOWN0_124~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extender_inst|Selector0~0_combout\,
	datac => \extender_inst|next_state.DOWN0_124~combout\,
	datad => \xy_motion_inst|Selector10~0_combout\,
	combout => \extender_inst|next_state.DOWN0_124~combout\);

\extender_inst|current_state.DOWN0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_inst|next_state.DOWN0_124~combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.DOWN0~q\);

\extender_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector3~0_combout\ = (!\pb_n[1]~input_o\ & ((\extender_inst|current_state.UP1~q\) # ((\extender_inst|current_state.DOWN0~q\ & \extender_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|current_state.UP1~q\,
	datab => \extender_inst|current_state.DOWN0~q\,
	datac => \extender_inst|Equal1~0_combout\,
	datad => \pb_n[1]~input_o\,
	combout => \extender_inst|Selector3~0_combout\);

\extender_inst|next_state.UP1_106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|next_state.UP1_106~combout\ = (\xy_motion_inst|Selector10~0_combout\ & (\extender_inst|Selector3~0_combout\)) # (!\xy_motion_inst|Selector10~0_combout\ & ((\extender_inst|next_state.UP1_106~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extender_inst|Selector3~0_combout\,
	datac => \extender_inst|next_state.UP1_106~combout\,
	datad => \xy_motion_inst|Selector10~0_combout\,
	combout => \extender_inst|next_state.UP1_106~combout\);

\extender_inst|current_state.UP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_inst|next_state.UP1_106~combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.UP1~q\);

\extender_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector2~0_combout\ = (\pb_n[1]~input_o\ & ((\extender_inst|current_state.UP1~q\) # ((!\extender_inst|current_state.UP0~q\)))) # (!\pb_n[1]~input_o\ & (((!\extender_inst|Equal0~0_combout\ & !\extender_inst|current_state.UP0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datab => \extender_inst|current_state.UP1~q\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \extender_inst|current_state.UP0~q\,
	combout => \extender_inst|Selector2~0_combout\);

\extender_inst|next_state.UP0_112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|next_state.UP0_112~combout\ = (\xy_motion_inst|Selector10~0_combout\ & (\extender_inst|Selector2~0_combout\)) # (!\xy_motion_inst|Selector10~0_combout\ & ((\extender_inst|next_state.UP0_112~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extender_inst|Selector2~0_combout\,
	datac => \extender_inst|next_state.UP0_112~combout\,
	datad => \xy_motion_inst|Selector10~0_combout\,
	combout => \extender_inst|next_state.UP0_112~combout\);

\extender_inst|current_state.UP0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|current_state.UP0~0_combout\ = !\extender_inst|next_state.UP0_112~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|next_state.UP0_112~combout\,
	combout => \extender_inst|current_state.UP0~0_combout\);

\extender_inst|current_state.UP0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_inst|current_state.UP0~0_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.UP0~q\);

\extender_register_inst|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~2_combout\ = (\extender_register_inst|sreg\(1) & (\extender_inst|current_state.UP0~q\ & !\extender_inst|current_state.UP1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(1),
	datab => \extender_inst|current_state.UP0~q\,
	datad => \extender_inst|current_state.UP1~q\,
	combout => \extender_register_inst|sreg~2_combout\);

\extender_register_inst|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_register_inst|sreg~2_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(0));

\extender_register_inst|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~1_combout\ = (\extender_inst|current_state.UP0~q\ & ((\extender_inst|current_state.UP1~q\ & (\extender_register_inst|sreg\(0))) # (!\extender_inst|current_state.UP1~q\ & ((\extender_register_inst|sreg\(2)))))) # 
-- (!\extender_inst|current_state.UP0~q\ & (\extender_register_inst|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(0),
	datab => \extender_register_inst|sreg\(2),
	datac => \extender_inst|current_state.UP0~q\,
	datad => \extender_inst|current_state.UP1~q\,
	combout => \extender_register_inst|sreg~1_combout\);

\extender_register_inst|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_register_inst|sreg~1_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(1));

\extender_register_inst|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~0_combout\ = (\extender_inst|current_state.UP0~q\ & ((\extender_inst|current_state.UP1~q\ & (\extender_register_inst|sreg\(1))) # (!\extender_inst|current_state.UP1~q\ & ((\extender_register_inst|sreg\(3)))))) # 
-- (!\extender_inst|current_state.UP0~q\ & (\extender_register_inst|sreg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(1),
	datab => \extender_register_inst|sreg\(3),
	datac => \extender_inst|current_state.UP0~q\,
	datad => \extender_inst|current_state.UP1~q\,
	combout => \extender_register_inst|sreg~0_combout\);

\extender_register_inst|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \extender_register_inst|sreg~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(2));

\extender_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Equal0~0_combout\ = (!\extender_register_inst|sreg\(2) & (!\extender_register_inst|sreg\(1) & (!\extender_register_inst|sreg\(0) & !\extender_register_inst|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(2),
	datab => \extender_register_inst|sreg\(1),
	datac => \extender_register_inst|sreg\(0),
	datad => \extender_register_inst|sreg\(3),
	combout => \extender_inst|Equal0~0_combout\);

\xy_motion_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector2~0_combout\ = (\xy_motion_inst|current_state.HOLD_ERROR~q\) # (!\xy_motion_inst|current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	datad => \xy_motion_inst|current_state.HOLD~q\,
	combout => \xy_motion_inst|Selector2~0_combout\);

\xy_motion_inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector2~1_combout\ = (!\pb_n[2]~input_o\ & ((\xy_motion_inst|current_state.PRESSED~q\) # ((\extender_inst|Equal0~0_combout\ & \xy_motion_inst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.PRESSED~q\,
	datab => \extender_inst|Equal0~0_combout\,
	datac => \xy_motion_inst|Selector2~0_combout\,
	datad => \pb_n[2]~input_o\,
	combout => \xy_motion_inst|Selector2~1_combout\);

\xy_motion_inst|current_state.PRESSED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \xy_motion_inst|Selector2~1_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.PRESSED~q\);

\xy_motion_inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector7~0_combout\ = (!\extender_inst|Equal0~0_combout\ & ((\pb_n[2]~input_o\ & (\xy_motion_inst|current_state.PRESSED~q\)) # (!\pb_n[2]~input_o\ & ((!\xy_motion_inst|current_state.HOLD~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.PRESSED~q\,
	datab => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.HOLD~q\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \xy_motion_inst|Selector7~0_combout\);

\xy_motion_inst|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector7~1_combout\ = (\Clk~input_o\ & ((\xy_motion_inst|Selector7~0_combout\) # ((\xy_motion_inst|current_state.HOLD_ERROR~q\ & !\extender_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clk~input_o\,
	datab => \xy_motion_inst|Selector7~0_combout\,
	datac => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \xy_motion_inst|Selector7~1_combout\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\grappler_inst|next_state~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|next_state~5_combout\ = (!\grappler_inst|current_state.CLOSED1~q\ & (!\pb_n[0]~input_o\ & \grappler_inst|current_state.OPEN0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.CLOSED1~q\,
	datab => \pb_n[0]~input_o\,
	datad => \grappler_inst|current_state.OPEN0~q\,
	combout => \grappler_inst|next_state~5_combout\);

\grappler_inst|current_state.OPEN1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \grappler_inst|next_state~5_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.OPEN1~q\);

\grappler_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|Selector1~0_combout\ = (\grappler_inst|current_state.OPEN0~q\ & (\pb_n[0]~input_o\ & !\grappler_inst|current_state.OPEN1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.OPEN0~q\,
	datab => \pb_n[0]~input_o\,
	datad => \grappler_inst|current_state.OPEN1~q\,
	combout => \grappler_inst|Selector1~0_combout\);

\grappler_inst|current_state.CLOSED0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \grappler_inst|Selector1~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.CLOSED0~q\);

\grappler_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|Selector0~0_combout\ = ((\grappler_inst|current_state.CLOSED1~q\) # (\grappler_inst|current_state.CLOSED0~q\)) # (!\pb_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datac => \grappler_inst|current_state.CLOSED1~q\,
	datad => \grappler_inst|current_state.CLOSED0~q\,
	combout => \grappler_inst|Selector0~0_combout\);

\grappler_inst|current_state.OPEN0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \grappler_inst|Selector0~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.OPEN0~q\);

\grappler_inst|next_state~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|next_state~4_combout\ = (!\pb_n[0]~input_o\ & ((\grappler_inst|current_state.CLOSED1~q\) # (!\grappler_inst|current_state.OPEN0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datab => \grappler_inst|current_state.OPEN0~q\,
	datad => \grappler_inst|current_state.CLOSED1~q\,
	combout => \grappler_inst|next_state~4_combout\);

\grappler_inst|current_state.CLOSED1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \grappler_inst|next_state~4_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.CLOSED1~q\);

\grappler_inst|grappler_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|grappler_on~0_combout\ = (\grappler_inst|current_state.CLOSED1~q\) # (!\grappler_inst|current_state.OPEN0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.CLOSED1~q\,
	datad => \grappler_inst|current_state.OPEN0~q\,
	combout => \grappler_inst|grappler_on~0_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_xreg(0) <= \xreg[0]~output_o\;

ww_xreg(1) <= \xreg[1]~output_o\;

ww_xreg(2) <= \xreg[2]~output_o\;

ww_xreg(3) <= \xreg[3]~output_o\;

ww_yreg(0) <= \yreg[0]~output_o\;

ww_yreg(1) <= \yreg[1]~output_o\;

ww_yreg(2) <= \yreg[2]~output_o\;

ww_yreg(3) <= \yreg[3]~output_o\;

ww_xPOS(0) <= \xPOS[0]~output_o\;

ww_xPOS(1) <= \xPOS[1]~output_o\;

ww_xPOS(2) <= \xPOS[2]~output_o\;

ww_xPOS(3) <= \xPOS[3]~output_o\;

ww_yPOS(0) <= \yPOS[0]~output_o\;

ww_yPOS(1) <= \yPOS[1]~output_o\;

ww_yPOS(2) <= \yPOS[2]~output_o\;

ww_yPOS(3) <= \yPOS[3]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


