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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/02/2022 19:45:37"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Class05 IS
    PORT (
	s : IN std_logic;
	r : IN std_logic;
	enable : IN std_logic;
	latchLed : OUT std_logic;
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	clear : IN std_logic
	);
END Class05;

-- Design Ports Information
-- latchLed	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Class05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_latchLed : std_logic;
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clear : std_logic;
SIGNAL \q~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \latchLed~output_o\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg0[0]~output_o\ : std_logic;
SIGNAL \seg0[1]~output_o\ : std_logic;
SIGNAL \seg0[2]~output_o\ : std_logic;
SIGNAL \seg0[3]~output_o\ : std_logic;
SIGNAL \seg0[4]~output_o\ : std_logic;
SIGNAL \seg0[5]~output_o\ : std_logic;
SIGNAL \seg0[6]~output_o\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \q~0clkctrl_outclk\ : std_logic;
SIGNAL \digit1~1_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \digit0~1_combout\ : std_logic;
SIGNAL \digit0~2_combout\ : std_logic;
SIGNAL \digit0~3_combout\ : std_logic;
SIGNAL \digit0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \digit1~0_combout\ : std_logic;
SIGNAL \digit1~3_combout\ : std_logic;
SIGNAL \digit1~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL digit1 : std_logic_vector(3 DOWNTO 0);
SIGNAL digit0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_q~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_q~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;

BEGIN

ww_s <= s;
ww_r <= r;
ww_enable <= enable;
latchLed <= ww_latchLed;
seg1 <= ww_seg1;
seg0 <= ww_seg0;
ww_clear <= clear;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\q~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \q~0_combout\);
\ALT_INV_q~0clkctrl_outclk\ <= NOT \q~0clkctrl_outclk\;
\ALT_INV_q~0_combout\ <= NOT \q~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\latchLed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q~0_combout\,
	devoe => ww_devoe,
	o => \latchLed~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg0[6]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\r~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\s~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y21_N30
\q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\enable~input_o\ & (((\s~input_o\ & \q~0_combout\)) # (!\r~input_o\))) # (!\enable~input_o\ & (((\q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~input_o\,
	datab => \s~input_o\,
	datac => \q~0_combout\,
	datad => \enable~input_o\,
	combout => \q~0_combout\);

-- Location: CLKCTRL_G4
\q~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \q~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \q~0clkctrl_outclk\);

-- Location: LCCOMB_X27_Y28_N6
\digit1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1~1_combout\ = (!digit1(3) & (digit1(1) $ (digit1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datac => digit1(1),
	datad => digit1(0),
	combout => \digit1~1_combout\);

-- Location: IOIBUF_X0_Y23_N1
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: LCCOMB_X27_Y28_N4
\digit0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0~1_combout\ = (!digit0(3) & (digit0(1) $ (digit0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(3),
	datac => digit0(1),
	datad => digit0(0),
	combout => \digit0~1_combout\);

-- Location: FF_X27_Y28_N5
\digit0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit0~1_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(1));

-- Location: LCCOMB_X27_Y28_N18
\digit0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0~2_combout\ = (!digit0(3) & (digit0(2) $ (((digit0(0) & digit0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(3),
	datab => digit0(0),
	datac => digit0(2),
	datad => digit0(1),
	combout => \digit0~2_combout\);

-- Location: FF_X27_Y28_N19
\digit0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit0~2_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(2));

-- Location: LCCOMB_X27_Y28_N8
\digit0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0~3_combout\ = (digit0(2) & (digit0(0) & (!digit0(3) & digit0(1)))) # (!digit0(2) & (!digit0(0) & (digit0(3) & !digit0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(2),
	datab => digit0(0),
	datac => digit0(3),
	datad => digit0(1),
	combout => \digit0~3_combout\);

-- Location: FF_X27_Y28_N9
\digit0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit0~3_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(3));

-- Location: LCCOMB_X27_Y28_N22
\digit0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit0~0_combout\ = (!digit0(0) & (((!digit0(2) & !digit0(1))) # (!digit0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(3),
	datab => digit0(2),
	datac => digit0(0),
	datad => digit0(1),
	combout => \digit0~0_combout\);

-- Location: FF_X27_Y28_N23
\digit0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit0~0_combout\,
	clrn => \clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit0(0));

-- Location: LCCOMB_X27_Y28_N14
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (digit0(3) & ((digit0(0)) # ((digit0(1)) # (digit0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datab => digit0(1),
	datac => digit0(3),
	datad => digit0(2),
	combout => \LessThan0~0_combout\);

-- Location: FF_X27_Y28_N7
\digit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit1~1_combout\,
	clrn => \clear~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(1));

-- Location: LCCOMB_X27_Y28_N20
\digit1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1~0_combout\ = (!digit1(0) & (((!digit1(2) & !digit1(1))) # (!digit1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datab => digit1(2),
	datac => digit1(0),
	datad => digit1(1),
	combout => \digit1~0_combout\);

-- Location: FF_X27_Y28_N21
\digit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit1~0_combout\,
	clrn => \clear~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(0));

-- Location: LCCOMB_X27_Y28_N30
\digit1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1~3_combout\ = (digit1(2) & (digit1(0) & (!digit1(3) & digit1(1)))) # (!digit1(2) & (!digit1(0) & (digit1(3) & !digit1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(1),
	combout => \digit1~3_combout\);

-- Location: FF_X27_Y28_N31
\digit1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit1~3_combout\,
	clrn => \clear~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(3));

-- Location: LCCOMB_X27_Y28_N12
\digit1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1~2_combout\ = (!digit1(3) & (digit1(2) $ (((digit1(0) & digit1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(1),
	combout => \digit1~2_combout\);

-- Location: FF_X27_Y28_N13
\digit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_q~0clkctrl_outclk\,
	d => \digit1~2_combout\,
	clrn => \clear~input_o\,
	ena => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(2));

-- Location: LCCOMB_X27_Y28_N28
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (digit1(2) & (!digit1(3) & ((!digit1(1)) # (!digit1(0))))) # (!digit1(2) & ((digit1(3) $ (digit1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X28_Y28_N0
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (digit1(2) & ((digit1(3)) # ((digit1(0) & digit1(1))))) # (!digit1(2) & ((digit1(1)) # ((digit1(0) & !digit1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(1),
	datad => digit1(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (digit1(0)) # ((digit1(1) & ((digit1(3)))) # (!digit1(1) & (digit1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (digit1(2) & ((digit1(3)) # (digit1(0) $ (!digit1(1))))) # (!digit1(2) & ((digit1(1) & ((digit1(3)))) # (!digit1(1) & (digit1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X28_Y28_N26
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (digit1(2) & (((digit1(3))))) # (!digit1(2) & (digit1(1) & ((digit1(3)) # (!digit1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(1),
	datad => digit1(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (digit1(2) & ((digit1(3)) # (digit1(0) $ (digit1(1))))) # (!digit1(2) & (((digit1(3) & digit1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X27_Y28_N16
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (digit1(2) & (((digit1(3))) # (!digit1(0)))) # (!digit1(2) & ((digit1(3) & ((digit1(1)))) # (!digit1(3) & (digit1(0) & !digit1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(2),
	datab => digit1(0),
	datac => digit1(3),
	datad => digit1(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X28_Y28_N4
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (digit0(1) & (!digit0(3) & ((!digit0(2)) # (!digit0(0))))) # (!digit0(1) & ((digit0(3) $ (digit0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datab => digit0(3),
	datac => digit0(1),
	datad => digit0(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (digit0(0) & ((digit0(1)) # (digit0(3) $ (!digit0(2))))) # (!digit0(0) & ((digit0(2) & (digit0(3))) # (!digit0(2) & ((digit0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datab => digit0(3),
	datac => digit0(1),
	datad => digit0(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (digit0(0)) # ((digit0(1) & ((digit0(3)))) # (!digit0(1) & (digit0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(2),
	datab => digit0(0),
	datac => digit0(3),
	datad => digit0(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X28_Y28_N12
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (digit0(0) & ((digit0(3)) # (digit0(1) $ (!digit0(2))))) # (!digit0(0) & ((digit0(1) & (digit0(3))) # (!digit0(1) & ((digit0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datab => digit0(3),
	datac => digit0(1),
	datad => digit0(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (digit0(2) & (((digit0(3))))) # (!digit0(2) & (digit0(1) & ((digit0(3)) # (!digit0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(2),
	datab => digit0(0),
	datac => digit0(3),
	datad => digit0(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X28_Y28_N22
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (digit0(3) & (((digit0(1)) # (digit0(2))))) # (!digit0(3) & (digit0(2) & (digit0(0) $ (digit0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datab => digit0(3),
	datac => digit0(1),
	datad => digit0(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (digit0(0) & (digit0(3) $ (((!digit0(1) & !digit0(2)))))) # (!digit0(0) & ((digit0(2)) # ((digit0(3) & digit0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit0(0),
	datab => digit0(3),
	datac => digit0(1),
	datad => digit0(2),
	combout => \Mux0~0_combout\);

ww_latchLed <= \latchLed~output_o\;

ww_seg1(0) <= \seg1[0]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg0(0) <= \seg0[0]~output_o\;

ww_seg0(1) <= \seg0[1]~output_o\;

ww_seg0(2) <= \seg0[2]~output_o\;

ww_seg0(3) <= \seg0[3]~output_o\;

ww_seg0(4) <= \seg0[4]~output_o\;

ww_seg0(5) <= \seg0[5]~output_o\;

ww_seg0(6) <= \seg0[6]~output_o\;
END structure;


