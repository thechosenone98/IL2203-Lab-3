library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- clock divider that always outputs 1 HZ
entity clock_divider is
    generic(
        frequency : integer
        );
    port(
        clk_in, rst : in std_logic;
        clk_out : out std_logic
        );
end clock_divider;

architecture behave of clock_divider is
    signal clk_prescaled : std_logic;
    -- divided by its own freq. limited by ((2**32)-1 )/2; integer'high
    constant prescale : integer := frequency;
    signal count : integer := 0;
    begin
        process(clk_in, rst)
        begin
            if (rst = '0') then --switch to 1 for testbench
                clk_prescaled <= '0';
                count <= 0;
            elsif rising_edge(clk_in) then
                if (count = prescale) then
                    clk_prescaled <= not clk_prescaled;
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            end if;
        end process;
        clk_out <= clk_prescaled; 
end behave;