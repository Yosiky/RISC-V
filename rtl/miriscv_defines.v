`ifndef MIRISCV_DEFINES_V
`define MIRISCV_DEFINES_V

// Opcode base instruction set
`define OPCODE_LUI      5'b01101
`define OPCODE_JAL      5'b11011
`define OPCODE_JALR     5'b11001
`define OPCODE_BRANCH   5'b11000
`define OPCODE_LOAD     5'b00000
`define OPCODE_SAVE     5'b01000
`define OPCODE_ALUINT   5'b00100
`define OPCODE_ALU      5'b01100


`define ALU_ADD         5'b00000
`define ALU_SUB         5'b01000
`define ALU_SLL         5'b00001
`define ALU_SLT         5'b00010
`define ALU_SLTU        5'b00011
`define ALU_XOR         5'b00100
`define ALU_SRL         5'b00101
`define ALU_SRA         5'b01101
`define ALU_OR          5'b00110
`define ALU_AND         5'b00111
`define ALU_BEQ         5'b10000
`define ALU_BNE         5'b10001
`define ALU_BLT         5'b10100
`define ALU_BGE         5'b10101
`define ALU_BLTU        5'b10110
`define ALU_BGEU        5'b10111

`endif