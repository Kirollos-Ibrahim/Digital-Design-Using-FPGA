module MUX2X1_BH(
  input wire a,
  input wire b,
  input wire sel,
  output reg y
);
always@(*) begin
  y = 1'b0;
  case(sel)
    1'b0: y = a;
    1'b1: y = b;
    endcase
  end
endmodule
