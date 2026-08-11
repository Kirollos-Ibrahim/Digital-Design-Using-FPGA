module Controller(
  input wire zero,
  input wire [2:0] phase,
  input wire [2:0] opcode,

  output reg sel,
  output reg rd,
  output reg ld_ir,
  output reg halt,
  output reg inc_pc,
  output reg ld_ac,
  output reg ld_pc,
  output reg wr,
  output reg data_e
);

localparam integer HLT = 0,
                   SKZ = 1,
                   ADD = 2,
                   AND = 3,
                   XOR = 4,
                   LDA = 5,
                   STO = 6,
                   JMP = 7;

localparam integer INST_ADDR  = 0,
                   INST_FETCH = 1,
                   INST_LOAD  = 2,
                   IDLE       = 3,
                   OP_ADDR    = 4,
                   OP_FETCH   = 5,
                   ALU_OP     = 6,
                   STORE      = 7;

always@(*) begin
  sel    = 1'b0;
  rd     = 1'b0;
  ld_ir  = 1'b0;
  halt   = 1'b0;
  inc_pc = 1'b0;
  ld_ac  = 1'b0;
  ld_pc  = 1'b0;
  wr     = 1'b0;
  data_e = 1'b0;
  case(phase)
    INST_ADDR : sel = 1;
    INST_FETCH: begin sel = 1; rd = 1; end
    INST_LOAD : begin sel = 1; rd = 1; ld_ir = 1; end
    IDLE      : begin sel = 1; rd = 1; ld_ir = 1; end
    OP_ADDR   : begin if(opcode == 3'b000) halt = 1; inc_pc = 1; end
    OP_FETCH  : if(opcode == ADD | opcode == AND | opcode == XOR | opcode == LDA) rd = 1;
    ALU_OP    : begin if(opcode == ADD | opcode == AND | opcode == XOR | opcode == LDA) rd = 1;
                if(opcode == SKZ && zero) inc_pc = 1;
                if(opcode == JMP) ld_pc = 1;
                if(opcode == STO) data_e = 1; end
    STORE     : begin if(opcode == ADD | opcode == AND | opcode == XOR | opcode == LDA) rd = 1;
                if(opcode == ADD | opcode == AND | opcode == XOR | opcode == LDA) ld_ac = 1;
                if(opcode == JMP) ld_pc = 1;
                if(opcode == STO) wr = 1;
                if(opcode == STO) data_e = 1; end
    endcase
  end
endmodule