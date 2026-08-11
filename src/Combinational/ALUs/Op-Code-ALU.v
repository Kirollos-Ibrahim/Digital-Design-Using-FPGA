module Op_Code_ALU #(
  parameter WIDTH = 8
)(
  input wire [7:0] in_a,
  input wire [7:0] in_b,
  input wire [2:0] opcode,
  output reg [7:0] alu_out,
  output reg a_is_zero  
);

localparam integer HLT = 0,
                   SKZ = 1,
                   ADD = 2,
                   AND = 3,
                   XOR = 4,
                   LDA = 5,
                   STO = 6,
                   JMP = 7;

always@(*) begin
  alu_out = 8'b0;
  a_is_zero = 1'b0;
  if(in_a == 8'b0) a_is_zero = 1'b1;
  case(opcode)
    HLT: alu_out = in_a;
    SKZ: alu_out = in_a;
    ADD: alu_out = in_a + in_b;
    AND: alu_out = in_a & in_b;
    XOR: alu_out = in_a ^ in_b;
    LDA: alu_out = in_b;
    STO: alu_out = in_a;
    JMP: alu_out = in_a;
    endcase
  end
endmodule