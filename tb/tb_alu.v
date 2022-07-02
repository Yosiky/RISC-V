
module tb_alu();

    reg [4:0] operand;
    reg [31:0]  a;
    reg [31:0]  b;
    wire [31:0] res;
    wire flag;

    RISC_V_ALU alu(operand, a, b, res, flag);

    initial
    begin
        a <= 1;
        b <= 2;
        operand <= 5'b00000;
    end

endmodule