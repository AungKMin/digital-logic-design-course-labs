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

-- DATE "03/29/2022 11:33:39"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Clk	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~2_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~4_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~6_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~8_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~10_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~12_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~14_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~16_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~18_cout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~19_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~4_cout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \extender_inst|Selector2~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector3~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \xy_motion_inst|Selector4~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector6~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector6~1_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \y_comparator|AEQB~0_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \xy_motion_inst|Selector5~0_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \x_counter_inst|process_0~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \x_counter_inst|process_0~3_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~2_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~4_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~5_combout\ : std_logic;
SIGNAL \x_counter_inst|process_0~6_combout\ : std_logic;
SIGNAL \x_counter_inst|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \x_comparator|AEQB~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Decoder_Section~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector3~1_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.RELEASE~q\ : std_logic;
SIGNAL \xy_motion_inst|Selector10~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector10~1_combout\ : std_logic;
SIGNAL \extender_inst|current_state.UP0~q\ : std_logic;
SIGNAL \extender_inst|Selector1~0_combout\ : std_logic;
SIGNAL \extender_inst|current_state.DOWN1~q\ : std_logic;
SIGNAL \extender_inst|Equal1~0_combout\ : std_logic;
SIGNAL \extender_inst|Selector0~0_combout\ : std_logic;
SIGNAL \extender_inst|current_state.DOWN0~q\ : std_logic;
SIGNAL \extender_inst|Selector3~0_combout\ : std_logic;
SIGNAL \extender_inst|current_state.UP1~q\ : std_logic;
SIGNAL \extender_register_inst|sreg~3_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg[3]~feeder_combout\ : std_logic;
SIGNAL \extender_inst|Selector4~0_combout\ : std_logic;
SIGNAL \extender_inst|Selector4~1_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg~0_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg~1_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg[1]~feeder_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg~2_combout\ : std_logic;
SIGNAL \extender_register_inst|sreg[0]~feeder_combout\ : std_logic;
SIGNAL \extender_inst|Equal0~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector1~2_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.HOLD_ERROR~q\ : std_logic;
SIGNAL \xy_motion_inst|Selector0~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector0~1_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.HOLD~q\ : std_logic;
SIGNAL \xy_motion_inst|Selector2~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|current_state.PRESSED~q\ : std_logic;
SIGNAL \x_counter_inst|process_0~1_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~2_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~1_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~3_combout\ : std_logic;
SIGNAL \y_counter_inst|process_0~4_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector7~0_combout\ : std_logic;
SIGNAL \xy_motion_inst|Selector7~1_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \grappler_inst|next_state~4_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.CLOSED1~q\ : std_logic;
SIGNAL \grappler_inst|next_state~5_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.OPEN1~q\ : std_logic;
SIGNAL \grappler_inst|Selector1~0_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.CLOSED0~q\ : std_logic;
SIGNAL \grappler_inst|Selector0~0_combout\ : std_logic;
SIGNAL \grappler_inst|current_state.OPEN0~q\ : std_logic;
SIGNAL \grappler_inst|grappler_on~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \y_counter_inst|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_counter_inst|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \extender_register_inst|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y_register|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_register|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \grappler_inst|ALT_INV_grappler_on~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_Selector|clk_divider:counter[23]~q\);
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
\grappler_inst|ALT_INV_grappler_on~0_combout\ <= NOT \grappler_inst|grappler_on~0_combout\;
\inst3|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst3|clk_proc:COUNT[10]~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X10_Y17_N2
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

-- Location: IOOBUF_X10_Y20_N23
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

-- Location: IOOBUF_X10_Y21_N23
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

-- Location: IOOBUF_X10_Y22_N23
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X6_Y0_N23
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

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y20_N4
\inst3|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[0]~0_combout\ = !\inst3|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clk_proc:COUNT[0]~q\,
	combout => \inst3|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X15_Y20_N5
\inst3|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X15_Y20_N10
\Clock_Selector|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~1_combout\ = (\Clock_Selector|clk_divider:counter[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\Clock_Selector|clk_divider:counter[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ & VCC))
-- \Clock_Selector|clk_divider:counter[1]~2\ = CARRY((\Clock_Selector|clk_divider:counter[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[1]~2\);

-- Location: FF_X15_Y20_N11
\Clock_Selector|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X15_Y20_N12
\Clock_Selector|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[2]~1_combout\ = (\Clock_Selector|clk_divider:counter[2]~q\ & (!\Clock_Selector|clk_divider:counter[1]~2\)) # (!\Clock_Selector|clk_divider:counter[2]~q\ & ((\Clock_Selector|clk_divider:counter[1]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[2]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[1]~2\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~2\,
	combout => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[2]~2\);

-- Location: FF_X15_Y20_N13
\Clock_Selector|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X15_Y20_N14
\Clock_Selector|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[3]~1_combout\ = (\Clock_Selector|clk_divider:counter[3]~q\ & (\Clock_Selector|clk_divider:counter[2]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[3]~q\ & (!\Clock_Selector|clk_divider:counter[2]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[3]~2\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\Clock_Selector|clk_divider:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[2]~2\,
	combout => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[3]~2\);

-- Location: FF_X15_Y20_N15
\Clock_Selector|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X15_Y20_N16
\Clock_Selector|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[4]~1_combout\ = (\Clock_Selector|clk_divider:counter[4]~q\ & (!\Clock_Selector|clk_divider:counter[3]~2\)) # (!\Clock_Selector|clk_divider:counter[4]~q\ & ((\Clock_Selector|clk_divider:counter[3]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[4]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[3]~2\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[3]~2\,
	combout => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[4]~2\);

-- Location: FF_X15_Y20_N17
\Clock_Selector|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X15_Y20_N18
\Clock_Selector|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[5]~1_combout\ = (\Clock_Selector|clk_divider:counter[5]~q\ & (\Clock_Selector|clk_divider:counter[4]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[5]~q\ & (!\Clock_Selector|clk_divider:counter[4]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[5]~2\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\Clock_Selector|clk_divider:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[4]~2\,
	combout => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[5]~2\);

-- Location: FF_X15_Y20_N19
\Clock_Selector|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X15_Y20_N20
\Clock_Selector|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[6]~1_combout\ = (\Clock_Selector|clk_divider:counter[6]~q\ & (!\Clock_Selector|clk_divider:counter[5]~2\)) # (!\Clock_Selector|clk_divider:counter[6]~q\ & ((\Clock_Selector|clk_divider:counter[5]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[6]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[5]~2\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[5]~2\,
	combout => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[6]~2\);

-- Location: FF_X15_Y20_N21
\Clock_Selector|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X15_Y20_N22
\Clock_Selector|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[7]~1_combout\ = (\Clock_Selector|clk_divider:counter[7]~q\ & (\Clock_Selector|clk_divider:counter[6]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[7]~q\ & (!\Clock_Selector|clk_divider:counter[6]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[7]~2\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\Clock_Selector|clk_divider:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[6]~2\,
	combout => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[7]~2\);

-- Location: FF_X15_Y20_N23
\Clock_Selector|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X15_Y20_N24
\Clock_Selector|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[8]~1_combout\ = (\Clock_Selector|clk_divider:counter[8]~q\ & (!\Clock_Selector|clk_divider:counter[7]~2\)) # (!\Clock_Selector|clk_divider:counter[8]~q\ & ((\Clock_Selector|clk_divider:counter[7]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[8]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[7]~2\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[7]~2\,
	combout => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[8]~2\);

-- Location: FF_X15_Y20_N25
\Clock_Selector|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X15_Y20_N26
\Clock_Selector|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[9]~1_combout\ = (\Clock_Selector|clk_divider:counter[9]~q\ & (\Clock_Selector|clk_divider:counter[8]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[9]~q\ & (!\Clock_Selector|clk_divider:counter[8]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[9]~2\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\Clock_Selector|clk_divider:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[8]~2\,
	combout => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[9]~2\);

-- Location: FF_X15_Y20_N27
\Clock_Selector|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X16_Y20_N4
\inst3|clk_proc:COUNT[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~2_cout\ = CARRY((\Clock_Selector|clk_divider:counter[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	cout => \inst3|clk_proc:COUNT[10]~2_cout\);

-- Location: LCCOMB_X16_Y20_N6
\inst3|clk_proc:COUNT[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~4_cout\ = CARRY((!\inst3|clk_proc:COUNT[10]~2_cout\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~2_cout\,
	cout => \inst3|clk_proc:COUNT[10]~4_cout\);

-- Location: LCCOMB_X16_Y20_N8
\inst3|clk_proc:COUNT[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~6_cout\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\inst3|clk_proc:COUNT[10]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~4_cout\,
	cout => \inst3|clk_proc:COUNT[10]~6_cout\);

-- Location: LCCOMB_X16_Y20_N10
\inst3|clk_proc:COUNT[10]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~8_cout\ = CARRY((!\inst3|clk_proc:COUNT[10]~6_cout\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~6_cout\,
	cout => \inst3|clk_proc:COUNT[10]~8_cout\);

-- Location: LCCOMB_X16_Y20_N12
\inst3|clk_proc:COUNT[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~10_cout\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\inst3|clk_proc:COUNT[10]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~8_cout\,
	cout => \inst3|clk_proc:COUNT[10]~10_cout\);

-- Location: LCCOMB_X16_Y20_N14
\inst3|clk_proc:COUNT[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~12_cout\ = CARRY((!\inst3|clk_proc:COUNT[10]~10_cout\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~10_cout\,
	cout => \inst3|clk_proc:COUNT[10]~12_cout\);

-- Location: LCCOMB_X16_Y20_N16
\inst3|clk_proc:COUNT[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~14_cout\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\inst3|clk_proc:COUNT[10]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~12_cout\,
	cout => \inst3|clk_proc:COUNT[10]~14_cout\);

-- Location: LCCOMB_X16_Y20_N18
\inst3|clk_proc:COUNT[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~16_cout\ = CARRY((!\inst3|clk_proc:COUNT[10]~14_cout\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~14_cout\,
	cout => \inst3|clk_proc:COUNT[10]~16_cout\);

-- Location: LCCOMB_X16_Y20_N20
\inst3|clk_proc:COUNT[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~18_cout\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\inst3|clk_proc:COUNT[10]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[10]~16_cout\,
	cout => \inst3|clk_proc:COUNT[10]~18_cout\);

-- Location: LCCOMB_X16_Y20_N22
\inst3|clk_proc:COUNT[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~19_combout\ = \inst3|clk_proc:COUNT[10]~q\ $ (\inst3|clk_proc:COUNT[10]~18_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[10]~q\,
	cin => \inst3|clk_proc:COUNT[10]~18_cout\,
	combout => \inst3|clk_proc:COUNT[10]~19_combout\);

-- Location: FF_X16_Y20_N23
\inst3|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X15_Y20_N28
\Clock_Selector|clk_divider:counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~4_cout\ = CARRY((!\Clock_Selector|clk_divider:counter[9]~2\) # (!\inst3|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[9]~2\,
	cout => \Clock_Selector|clk_divider:counter[1]~4_cout\);

-- Location: LCCOMB_X15_Y20_N30
\Clock_Selector|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[11]~1_combout\ = (\Clock_Selector|clk_divider:counter[11]~q\ & (\Clock_Selector|clk_divider:counter[1]~4_cout\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[11]~q\ & (!\Clock_Selector|clk_divider:counter[1]~4_cout\ 
-- & VCC))
-- \Clock_Selector|clk_divider:counter[11]~2\ = CARRY((\Clock_Selector|clk_divider:counter[11]~q\ & !\Clock_Selector|clk_divider:counter[1]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~4_cout\,
	combout => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[11]~2\);

-- Location: FF_X15_Y20_N31
\Clock_Selector|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X15_Y19_N0
\Clock_Selector|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[12]~1_combout\ = (\Clock_Selector|clk_divider:counter[12]~q\ & (!\Clock_Selector|clk_divider:counter[11]~2\)) # (!\Clock_Selector|clk_divider:counter[12]~q\ & ((\Clock_Selector|clk_divider:counter[11]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[12]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[11]~2\) # (!\Clock_Selector|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[11]~2\,
	combout => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[12]~2\);

-- Location: FF_X15_Y19_N1
\Clock_Selector|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X15_Y19_N2
\Clock_Selector|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[13]~1_combout\ = (\Clock_Selector|clk_divider:counter[13]~q\ & (\Clock_Selector|clk_divider:counter[12]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[13]~q\ & (!\Clock_Selector|clk_divider:counter[12]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[13]~2\ = CARRY((\Clock_Selector|clk_divider:counter[13]~q\ & !\Clock_Selector|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[12]~2\,
	combout => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[13]~2\);

-- Location: FF_X15_Y19_N3
\Clock_Selector|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X15_Y19_N4
\Clock_Selector|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[14]~1_combout\ = (\Clock_Selector|clk_divider:counter[14]~q\ & (!\Clock_Selector|clk_divider:counter[13]~2\)) # (!\Clock_Selector|clk_divider:counter[14]~q\ & ((\Clock_Selector|clk_divider:counter[13]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[14]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[13]~2\) # (!\Clock_Selector|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[13]~2\,
	combout => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[14]~2\);

-- Location: FF_X15_Y19_N5
\Clock_Selector|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X15_Y19_N6
\Clock_Selector|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[15]~1_combout\ = (\Clock_Selector|clk_divider:counter[15]~q\ & (\Clock_Selector|clk_divider:counter[14]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[15]~q\ & (!\Clock_Selector|clk_divider:counter[14]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[15]~2\ = CARRY((\Clock_Selector|clk_divider:counter[15]~q\ & !\Clock_Selector|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[14]~2\,
	combout => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[15]~2\);

-- Location: FF_X15_Y19_N7
\Clock_Selector|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X15_Y19_N8
\Clock_Selector|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[16]~1_combout\ = (\Clock_Selector|clk_divider:counter[16]~q\ & (!\Clock_Selector|clk_divider:counter[15]~2\)) # (!\Clock_Selector|clk_divider:counter[16]~q\ & ((\Clock_Selector|clk_divider:counter[15]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[16]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[15]~2\) # (!\Clock_Selector|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[15]~2\,
	combout => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[16]~2\);

-- Location: FF_X15_Y19_N9
\Clock_Selector|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X15_Y19_N10
\Clock_Selector|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[17]~1_combout\ = (\Clock_Selector|clk_divider:counter[17]~q\ & (\Clock_Selector|clk_divider:counter[16]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[17]~q\ & (!\Clock_Selector|clk_divider:counter[16]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[17]~2\ = CARRY((\Clock_Selector|clk_divider:counter[17]~q\ & !\Clock_Selector|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[16]~2\,
	combout => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[17]~2\);

-- Location: FF_X15_Y19_N11
\Clock_Selector|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X15_Y19_N12
\Clock_Selector|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[18]~1_combout\ = (\Clock_Selector|clk_divider:counter[18]~q\ & (!\Clock_Selector|clk_divider:counter[17]~2\)) # (!\Clock_Selector|clk_divider:counter[18]~q\ & ((\Clock_Selector|clk_divider:counter[17]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[18]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[17]~2\) # (!\Clock_Selector|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[17]~2\,
	combout => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[18]~2\);

-- Location: FF_X15_Y19_N13
\Clock_Selector|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X15_Y19_N14
\Clock_Selector|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[19]~1_combout\ = (\Clock_Selector|clk_divider:counter[19]~q\ & (\Clock_Selector|clk_divider:counter[18]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[19]~q\ & (!\Clock_Selector|clk_divider:counter[18]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[19]~2\ = CARRY((\Clock_Selector|clk_divider:counter[19]~q\ & !\Clock_Selector|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[18]~2\,
	combout => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[19]~2\);

-- Location: FF_X15_Y19_N15
\Clock_Selector|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X15_Y19_N16
\Clock_Selector|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[20]~1_combout\ = (\Clock_Selector|clk_divider:counter[20]~q\ & (!\Clock_Selector|clk_divider:counter[19]~2\)) # (!\Clock_Selector|clk_divider:counter[20]~q\ & ((\Clock_Selector|clk_divider:counter[19]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[20]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[19]~2\) # (!\Clock_Selector|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[19]~2\,
	combout => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[20]~2\);

-- Location: FF_X15_Y19_N17
\Clock_Selector|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X15_Y19_N18
\Clock_Selector|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[21]~1_combout\ = (\Clock_Selector|clk_divider:counter[21]~q\ & (\Clock_Selector|clk_divider:counter[20]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[21]~q\ & (!\Clock_Selector|clk_divider:counter[20]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[21]~2\ = CARRY((\Clock_Selector|clk_divider:counter[21]~q\ & !\Clock_Selector|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[20]~2\,
	combout => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[21]~2\);

-- Location: FF_X15_Y19_N19
\Clock_Selector|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X15_Y19_N20
\Clock_Selector|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[22]~1_combout\ = (\Clock_Selector|clk_divider:counter[22]~q\ & (!\Clock_Selector|clk_divider:counter[21]~2\)) # (!\Clock_Selector|clk_divider:counter[22]~q\ & ((\Clock_Selector|clk_divider:counter[21]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[22]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[21]~2\) # (!\Clock_Selector|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[21]~2\,
	combout => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[22]~2\);

-- Location: FF_X15_Y19_N21
\Clock_Selector|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X15_Y19_N22
\Clock_Selector|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[23]~1_combout\ = \Clock_Selector|clk_divider:counter[22]~2\ $ (!\Clock_Selector|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Selector|clk_divider:counter[23]~q\,
	cin => \Clock_Selector|clk_divider:counter[22]~2\,
	combout => \Clock_Selector|clk_divider:counter[23]~1_combout\);

-- Location: FF_X15_Y19_N23
\Clock_Selector|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G6
\Clock_Selector|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N29
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

-- Location: IOIBUF_X9_Y0_N22
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

-- Location: LCCOMB_X14_Y17_N10
\extender_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector2~0_combout\ = (\extender_inst|current_state.UP0~q\ & (((!\pb_n[1]~input_o\) # (!\extender_inst|current_state.UP1~q\)))) # (!\extender_inst|current_state.UP0~q\ & (\extender_inst|Equal0~0_combout\ & ((!\pb_n[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \extender_inst|current_state.UP1~q\,
	datac => \extender_inst|current_state.UP0~q\,
	datad => \pb_n[1]~input_o\,
	combout => \extender_inst|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y17_N18
\xy_motion_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector3~0_combout\ = (\pb_n[2]~input_o\ & \xy_motion_inst|current_state.PRESSED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.PRESSED~q\,
	combout => \xy_motion_inst|Selector3~0_combout\);

-- Location: IOIBUF_X10_Y19_N15
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

-- Location: LCCOMB_X15_Y17_N30
\xy_motion_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector4~0_combout\ = (!\pb_n[2]~input_o\ & (!\xy_motion_inst|current_state.RELEASE~q\ & (\extender_inst|Equal0~0_combout\ & !\xy_motion_inst|current_state.PRESSED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \xy_motion_inst|current_state.RELEASE~q\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \xy_motion_inst|current_state.PRESSED~q\,
	combout => \xy_motion_inst|Selector4~0_combout\);

-- Location: FF_X15_Y17_N5
\y_register|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[1]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(1));

-- Location: IOIBUF_X10_Y20_N15
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

-- Location: FF_X15_Y17_N9
\y_register|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[3]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(3));

-- Location: IOIBUF_X10_Y19_N22
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

-- Location: FF_X15_Y17_N3
\y_register|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[2]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(2));

-- Location: LCCOMB_X15_Y17_N14
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

-- Location: LCCOMB_X15_Y17_N16
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

-- Location: LCCOMB_X15_Y17_N18
\y_counter_inst|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[3]~10_combout\ = \y_counter_inst|ud_bin_counter\(3) $ (\y_counter_inst|ud_bin_counter[2]~9\ $ (!\y_counter_inst|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|process_0~4_combout\,
	cin => \y_counter_inst|ud_bin_counter[2]~9\,
	combout => \y_counter_inst|ud_bin_counter[3]~10_combout\);

-- Location: FF_X15_Y17_N19
\y_counter_inst|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \y_counter_inst|ud_bin_counter[3]~10_combout\,
	ena => \xy_motion_inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(3));

-- Location: LCCOMB_X15_Y17_N2
\y_counter_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~0_combout\ = (\y_counter_inst|ud_bin_counter\(2) & (\y_register|sreg\(2) & (\y_register|sreg\(3) $ (!\y_counter_inst|ud_bin_counter\(3))))) # (!\y_counter_inst|ud_bin_counter\(2) & (!\y_register|sreg\(2) & (\y_register|sreg\(3) $ 
-- (!\y_counter_inst|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_register|sreg\(3),
	datac => \y_register|sreg\(2),
	datad => \y_counter_inst|ud_bin_counter\(3),
	combout => \y_counter_inst|process_0~0_combout\);

-- Location: LCCOMB_X15_Y17_N8
\xy_motion_inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector6~0_combout\ = (\xy_motion_inst|current_state.RELEASE~q\) # ((\pb_n[2]~input_o\ & \xy_motion_inst|current_state.PRESSED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \xy_motion_inst|current_state.PRESSED~q\,
	combout => \xy_motion_inst|Selector6~0_combout\);

-- Location: LCCOMB_X15_Y17_N24
\xy_motion_inst|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector6~1_combout\ = (\extender_inst|Equal0~0_combout\ & (\xy_motion_inst|Selector6~0_combout\ & ((\y_comparator|AEQB~0_combout\) # (!\y_counter_inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_comparator|AEQB~0_combout\,
	datab => \y_counter_inst|process_0~0_combout\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \xy_motion_inst|Selector6~0_combout\,
	combout => \xy_motion_inst|Selector6~1_combout\);

-- Location: LCCOMB_X14_Y17_N22
\y_counter_inst|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[0]~3_combout\ = \y_counter_inst|ud_bin_counter\(0) $ (\xy_motion_inst|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_counter_inst|ud_bin_counter\(0),
	datad => \xy_motion_inst|Selector6~1_combout\,
	combout => \y_counter_inst|ud_bin_counter[0]~3_combout\);

-- Location: FF_X14_Y17_N23
\y_counter_inst|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \y_counter_inst|ud_bin_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(0));

-- Location: LCCOMB_X15_Y17_N12
\y_counter_inst|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|ud_bin_counter[1]~5_cout\ = CARRY(\y_counter_inst|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_counter_inst|ud_bin_counter\(0),
	datad => VCC,
	cout => \y_counter_inst|ud_bin_counter[1]~5_cout\);

-- Location: FF_X15_Y17_N15
\y_counter_inst|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \y_counter_inst|ud_bin_counter[1]~6_combout\,
	ena => \xy_motion_inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(1));

-- Location: IOIBUF_X0_Y5_N1
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

-- Location: FF_X15_Y17_N23
\y_register|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[0]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sreg\(0));

-- Location: LCCOMB_X15_Y17_N22
\y_comparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_comparator|AEQB~0_combout\ = (\y_register|sreg\(1) & ((\y_register|sreg\(0) $ (\y_counter_inst|ud_bin_counter\(0))) # (!\y_counter_inst|ud_bin_counter\(1)))) # (!\y_register|sreg\(1) & ((\y_counter_inst|ud_bin_counter\(1)) # (\y_register|sreg\(0) $ 
-- (\y_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(1),
	datab => \y_counter_inst|ud_bin_counter\(1),
	datac => \y_register|sreg\(0),
	datad => \y_counter_inst|ud_bin_counter\(0),
	combout => \y_comparator|AEQB~0_combout\);

-- Location: IOIBUF_X10_Y22_N15
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

-- Location: FF_X16_Y17_N9
\x_register|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[5]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(1));

-- Location: LCCOMB_X16_Y17_N10
\xy_motion_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector5~0_combout\ = (\xy_motion_inst|Selector6~0_combout\ & (\extender_inst|Equal0~0_combout\ & ((\x_comparator|AEQB~0_combout\) # (!\x_counter_inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|Selector6~0_combout\,
	datab => \extender_inst|Equal0~0_combout\,
	datac => \x_counter_inst|process_0~0_combout\,
	datad => \x_comparator|AEQB~0_combout\,
	combout => \xy_motion_inst|Selector5~0_combout\);

-- Location: LCCOMB_X17_Y17_N16
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

-- Location: FF_X17_Y17_N17
\x_counter_inst|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \x_counter_inst|ud_bin_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(0));

-- Location: LCCOMB_X16_Y17_N0
\x_counter_inst|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[1]~5_cout\ = CARRY(\x_counter_inst|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_counter_inst|ud_bin_counter\(0),
	datad => VCC,
	cout => \x_counter_inst|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X16_Y17_N2
\x_counter_inst|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[1]~6_combout\ = (\x_counter_inst|process_0~6_combout\ & ((\x_counter_inst|ud_bin_counter\(1) & (!\x_counter_inst|ud_bin_counter[1]~5_cout\)) # (!\x_counter_inst|ud_bin_counter\(1) & 
-- ((\x_counter_inst|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\x_counter_inst|process_0~6_combout\ & ((\x_counter_inst|ud_bin_counter\(1) & (\x_counter_inst|ud_bin_counter[1]~5_cout\ & VCC)) # (!\x_counter_inst|ud_bin_counter\(1) & 
-- (!\x_counter_inst|ud_bin_counter[1]~5_cout\))))
-- \x_counter_inst|ud_bin_counter[1]~7\ = CARRY((\x_counter_inst|process_0~6_combout\ & ((!\x_counter_inst|ud_bin_counter[1]~5_cout\) # (!\x_counter_inst|ud_bin_counter\(1)))) # (!\x_counter_inst|process_0~6_combout\ & (!\x_counter_inst|ud_bin_counter\(1) & 
-- !\x_counter_inst|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~6_combout\,
	datab => \x_counter_inst|ud_bin_counter\(1),
	datad => VCC,
	cin => \x_counter_inst|ud_bin_counter[1]~5_cout\,
	combout => \x_counter_inst|ud_bin_counter[1]~6_combout\,
	cout => \x_counter_inst|ud_bin_counter[1]~7\);

-- Location: LCCOMB_X16_Y17_N4
\x_counter_inst|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[2]~8_combout\ = ((\x_counter_inst|process_0~6_combout\ $ (\x_counter_inst|ud_bin_counter\(2) $ (\x_counter_inst|ud_bin_counter[1]~7\)))) # (GND)
-- \x_counter_inst|ud_bin_counter[2]~9\ = CARRY((\x_counter_inst|process_0~6_combout\ & (\x_counter_inst|ud_bin_counter\(2) & !\x_counter_inst|ud_bin_counter[1]~7\)) # (!\x_counter_inst|process_0~6_combout\ & ((\x_counter_inst|ud_bin_counter\(2)) # 
-- (!\x_counter_inst|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~6_combout\,
	datab => \x_counter_inst|ud_bin_counter\(2),
	datad => VCC,
	cin => \x_counter_inst|ud_bin_counter[1]~7\,
	combout => \x_counter_inst|ud_bin_counter[2]~8_combout\,
	cout => \x_counter_inst|ud_bin_counter[2]~9\);

-- Location: FF_X16_Y17_N5
\x_counter_inst|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \x_counter_inst|ud_bin_counter[2]~8_combout\,
	ena => \xy_motion_inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(2));

-- Location: LCCOMB_X16_Y17_N6
\x_counter_inst|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|ud_bin_counter[3]~10_combout\ = \x_counter_inst|ud_bin_counter\(3) $ (\x_counter_inst|ud_bin_counter[2]~9\ $ (!\x_counter_inst|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datad => \x_counter_inst|process_0~6_combout\,
	cin => \x_counter_inst|ud_bin_counter[2]~9\,
	combout => \x_counter_inst|ud_bin_counter[3]~10_combout\);

-- Location: FF_X16_Y17_N7
\x_counter_inst|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \x_counter_inst|ud_bin_counter[3]~10_combout\,
	ena => \xy_motion_inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(3));

-- Location: IOIBUF_X1_Y10_N15
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

-- Location: FF_X16_Y17_N15
\x_register|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[7]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(3));

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: FF_X16_Y17_N29
\x_register|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[6]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(2));

-- Location: LCCOMB_X16_Y17_N28
\x_counter_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~0_combout\ = (\x_counter_inst|ud_bin_counter\(3) & (\x_register|sreg\(3) & (\x_register|sreg\(2) $ (!\x_counter_inst|ud_bin_counter\(2))))) # (!\x_counter_inst|ud_bin_counter\(3) & (!\x_register|sreg\(3) & (\x_register|sreg\(2) $ 
-- (!\x_counter_inst|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_register|sreg\(3),
	datac => \x_register|sreg\(2),
	datad => \x_counter_inst|ud_bin_counter\(2),
	combout => \x_counter_inst|process_0~0_combout\);

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: FF_X16_Y17_N31
\x_register|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[4]~input_o\,
	sload => VCC,
	ena => \xy_motion_inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sreg\(0));

-- Location: LCCOMB_X16_Y17_N8
\x_counter_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~3_combout\ = (\x_counter_inst|ud_bin_counter\(1) & (\x_register|sreg\(0) & (\x_register|sreg\(1) & !\x_counter_inst|ud_bin_counter\(0)))) # (!\x_counter_inst|ud_bin_counter\(1) & ((\x_register|sreg\(1)) # ((\x_register|sreg\(0) & 
-- !\x_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sreg\(0),
	datab => \x_counter_inst|ud_bin_counter\(1),
	datac => \x_register|sreg\(1),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \x_counter_inst|process_0~3_combout\);

-- Location: LCCOMB_X16_Y17_N14
\x_counter_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~2_combout\ = (\x_counter_inst|ud_bin_counter\(3) & (\x_register|sreg\(2) & (\x_register|sreg\(3) & !\x_counter_inst|ud_bin_counter\(2)))) # (!\x_counter_inst|ud_bin_counter\(3) & ((\x_register|sreg\(3)) # ((\x_register|sreg\(2) & 
-- !\x_counter_inst|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_register|sreg\(2),
	datac => \x_register|sreg\(3),
	datad => \x_counter_inst|ud_bin_counter\(2),
	combout => \x_counter_inst|process_0~2_combout\);

-- Location: LCCOMB_X16_Y17_N24
\x_counter_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~4_combout\ = (\x_counter_inst|process_0~0_combout\ & (\x_comparator|AEQB~0_combout\ & ((\x_counter_inst|process_0~3_combout\) # (\x_counter_inst|process_0~2_combout\)))) # (!\x_counter_inst|process_0~0_combout\ & 
-- (((\x_counter_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~0_combout\,
	datab => \x_comparator|AEQB~0_combout\,
	datac => \x_counter_inst|process_0~3_combout\,
	datad => \x_counter_inst|process_0~2_combout\,
	combout => \x_counter_inst|process_0~4_combout\);

-- Location: LCCOMB_X15_Y17_N20
\x_counter_inst|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~5_combout\ = (\xy_motion_inst|current_state.RELEASE~q\ & \extender_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \x_counter_inst|process_0~5_combout\);

-- Location: LCCOMB_X16_Y17_N22
\x_counter_inst|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~6_combout\ = (\x_counter_inst|process_0~4_combout\ & ((\x_counter_inst|process_0~1_combout\) # ((\xy_motion_inst|Decoder_Section~0_combout\ & \x_counter_inst|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|process_0~4_combout\,
	datab => \xy_motion_inst|Decoder_Section~0_combout\,
	datac => \x_counter_inst|process_0~1_combout\,
	datad => \x_counter_inst|process_0~5_combout\,
	combout => \x_counter_inst|process_0~6_combout\);

-- Location: FF_X16_Y17_N3
\x_counter_inst|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \x_counter_inst|ud_bin_counter[1]~6_combout\,
	ena => \xy_motion_inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_counter_inst|ud_bin_counter\(1));

-- Location: LCCOMB_X16_Y17_N30
\x_comparator|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_comparator|AEQB~0_combout\ = (\x_register|sreg\(1) & ((\x_register|sreg\(0) $ (\x_counter_inst|ud_bin_counter\(0))) # (!\x_counter_inst|ud_bin_counter\(1)))) # (!\x_register|sreg\(1) & ((\x_counter_inst|ud_bin_counter\(1)) # (\x_register|sreg\(0) $ 
-- (\x_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sreg\(1),
	datab => \x_counter_inst|ud_bin_counter\(1),
	datac => \x_register|sreg\(0),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \x_comparator|AEQB~0_combout\);

-- Location: LCCOMB_X15_Y17_N28
\xy_motion_inst|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Decoder_Section~0_combout\ = (\y_comparator|AEQB~0_combout\) # (((\x_comparator|AEQB~0_combout\) # (!\x_counter_inst|process_0~0_combout\)) # (!\y_counter_inst|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_comparator|AEQB~0_combout\,
	datab => \y_counter_inst|process_0~0_combout\,
	datac => \x_comparator|AEQB~0_combout\,
	datad => \x_counter_inst|process_0~0_combout\,
	combout => \xy_motion_inst|Decoder_Section~0_combout\);

-- Location: LCCOMB_X14_Y17_N6
\xy_motion_inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector3~1_combout\ = (\extender_inst|Equal0~0_combout\ & ((\xy_motion_inst|Selector3~0_combout\) # ((\xy_motion_inst|current_state.RELEASE~q\ & \xy_motion_inst|Decoder_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \xy_motion_inst|Selector3~0_combout\,
	datac => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \xy_motion_inst|Decoder_Section~0_combout\,
	combout => \xy_motion_inst|Selector3~1_combout\);

-- Location: FF_X14_Y17_N7
\xy_motion_inst|current_state.RELEASE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \xy_motion_inst|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.RELEASE~q\);

-- Location: LCCOMB_X15_Y17_N6
\xy_motion_inst|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector10~0_combout\ = (\xy_motion_inst|current_state.RELEASE~q\ & (\extender_inst|Equal0~0_combout\ & \xy_motion_inst|Decoder_Section~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xy_motion_inst|current_state.RELEASE~q\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \xy_motion_inst|Decoder_Section~0_combout\,
	combout => \xy_motion_inst|Selector10~0_combout\);

-- Location: LCCOMB_X14_Y17_N2
\xy_motion_inst|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector10~1_combout\ = (!\xy_motion_inst|Selector10~0_combout\ & (((!\extender_inst|Equal0~0_combout\) # (!\xy_motion_inst|current_state.PRESSED~q\)) # (!\pb_n[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \xy_motion_inst|current_state.PRESSED~q\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \xy_motion_inst|Selector10~0_combout\,
	combout => \xy_motion_inst|Selector10~1_combout\);

-- Location: FF_X14_Y17_N11
\extender_inst|current_state.UP0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_inst|Selector2~0_combout\,
	ena => \xy_motion_inst|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.UP0~q\);

-- Location: LCCOMB_X14_Y17_N20
\extender_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector1~0_combout\ = (!\pb_n[1]~input_o\ & ((\extender_inst|current_state.DOWN1~q\) # ((\extender_inst|Equal0~0_combout\ & !\extender_inst|current_state.UP0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \extender_inst|current_state.UP0~q\,
	datac => \extender_inst|current_state.DOWN1~q\,
	datad => \pb_n[1]~input_o\,
	combout => \extender_inst|Selector1~0_combout\);

-- Location: FF_X14_Y17_N21
\extender_inst|current_state.DOWN1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_inst|Selector1~0_combout\,
	ena => \xy_motion_inst|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.DOWN1~q\);

-- Location: LCCOMB_X12_Y17_N22
\extender_inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Equal1~0_combout\ = (\extender_register_inst|sreg\(1) & (\extender_register_inst|sreg\(2) & (\extender_register_inst|sreg\(3) & \extender_register_inst|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(1),
	datab => \extender_register_inst|sreg\(2),
	datac => \extender_register_inst|sreg\(3),
	datad => \extender_register_inst|sreg\(0),
	combout => \extender_inst|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y17_N26
\extender_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector0~0_combout\ = (\pb_n[1]~input_o\ & ((\extender_inst|current_state.DOWN1~q\) # ((\extender_inst|current_state.DOWN0~q\)))) # (!\pb_n[1]~input_o\ & (((\extender_inst|current_state.DOWN0~q\ & !\extender_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datab => \extender_inst|current_state.DOWN1~q\,
	datac => \extender_inst|current_state.DOWN0~q\,
	datad => \extender_inst|Equal1~0_combout\,
	combout => \extender_inst|Selector0~0_combout\);

-- Location: FF_X14_Y17_N27
\extender_inst|current_state.DOWN0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_inst|Selector0~0_combout\,
	ena => \xy_motion_inst|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.DOWN0~q\);

-- Location: LCCOMB_X14_Y17_N4
\extender_inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector3~0_combout\ = (!\pb_n[1]~input_o\ & ((\extender_inst|current_state.UP1~q\) # ((\extender_inst|current_state.DOWN0~q\ & \extender_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|current_state.DOWN0~q\,
	datab => \pb_n[1]~input_o\,
	datac => \extender_inst|current_state.UP1~q\,
	datad => \extender_inst|Equal1~0_combout\,
	combout => \extender_inst|Selector3~0_combout\);

-- Location: FF_X14_Y17_N5
\extender_inst|current_state.UP1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_inst|Selector3~0_combout\,
	ena => \xy_motion_inst|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_inst|current_state.UP1~q\);

-- Location: LCCOMB_X11_Y17_N14
\extender_register_inst|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~3_combout\ = (\extender_register_inst|sreg\(2)) # ((!\extender_inst|current_state.UP1~q\ & \extender_inst|current_state.UP0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \extender_register_inst|sreg\(2),
	datac => \extender_inst|current_state.UP1~q\,
	datad => \extender_inst|current_state.UP0~q\,
	combout => \extender_register_inst|sreg~3_combout\);

-- Location: LCCOMB_X12_Y17_N18
\extender_register_inst|sreg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg[3]~feeder_combout\ = \extender_register_inst|sreg~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \extender_register_inst|sreg~3_combout\,
	combout => \extender_register_inst|sreg[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y17_N18
\extender_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector4~0_combout\ = (\extender_inst|Equal0~0_combout\ & (\extender_inst|current_state.DOWN0~q\ & ((!\extender_inst|Equal1~0_combout\)))) # (!\extender_inst|Equal0~0_combout\ & (((\extender_inst|current_state.DOWN0~q\ & 
-- !\extender_inst|Equal1~0_combout\)) # (!\extender_inst|current_state.UP0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \extender_inst|current_state.DOWN0~q\,
	datac => \extender_inst|current_state.UP0~q\,
	datad => \extender_inst|Equal1~0_combout\,
	combout => \extender_inst|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
\extender_inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Selector4~1_combout\ = (\extender_inst|Selector4~0_combout\) # ((\pb_n[1]~input_o\ & ((\extender_inst|current_state.UP1~q\) # (\extender_inst|current_state.DOWN1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|current_state.UP1~q\,
	datab => \pb_n[1]~input_o\,
	datac => \extender_inst|current_state.DOWN1~q\,
	datad => \extender_inst|Selector4~0_combout\,
	combout => \extender_inst|Selector4~1_combout\);

-- Location: FF_X12_Y17_N19
\extender_register_inst|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_register_inst|sreg[3]~feeder_combout\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(3));

-- Location: LCCOMB_X12_Y17_N28
\extender_register_inst|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~0_combout\ = (\extender_inst|current_state.UP0~q\ & ((\extender_inst|current_state.UP1~q\ & ((\extender_register_inst|sreg\(1)))) # (!\extender_inst|current_state.UP1~q\ & (\extender_register_inst|sreg\(3))))) # 
-- (!\extender_inst|current_state.UP0~q\ & (((\extender_register_inst|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(3),
	datab => \extender_inst|current_state.UP0~q\,
	datac => \extender_register_inst|sreg\(1),
	datad => \extender_inst|current_state.UP1~q\,
	combout => \extender_register_inst|sreg~0_combout\);

-- Location: FF_X12_Y17_N29
\extender_register_inst|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_register_inst|sreg~0_combout\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(2));

-- Location: LCCOMB_X11_Y17_N2
\extender_register_inst|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~1_combout\ = (\extender_inst|current_state.UP1~q\ & (((\extender_register_inst|sreg\(0))))) # (!\extender_inst|current_state.UP1~q\ & ((\extender_inst|current_state.UP0~q\ & (\extender_register_inst|sreg\(2))) # 
-- (!\extender_inst|current_state.UP0~q\ & ((\extender_register_inst|sreg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(2),
	datab => \extender_register_inst|sreg\(0),
	datac => \extender_inst|current_state.UP1~q\,
	datad => \extender_inst|current_state.UP0~q\,
	combout => \extender_register_inst|sreg~1_combout\);

-- Location: LCCOMB_X12_Y17_N30
\extender_register_inst|sreg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg[1]~feeder_combout\ = \extender_register_inst|sreg~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \extender_register_inst|sreg~1_combout\,
	combout => \extender_register_inst|sreg[1]~feeder_combout\);

-- Location: FF_X12_Y17_N31
\extender_register_inst|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_register_inst|sreg[1]~feeder_combout\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(1));

-- Location: LCCOMB_X11_Y17_N24
\extender_register_inst|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg~2_combout\ = (\extender_register_inst|sreg\(1) & (!\extender_inst|current_state.UP1~q\ & \extender_inst|current_state.UP0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(1),
	datac => \extender_inst|current_state.UP1~q\,
	datad => \extender_inst|current_state.UP0~q\,
	combout => \extender_register_inst|sreg~2_combout\);

-- Location: LCCOMB_X12_Y17_N12
\extender_register_inst|sreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_register_inst|sreg[0]~feeder_combout\ = \extender_register_inst|sreg~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \extender_register_inst|sreg~2_combout\,
	combout => \extender_register_inst|sreg[0]~feeder_combout\);

-- Location: FF_X12_Y17_N13
\extender_register_inst|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \extender_register_inst|sreg[0]~feeder_combout\,
	ena => \extender_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \extender_register_inst|sreg\(0));

-- Location: LCCOMB_X12_Y17_N24
\extender_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \extender_inst|Equal0~0_combout\ = (!\extender_register_inst|sreg\(0) & (!\extender_register_inst|sreg\(3) & (!\extender_register_inst|sreg\(1) & !\extender_register_inst|sreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_register_inst|sreg\(0),
	datab => \extender_register_inst|sreg\(3),
	datac => \extender_register_inst|sreg\(1),
	datad => \extender_register_inst|sreg\(2),
	combout => \extender_inst|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\xy_motion_inst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector1~2_combout\ = (!\extender_inst|Equal0~0_combout\ & ((\xy_motion_inst|current_state.HOLD_ERROR~q\) # ((\xy_motion_inst|current_state.PRESSED~q\ & \pb_n[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \xy_motion_inst|current_state.PRESSED~q\,
	datac => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	datad => \pb_n[2]~input_o\,
	combout => \xy_motion_inst|Selector1~2_combout\);

-- Location: FF_X14_Y17_N29
\xy_motion_inst|current_state.HOLD_ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \xy_motion_inst|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.HOLD_ERROR~q\);

-- Location: LCCOMB_X14_Y17_N0
\xy_motion_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector0~0_combout\ = (\extender_inst|Equal0~0_combout\ & ((\xy_motion_inst|current_state.HOLD_ERROR~q\) # ((!\xy_motion_inst|current_state.HOLD~q\ & \pb_n[2]~input_o\)))) # (!\extender_inst|Equal0~0_combout\ & 
-- (!\xy_motion_inst|current_state.HOLD~q\ & (\pb_n[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \xy_motion_inst|current_state.HOLD~q\,
	datac => \pb_n[2]~input_o\,
	datad => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	combout => \xy_motion_inst|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y17_N24
\xy_motion_inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector0~1_combout\ = (!\xy_motion_inst|Selector0~0_combout\ & (((\extender_inst|Equal0~0_combout\ & \xy_motion_inst|Decoder_Section~0_combout\)) # (!\xy_motion_inst|current_state.RELEASE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \extender_inst|Equal0~0_combout\,
	datab => \xy_motion_inst|Decoder_Section~0_combout\,
	datac => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \xy_motion_inst|Selector0~0_combout\,
	combout => \xy_motion_inst|Selector0~1_combout\);

-- Location: FF_X14_Y17_N25
\xy_motion_inst|current_state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \xy_motion_inst|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.HOLD~q\);

-- Location: LCCOMB_X14_Y17_N14
\xy_motion_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector2~0_combout\ = (!\pb_n[2]~input_o\ & ((\xy_motion_inst|current_state.PRESSED~q\) # (!\xy_motion_inst|current_state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.PRESSED~q\,
	datad => \xy_motion_inst|current_state.HOLD~q\,
	combout => \xy_motion_inst|Selector2~0_combout\);

-- Location: FF_X14_Y17_N15
\xy_motion_inst|current_state.PRESSED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \xy_motion_inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xy_motion_inst|current_state.PRESSED~q\);

-- Location: LCCOMB_X15_Y17_N0
\x_counter_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_counter_inst|process_0~1_combout\ = (\xy_motion_inst|current_state.PRESSED~q\ & (\pb_n[2]~input_o\ & (!\xy_motion_inst|current_state.RELEASE~q\ & \extender_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xy_motion_inst|current_state.PRESSED~q\,
	datab => \pb_n[2]~input_o\,
	datac => \xy_motion_inst|current_state.RELEASE~q\,
	datad => \extender_inst|Equal0~0_combout\,
	combout => \x_counter_inst|process_0~1_combout\);

-- Location: LCCOMB_X15_Y17_N4
\y_counter_inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~2_combout\ = (\y_counter_inst|ud_bin_counter\(1) & (\y_register|sreg\(0) & (\y_register|sreg\(1) & !\y_counter_inst|ud_bin_counter\(0)))) # (!\y_counter_inst|ud_bin_counter\(1) & ((\y_register|sreg\(1)) # ((\y_register|sreg\(0) & 
-- !\y_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(0),
	datab => \y_counter_inst|ud_bin_counter\(1),
	datac => \y_register|sreg\(1),
	datad => \y_counter_inst|ud_bin_counter\(0),
	combout => \y_counter_inst|process_0~2_combout\);

-- Location: LCCOMB_X14_Y17_N12
\y_counter_inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~1_combout\ = (\y_register|sreg\(3) & (((\y_register|sreg\(2) & !\y_counter_inst|ud_bin_counter\(2))) # (!\y_counter_inst|ud_bin_counter\(3)))) # (!\y_register|sreg\(3) & (\y_register|sreg\(2) & 
-- (!\y_counter_inst|ud_bin_counter\(2) & !\y_counter_inst|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sreg\(2),
	datab => \y_counter_inst|ud_bin_counter\(2),
	datac => \y_register|sreg\(3),
	datad => \y_counter_inst|ud_bin_counter\(3),
	combout => \y_counter_inst|process_0~1_combout\);

-- Location: LCCOMB_X15_Y17_N26
\y_counter_inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~3_combout\ = (\y_counter_inst|process_0~0_combout\ & (\y_comparator|AEQB~0_combout\ & ((\y_counter_inst|process_0~2_combout\) # (\y_counter_inst|process_0~1_combout\)))) # (!\y_counter_inst|process_0~0_combout\ & 
-- (((\y_counter_inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_comparator|AEQB~0_combout\,
	datab => \y_counter_inst|process_0~0_combout\,
	datac => \y_counter_inst|process_0~2_combout\,
	datad => \y_counter_inst|process_0~1_combout\,
	combout => \y_counter_inst|process_0~3_combout\);

-- Location: LCCOMB_X15_Y17_N10
\y_counter_inst|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_counter_inst|process_0~4_combout\ = (\y_counter_inst|process_0~3_combout\ & ((\x_counter_inst|process_0~1_combout\) # (\xy_motion_inst|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_counter_inst|process_0~1_combout\,
	datac => \y_counter_inst|process_0~3_combout\,
	datad => \xy_motion_inst|Selector10~0_combout\,
	combout => \y_counter_inst|process_0~4_combout\);

-- Location: FF_X15_Y17_N17
\y_counter_inst|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \y_counter_inst|ud_bin_counter[2]~8_combout\,
	ena => \xy_motion_inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_counter_inst|ud_bin_counter\(2));

-- Location: LCCOMB_X13_Y17_N14
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\y_counter_inst|ud_bin_counter\(3) & ((\y_counter_inst|ud_bin_counter\(0) & ((\y_counter_inst|ud_bin_counter\(1)))) # (!\y_counter_inst|ud_bin_counter\(0) & (\y_counter_inst|ud_bin_counter\(2))))) # 
-- (!\y_counter_inst|ud_bin_counter\(3) & (\y_counter_inst|ud_bin_counter\(2) & (\y_counter_inst|ud_bin_counter\(0) $ (\y_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y17_N20
\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\x_counter_inst|ud_bin_counter\(3) & ((\x_counter_inst|ud_bin_counter\(0) & ((\x_counter_inst|ud_bin_counter\(1)))) # (!\x_counter_inst|ud_bin_counter\(0) & (\x_counter_inst|ud_bin_counter\(2))))) # 
-- (!\x_counter_inst|ud_bin_counter\(3) & (\x_counter_inst|ud_bin_counter\(2) & (\x_counter_inst|ud_bin_counter\(1) $ (\x_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(2),
	datac => \x_counter_inst|ud_bin_counter\(1),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y17_N30
\inst3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[1]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\inst2|Mux5~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\inst1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux5~0_combout\,
	combout => \inst3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X13_Y17_N12
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\y_counter_inst|ud_bin_counter\(2) & ((\y_counter_inst|ud_bin_counter\(3) & ((!\y_counter_inst|ud_bin_counter\(1)))) # (!\y_counter_inst|ud_bin_counter\(3) & (\y_counter_inst|ud_bin_counter\(0) & 
-- \y_counter_inst|ud_bin_counter\(1))))) # (!\y_counter_inst|ud_bin_counter\(2) & (!\y_counter_inst|ud_bin_counter\(3) & ((\y_counter_inst|ud_bin_counter\(0)) # (\y_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y17_N26
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\x_counter_inst|ud_bin_counter\(3) & (\x_counter_inst|ud_bin_counter\(2) & (!\x_counter_inst|ud_bin_counter\(1)))) # (!\x_counter_inst|ud_bin_counter\(3) & ((\x_counter_inst|ud_bin_counter\(2) & 
-- (\x_counter_inst|ud_bin_counter\(1) & \x_counter_inst|ud_bin_counter\(0))) # (!\x_counter_inst|ud_bin_counter\(2) & ((\x_counter_inst|ud_bin_counter\(1)) # (\x_counter_inst|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(2),
	datac => \x_counter_inst|ud_bin_counter\(1),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y17_N22
\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\inst2|Mux1~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X13_Y17_N20
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\y_counter_inst|ud_bin_counter\(3)) # ((\y_counter_inst|ud_bin_counter\(2) & ((!\y_counter_inst|ud_bin_counter\(1)) # (!\y_counter_inst|ud_bin_counter\(0)))) # (!\y_counter_inst|ud_bin_counter\(2) & 
-- ((\y_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y20_N30
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\x_counter_inst|ud_bin_counter\(3)) # ((\x_counter_inst|ud_bin_counter\(2) & ((!\x_counter_inst|ud_bin_counter\(1)) # (!\x_counter_inst|ud_bin_counter\(0)))) # (!\x_counter_inst|ud_bin_counter\(2) & 
-- ((\x_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(0),
	datac => \x_counter_inst|ud_bin_counter\(2),
	datad => \x_counter_inst|ud_bin_counter\(1),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y17_N26
\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux0~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux0~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X14_Y17_N8
\xy_motion_inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector7~0_combout\ = (!\extender_inst|Equal0~0_combout\ & ((\xy_motion_inst|current_state.HOLD_ERROR~q\) # ((\pb_n[2]~input_o\ & \xy_motion_inst|current_state.PRESSED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \xy_motion_inst|current_state.HOLD_ERROR~q\,
	datac => \extender_inst|Equal0~0_combout\,
	datad => \xy_motion_inst|current_state.PRESSED~q\,
	combout => \xy_motion_inst|Selector7~0_combout\);

-- Location: LCCOMB_X15_Y14_N12
\xy_motion_inst|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \xy_motion_inst|Selector7~1_combout\ = (\Clock_Selector|clk_divider:counter[23]~q\ & \xy_motion_inst|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Selector|clk_divider:counter[23]~q\,
	datad => \xy_motion_inst|Selector7~0_combout\,
	combout => \xy_motion_inst|Selector7~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
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

-- Location: LCCOMB_X11_Y17_N28
\grappler_inst|next_state~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|next_state~4_combout\ = (!\pb_n[0]~input_o\ & ((\grappler_inst|current_state.CLOSED1~q\) # (!\grappler_inst|current_state.OPEN0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datac => \grappler_inst|current_state.CLOSED1~q\,
	datad => \grappler_inst|current_state.OPEN0~q\,
	combout => \grappler_inst|next_state~4_combout\);

-- Location: FF_X11_Y17_N29
\grappler_inst|current_state.CLOSED1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \grappler_inst|next_state~4_combout\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.CLOSED1~q\);

-- Location: LCCOMB_X11_Y17_N18
\grappler_inst|next_state~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|next_state~5_combout\ = (\grappler_inst|current_state.OPEN0~q\ & (!\pb_n[0]~input_o\ & !\grappler_inst|current_state.CLOSED1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.OPEN0~q\,
	datac => \pb_n[0]~input_o\,
	datad => \grappler_inst|current_state.CLOSED1~q\,
	combout => \grappler_inst|next_state~5_combout\);

-- Location: FF_X11_Y17_N19
\grappler_inst|current_state.OPEN1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \grappler_inst|next_state~5_combout\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.OPEN1~q\);

-- Location: LCCOMB_X11_Y17_N12
\grappler_inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|Selector1~0_combout\ = (\grappler_inst|current_state.OPEN0~q\ & (\pb_n[0]~input_o\ & !\grappler_inst|current_state.OPEN1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.OPEN0~q\,
	datac => \pb_n[0]~input_o\,
	datad => \grappler_inst|current_state.OPEN1~q\,
	combout => \grappler_inst|Selector1~0_combout\);

-- Location: FF_X11_Y17_N13
\grappler_inst|current_state.CLOSED0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \grappler_inst|Selector1~0_combout\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.CLOSED0~q\);

-- Location: LCCOMB_X11_Y17_N10
\grappler_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|Selector0~0_combout\ = (\grappler_inst|current_state.CLOSED0~q\) # ((\grappler_inst|current_state.CLOSED1~q\) # (!\pb_n[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.CLOSED0~q\,
	datac => \pb_n[0]~input_o\,
	datad => \grappler_inst|current_state.CLOSED1~q\,
	combout => \grappler_inst|Selector0~0_combout\);

-- Location: FF_X11_Y17_N11
\grappler_inst|current_state.OPEN0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \grappler_inst|Selector0~0_combout\,
	ena => \extender_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \grappler_inst|current_state.OPEN0~q\);

-- Location: LCCOMB_X11_Y17_N20
\grappler_inst|grappler_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \grappler_inst|grappler_on~0_combout\ = (\grappler_inst|current_state.CLOSED1~q\) # (!\grappler_inst|current_state.OPEN0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grappler_inst|current_state.OPEN0~q\,
	datad => \grappler_inst|current_state.CLOSED1~q\,
	combout => \grappler_inst|grappler_on~0_combout\);

-- Location: LCCOMB_X13_Y17_N24
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\y_counter_inst|ud_bin_counter\(2) & (!\y_counter_inst|ud_bin_counter\(1) & ((\y_counter_inst|ud_bin_counter\(3)) # (!\y_counter_inst|ud_bin_counter\(0))))) # (!\y_counter_inst|ud_bin_counter\(2) & 
-- (\y_counter_inst|ud_bin_counter\(0) & (\y_counter_inst|ud_bin_counter\(3) $ (!\y_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y20_N24
\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\x_counter_inst|ud_bin_counter\(2) & (!\x_counter_inst|ud_bin_counter\(1) & ((\x_counter_inst|ud_bin_counter\(3)) # (!\x_counter_inst|ud_bin_counter\(0))))) # (!\x_counter_inst|ud_bin_counter\(2) & 
-- (\x_counter_inst|ud_bin_counter\(0) & (\x_counter_inst|ud_bin_counter\(3) $ (!\x_counter_inst|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(0),
	datac => \x_counter_inst|ud_bin_counter\(2),
	datad => \x_counter_inst|ud_bin_counter\(1),
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux6~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X13_Y17_N10
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\y_counter_inst|ud_bin_counter\(2) & (\y_counter_inst|ud_bin_counter\(3) & ((\y_counter_inst|ud_bin_counter\(1)) # (!\y_counter_inst|ud_bin_counter\(0))))) # (!\y_counter_inst|ud_bin_counter\(2) & 
-- (!\y_counter_inst|ud_bin_counter\(0) & (!\y_counter_inst|ud_bin_counter\(3) & \y_counter_inst|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y17_N16
\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\x_counter_inst|ud_bin_counter\(3) & (\x_counter_inst|ud_bin_counter\(2) & ((\x_counter_inst|ud_bin_counter\(1)) # (!\x_counter_inst|ud_bin_counter\(0))))) # (!\x_counter_inst|ud_bin_counter\(3) & 
-- (!\x_counter_inst|ud_bin_counter\(2) & (\x_counter_inst|ud_bin_counter\(1) & !\x_counter_inst|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(2),
	datac => \x_counter_inst|ud_bin_counter\(1),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y17_N16
\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux4~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst3|DOUT[2]~2_combout\);

-- Location: LCCOMB_X13_Y17_N6
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\y_counter_inst|ud_bin_counter\(1) & ((\y_counter_inst|ud_bin_counter\(2) & (\y_counter_inst|ud_bin_counter\(0))) # (!\y_counter_inst|ud_bin_counter\(2) & (!\y_counter_inst|ud_bin_counter\(0) & 
-- \y_counter_inst|ud_bin_counter\(3))))) # (!\y_counter_inst|ud_bin_counter\(1) & (!\y_counter_inst|ud_bin_counter\(3) & (\y_counter_inst|ud_bin_counter\(2) $ (\y_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y17_N18
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\x_counter_inst|ud_bin_counter\(1) & ((\x_counter_inst|ud_bin_counter\(2) & ((\x_counter_inst|ud_bin_counter\(0)))) # (!\x_counter_inst|ud_bin_counter\(2) & (\x_counter_inst|ud_bin_counter\(3) & 
-- !\x_counter_inst|ud_bin_counter\(0))))) # (!\x_counter_inst|ud_bin_counter\(1) & (!\x_counter_inst|ud_bin_counter\(3) & (\x_counter_inst|ud_bin_counter\(2) $ (\x_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(2),
	datac => \x_counter_inst|ud_bin_counter\(1),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux3~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst3|DOUT[3]~3_combout\);

-- Location: LCCOMB_X13_Y17_N4
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\y_counter_inst|ud_bin_counter\(1) & (((\y_counter_inst|ud_bin_counter\(0) & !\y_counter_inst|ud_bin_counter\(3))))) # (!\y_counter_inst|ud_bin_counter\(1) & ((\y_counter_inst|ud_bin_counter\(2) & 
-- ((!\y_counter_inst|ud_bin_counter\(3)))) # (!\y_counter_inst|ud_bin_counter\(2) & (\y_counter_inst|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_counter_inst|ud_bin_counter\(2),
	datab => \y_counter_inst|ud_bin_counter\(0),
	datac => \y_counter_inst|ud_bin_counter\(3),
	datad => \y_counter_inst|ud_bin_counter\(1),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y17_N12
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\x_counter_inst|ud_bin_counter\(1) & (!\x_counter_inst|ud_bin_counter\(3) & ((\x_counter_inst|ud_bin_counter\(0))))) # (!\x_counter_inst|ud_bin_counter\(1) & ((\x_counter_inst|ud_bin_counter\(2) & 
-- (!\x_counter_inst|ud_bin_counter\(3))) # (!\x_counter_inst|ud_bin_counter\(2) & ((\x_counter_inst|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_counter_inst|ud_bin_counter\(3),
	datab => \x_counter_inst|ud_bin_counter\(2),
	datac => \x_counter_inst|ud_bin_counter\(1),
	datad => \x_counter_inst|ud_bin_counter\(0),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux2~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux2~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux2~0_combout\,
	combout => \inst3|DOUT[4]~4_combout\);

-- Location: IOIBUF_X6_Y0_N15
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

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

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


