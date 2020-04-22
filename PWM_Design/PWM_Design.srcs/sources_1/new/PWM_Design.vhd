----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.04.2020 09:37:52
-- Design Name: 
-- Module Name: PWM_Design - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM is
Generic(
    BIT_DEPTH       : integer := 8;
    INPUT_CLK       : integer := 50000000;
    FREQ            : integer := 50);
Port(
    Pwm_Out         : out std_logic;
    Duty_Cycle      : in std_logic_vector(BIT_DEPTH - 1 downto 0);
    Clk             : in std_logic;
    Enable          : in std_logic);
end PWM;

architecture Behavioral of PWM is

begin


end Behavioral;
