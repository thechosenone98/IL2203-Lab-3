library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath_fpga is
    generic(
        N : integer := 4;
        M : integer := 3;
        FREQUENCY : integer := 50e6
    );
    port (
        clk, reset, en, ie, oe, readA, readB, write : in std_logic;
        Z_Flag, N_Flag, O_Flag, clk_out : out std_logic;
        Op : in std_logic_vector(2 downto 0);
        WAddr, ra, rb : in std_logic_vector(M-1 downto 0);
        input : in std_logic_vector(N-1 downto 0);
        output : out std_logic_vector(N-1 downto 0)
    );
end datapath_fpga;

architecture structural of datapath_fpga is
    signal clk_divided : std_logic;
begin
    clock_divider : entity work.clock_divider(behave)
    generic map(
        frequency => FREQUENCY
    )
    port map(
        rst => reset,
        clk_in => clk,
        clk_out => clk_divided
    );

    datapath : entity work.datapath(behave)
    generic map(
        N => N,
        M => M
    )
    port map(
        clk => clk_divided,
        clk_out => clk_out,
        reset => reset,
        ie => ie,
        oe => oe,
        en => en,
        write => write,
        readA => readA,
        readB => readB,
        Z_Flag => Z_Flag,
        N_Flag => N_Flag,
        O_Flag => O_Flag,
        Op => Op,
        WAddr => WAddr,
        ra => ra,
        rb => rb,
        input => input,
        output => output
    );
end architecture;