library ieee;
use ieee.std_logic_1164.all;

package micro_assembly_code is
    subtype instruction_code is std_logic_vector(3 downto 0);
    subtype reg_code is std_logic_vector(2 downto 0); -- bit 0 is Enable
    subtype immediate is std_logic_vector(8 downto 0);
    subtype Instruction is std_logic_vector(15 downto 0);
    -- type Instruction is record
    --     INSTRUCTION : std_logic_vector(3 downto 0);
    --     DATA : std_logic_vector(11 downto 0);
    -- end record;
    type program is array(natural range <>) of Instruction;
    -- INSTRUCTION SET
    constant I_ADD:instruction_code := "0000";
    constant I_SUB:instruction_code := "0001";
    constant I_AND:instruction_code := "0010";
    constant I_OR:instruction_code := "0011";
    constant I_XOR:instruction_code := "0100";
    constant I_NOT:instruction_code := "0101";
    constant I_MOV:instruction_code := "0110";
    constant I_NOP:instruction_code := "0111";
    constant I_LD:instruction_code := "1000";
    constant I_ST:instruction_code := "1001";
    constant I_LDI:instruction_code := "1010";
    constant I_NOT_USED:instruction_code := "1011";
    constant I_BRZ:instruction_code := "1100";
    constant I_BRN:instruction_code := "1101";
    constant I_BRO:instruction_code := "1110";
    constant I_BRA:instruction_code := "1111";
    -- register macros
    constant Rx:reg_code :="000";
    constant R0:reg_code :="000";
    constant R1:reg_code :="001";
    constant R2:reg_code :="010";
    constant R3:reg_code :="011";
    constant R4:reg_code :="100";
    constant R5:reg_code :="101";
    constant R6:reg_code :="110";
    constant R7:reg_code :="111";
    --NULL BITFIELD
    constant NU:reg_code := "000";
end micro_assembly_code;