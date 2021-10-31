library ieee;
library std;
use ieee.std_logic_1164.all;
use work.micro_assembly_code.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;
use std.env.finish;

entity fake_memory is
end fake_memory;

architecture fake of fake_memory is

    signal RAM : program(0 to 5) := (
        (I_ADD & R0 & R0 & R0 & NU),
        (I_NOP & NU & NU & NU & NU),
        (I_NOP & NU & NU & NU & NU),
        (I_NOP & NU & NU & NU & NU),
        (I_NOP & NU & NU & NU & NU),
        (I_NOP & NU & NU & NU & NU)

        
        -- (I_LDI & R2 & "100000000"),
        -- (I_LDI & R3 & "011111111"),
        -- (I_LDI & R4 & "000001111"),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R3 & NU),
        -- (I_SUB & R2 & R2 & R4 & NU),
        -- (I_LDI & R0 & "000000001"),
        -- (I_ADD & R1 & R0 & R1 & NU),
        -- (I_ST & NU & R2 & R1 & NU),
        -- (I_BRA & "111111111110")
    );
    signal address, Din, Dout : std_logic_vector(15 downto 0);
    signal clk, reset : std_logic := '0';
    signal RW : std_logic;

    --File variable
    file memory_hex_output : text;
    signal initialized : std_logic := '0';
begin
    clk <= not clk after 10 ns;


    -- process(clk)
    -- begin
    --     if rising_edge(clk)
    -- end process;


    -- print_hex : process(clk)
    --     variable instruction_line : line;
    -- begin
    --     if rising_edge(clk) then
    --         if (initialized = '0') then
    --             file_open(memory_hex_output, "output.txt", write_mode);
    --             initialized <= '1';
    --         end if;
    --         if (address = "11111111") then
    --             file_close(memory_hex_output);
    --             assert(false) report "DONE" severity failure;
    --         end if;
    --         write(instruction_line, RAM(to_integer(unsigned(address(7 downto 0)))), right, 16);
    --         writeline(memory_hex_output, instruction_line);
    --         address <= address + 1;
    --     end if;
    -- end process;

    cpu_inst: entity work.cpu
    port map (
      clk     => clk,
      reset   => reset,
      Din     => Din,
      address => address,
      Dout    => Dout,
      RW      => RW
    );

    PROC : process
        variable I : integer := 0;
    begin
        wait until rising_edge(clk);
        reset <= '1';
        wait until rising_edge(clk);
        reset <= '0';
        Din <= RAM(0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        Din <= RAM(1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        Din <= RAM(1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        Din <= RAM(1);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        reset <= '1';
        wait for 2 ns;
        reset <= '0';
        Din <= RAM(0);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        -- while true loop
        --     Din <= RAM(I);
        --     if(I = 22) then
        --         I := 20;
        --     else
        --         I := I + 1;
        --     end if;
        --     wait until rising_edge(clk);
        --     wait until rising_edge(clk);
        --     wait until rising_edge(clk);
        --     wait until rising_edge(clk);
        -- end loop;
        finish;
    end process;
end architecture;