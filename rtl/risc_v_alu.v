`timescale 1ns / 1ps

`include "miriscv_defines.v"

module RISC_V_ALU
(
	input	[4:0]	operation_i,
	input	[31:0]	operand_a_i,
	input	[31:0]	operand_b_i,
	output	[31:0]	result_o,
	output			flag_o
);

	assign result_o = alu_operation(operand_a_i, operand_b_i, operation_i);
	assign flag_o = alu_log_operation(operand_a_i, operand_b_i, operation_i);

	function automatic [31:0] alu_operation;
		input	[31:0]	a;
		input	[31:0]	b;
		input	[4:0]	operation;

		case (operation)
			`ALU_ADD:	alu_operation = a + b;
			`ALU_SUB:	alu_operation = a - b;
			`ALU_SLL:	alu_operation = a << b;
			`ALU_SLT:	alu_operation = $signed(a) < $signed(b);
			`ALU_SLTU:	alu_operation = a < b;
			`ALU_XOR:	alu_operation = a ^ b;
			`ALU_SRL:	alu_operation = a >> b;
			`ALU_SRA:	alu_operation = a >>> b;
			`ALU_OR:	alu_operation = a | b;
			`ALU_AND:	alu_operation = a & b;
			default:	alu_operation = 0;
		endcase
	endfunction

	function automatic alu_log_operation;
		input	[31:0]	a;
		input	[31:0]	b;
		input	[4:0]	operation;

		case (operation)
			`ALU_BEQ:	alu_log_operation = a == b;
			`ALU_BNE:	alu_log_operation = a != b;
			`ALU_BLT:	alu_log_operation = $signed(a) < $signed(b);
			`ALU_BGE:	alu_log_operation = $signed(a) >= $signed(b);
			`ALU_BLTU:	alu_log_operation = a < b;
			`ALU_BGEU:	alu_log_operation = a >=b;
			default:	alu_log_operation = 0;
		endcase
	endfunction

endmodule