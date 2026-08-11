module MUX4X1_BH(
  input wire a,
  input wire b,
  input wire c,
  input wire d,
  input wire [1:0] sel,
  output reg y
);
always@(*) begin
  y = 1'b0;
  case(sel)
    2'b00: y = a;
    2'b01: y = b;
    2'b10: y = c;
    2'b11: y = d;
    endcase
  end
endmodule
