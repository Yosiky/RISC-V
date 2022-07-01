`timescale 1ns / 1ps



module RISC_V_ALU
(
	input	[4:0]	operation_i,
	input	[31:0]	operand_a_i,
	input	[31:0]	operand_b_i,
	output	[31:0]	result_o,
	output			flag_o
);

	assign result_o = alu_operation;
	assign flag_o = alu_log_operation;

	function automatic [31:0] alu_operation;
		case (operation_i)
			`ALU_ADD:	alu_operation <= operand_a_i + operand_b_i;
			`ALU_SUB:	alu_operation <= operand_a_i - operand_b_i;
			`ALU_SLL:	alu_operation <= operand_a_i << operand_b_i;
			`ALU_SLT:	alu_operation <= $signed(operand_a_i) < $signed(operand_b_i);
			`ALU_SLTU:	alu_operation <= operand_a_i < operand_b_i;
			`ALU_XOR:	alu_operation <= operand_a_i ^ operand_b_i;
			`ALU_SRL:	alu_operation <= operand_a_i >> operand_b_i;
			`ALU_SRA:	alu_operation <= operand_a_i >>> operand_b_i;
			`ALU_OR:	alu_operation <= operand_a_i | operand_b_i;
			`ALU_AND:	alu_operation <= operand_a_i & operand_b_i;
			default:	alu_operation <= 0;
		endcase
	endfunction

	function automatic alu_log_operation;
		case (operation_i)
			`ALU_BEQ:	alu_log_operation <= operand_a_i == operand_b_i;
			`ALU_BNE:	alu_log_operation <= operand_a_i != operand_b_i;
			`ALU_BLT:	alu_log_operation <= $signed(operand_a_i) < $signed(operand_b_i);
			`ALU_BGE:	alu_log_operation <= $signed(operand_a_i) >= $signed(operand_b_i);
			`ALU
		endcase
	endfunction

endmodule