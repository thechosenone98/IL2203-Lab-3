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

architecture fake_mem_test of fake_memory is

    signal RAM : program(0 to 7) := (
        -- (I_LDI & R0 & "100000000"),
        -- (I_ST & NU & R0 & R1 & NU),
        -- (I_BRA & "111111111111"),

        -- (I_LDI & R0 & "000000001"),
        -- (I_SUB & R1 & R2 & R0 & NU),
        -- (I_NOP & NU & NU & NU & NU)

        -- (I_LDI & R0 & "100000000"),
        -- (I_LDI & R1 & "000000001"),
        -- (I_ST & NU & R0 & R1 & NU),
        -- (I_LD & R2 & R0 & NU & NU),
        -- (I_ADD & R2 & R2 & R2 & NU),
        -- (I_ST & NU & R0 & R2 & NU),

        -- (I_LDI & R5 & "100000000"),
        -- (I_ADD & R5 & R5 & R5 & NU),
        -- (I_ADD & R5 & R5 & R5 & NU),
        -- (I_ADD & R5 & R5 & R5 & NU),
        -- (I_ADD & R5 & R5 & R5 & NU),
        -- (I_LDI & R6 & "000100000"),
        -- (I_LDI & R3 & "000000011"),
        -- (I_ST & NU & R6 & R3 & NU),
        -- (I_LDI & R1 & "000000001"),
        -- (I_LDI & R0 & "000001110"),
        -- (I_MOV & R2 & R0 & NU & NU),
        -- (I_ADD & R2 & R2 & R1 & NU),
        -- (I_SUB & R0 & R0 & R1 & NU),
        -- (I_BRZ & "000000000011"),
        -- (I_NOP & NU & NU & NU & NU),
        -- (I_BRA & "111111111100"),
        -- (I_ST & NU & R6 & R2 & NU),
        -- (I_ST & NU & R5 & R2 & NU),
        -- (I_BRA & "000000000000"),
        -- (I_NOP & NU & NU & NU & NU),
        -- (I_NOP & NU & NU & NU & NU)

        -- (I_LDI & R0 & "000000001"),  -- Store 1 in R0 (used for increment and decrement throughout the code)
        -- (I_LDI & R1 & "000001101"),  -- Load 13 as a loop counter
        -- (I_LDI & R2 & "001000000"),  -- Load 64 as a base address for the led pattern
        -- (I_LDI & R3 & "000001111"),  -- Load the initial led pattern
        -- (I_ST & NU & R2 & R3 & NU),  -- Store the pattern stored in R3 at address R2
        -- (I_ADD & R3 & R3 & R3 & NU), -- Double R3 to shift left
        -- (I_ADD & R2 & R2 & R0 & NU), -- Increment the address in R2
        -- (I_SUB & R1 & R1 & R0 & NU), -- Decrement loop counter
        -- (I_BRZ & "000000000010"),    -- End loop
        -- (I_BRA & "111111111011"),    -- Branch back to start of loop
        -- (I_LDI & R6 & "100000000"),  -- Create 0xF000 in R6
        -- (I_ADD & R6 & R6 & R6 & NU),
        -- (I_ADD & R6 & R6 & R6 & NU),
        -- (I_ADD & R6 & R6 & R6 & NU),
        -- (I_ADD & R6 & R6 & R6 & NU),
        -- (I_LDI & R1 & "000001101"),  -- Load 13 as a loop counter
        -- (I_LDI & R2 & "001000000"),  -- Load 64 as the base address of the stored led pattern
        -- (I_LD & R4 & R2 & NU & NU),  -- Load the pattern stored at R2 in R4
        -- (I_ADD & R2 & R2 & R0 & NU), -- Increment the base address by 1
        -- (I_ST & NU & R6 & R4 & NU),  -- Store the led pattern stored in R4 to the LED output
        -- (I_SUB & R1 & R1 & R0 & NU), -- Decrement the loop counter
        -- (I_BRZ & "000000000010"),    -- End loop
        -- (I_BRA & "111111111011"),    -- Branch back to the start of the loop
        -- (I_LDI & R1 & "000001101"),  -- Load 13 as the loop counter
        -- (I_SUB & R2 & R2 & R0 & NU), -- Decrement the base address by 1
        -- (I_LD & R4 & R2 & NU & NU),  -- Load the pattern stored at R2 in R4
        -- (I_ST & NU & R6 & R4 & NU),  -- Store the led pattern stored in R4 to the LED output
        -- (I_SUB & R1 & R1 & R0 & NU), -- Decrement the loop counter
        -- (I_BRZ & "000000000010"),    -- End loop
        -- (I_BRA & "111111111011"),    -- Branch back to start of loop
        -- (I_BRA & "111111110001")     -- Branch back to start of display loop

        (I_LDI & R0 & "000010000"),
        (I_LD & R1 & R0 & NU & NU),
        (I_LDI & R6 & "100000000"),  -- Create 0xF000 in R6
        (I_ADD & R6 & R6 & R6 & NU),
        (I_ADD & R6 & R6 & R6 & NU),
        (I_ADD & R6 & R6 & R6 & NU),
        (I_ADD & R6 & R6 & R6 & NU),
        (I_ST & NU & R6 & R1 & NU)
    );
    signal address : std_logic_vector(7 downto 0) := "00000000";
    signal clk : std_logic := '0';

    signal reset, RW : std_logic;
    signal Din, Dout : std_logic_vector(15 downto 0);
    --File variable
    file memory_hex_output : text;
    signal initialized : std_logic := '0';
begin
    clk <= not clk after 10 ns;


    -- process(clk)
    -- begin
    --     if rising_edge(clk)
    -- end process;


    print_hex : process(clk)
        variable instruction_line : line;
    begin
        if rising_edge(clk) then
            if (initialized = '0') then
                file_open(memory_hex_output, "output.txt", write_mode);
                initialized <= '1';
            end if;
            write(instruction_line, RAM(to_integer(unsigned(address(7 downto 0)))), right, 16);
            writeline(memory_hex_output, instruction_line);
            if (address = "11111111") then
                file_close(memory_hex_output);
                assert(false) report "DONE" severity failure;
            end if;
            address <= address + 1;
        end if;
    end process;


    -- cpu_inst: entity work.cpu
    --   port map (
    --     clk     => clk,
    --     reset   => reset,
    --     Din     => Din,
    --     address => address,
    --     Dout    => Dout,
    --     RW      => RW
    --   );

    -- PROC : process
    -- begin
    --     wait until rising_edge(clk);
    --     reset <= '1';
    --     wait until rising_edge(clk);
    --     reset <= '0';
    --     for I in 0 to 28 loop
    --         Din <= RAM(I);
    --         wait until rising_edge(clk);
    --         wait until rising_edge(clk);
    --         wait until rising_edge(clk);
    --         wait until rising_edge(clk);
    --     end loop;
    --     finish;
    -- end process;
end architecture;