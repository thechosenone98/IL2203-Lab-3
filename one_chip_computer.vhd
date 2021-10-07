library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity one_chip_computer is
    port(
		  clk, reset : in std_logic;
        led_output : out std_logic_vector(15 downto 0);
        clk_out : out std_logic;
        Z_Flag, N_Flag, O_Flag : out std_logic --TESTING
    );
end entity;

architecture top of one_chip_computer is
    constant N: integer := 16;
    constant M: integer := 3;

    signal RW_tmp : std_logic;
    signal Din_tmp, Dout_tmp, address_tmp: std_logic_vector(N-1 downto 0);
    signal ie_activator, oe_activator: std_logic;
    signal clk_divided : std_logic;
begin
    clock_divider_inst: entity work.clock_divider(behave)
      generic map (
        frequency => 10e6
      )
      port map (
        clk_in  => clk,
        rst     => reset,
        clk_out => clk_divided
      );

    cpu_inst: entity work.monster_cpu(behave)
		generic map(
			N => N,
			M => M
		)
      port map (
        clk     => clk_divided,
        reset   => reset,
        Din     => Din_tmp,
        address => address_tmp,
        Dout    => Dout_tmp,
        RW      => RW_tmp,
        Z_Flag_test => Z_Flag,
        N_Flag_test => N_Flag,
        O_Flag_test => O_Flag,
        test_alu => led_output
      );

    gpio_inst: entity work.gpio(behave)
      generic map (
        N => N
      )
      port map (
        clk   => clk_divided,
        reset => reset,
        ie    => ie_activator,
        oe    => oe_activator,
        Din   => Dout_tmp
        -- Dout  => led_output
      );

    memory_inst: entity work.memory(SYN)
      port map (
        address => address_tmp(7 downto 0),
        clock   => clk_divided,
        data    => Dout_tmp,
        wren    => not RW_tmp,
        q       => Din_tmp
      );

    ie_activator <= '1';-- when (address_tmp = "1111000000000000" and (RW_tmp = '0')) else '0';
    oe_activator <= '1';
    clk_out <= clk_divided;
    -- led_output <= address_tmp;
end architecture;