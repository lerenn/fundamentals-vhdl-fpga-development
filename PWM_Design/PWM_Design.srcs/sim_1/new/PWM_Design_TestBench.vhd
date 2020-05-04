----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2020 13:28:22
-- Design Name: 
-- Module Name: PWM_Design_TestBench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity PWM_Design_TestBench is
end PWM_Design_TestBench;

architecture test of PWM_Design_TestBench is

constant BIT_DEPTH     : integer := 8;

component PWM
Port(
    Pwm_Out         : out std_logic;
    Duty_Cycle      : in std_logic_vector(BIT_DEPTH - 1 downto 0);
    Clk             : in std_logic;
    Enable          : in std_logic);
end component;

signal Pwm_Out         : std_logic;
signal Duty_Cycle      : std_logic_vector(BIT_DEPTH - 1 downto 0) := "10000000";
signal Clk             : std_logic := '1';
signal Enable          : std_logic := '0';

begin
    dev_to_test: PWM
        port map(Pwm_Out, Duty_Cycle, Clk, Enable);
        
    clk_stimulus: process
    begin
        wait for 10 ns;
        Clk <= not Clk;
    end process clk_stimulus;
end test;
