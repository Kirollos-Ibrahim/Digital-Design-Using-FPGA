module MUX4X1_ST(
  input wire a,
  input wire b,
  input wire c,
  input wire d,
  input wire [1:0] sel,
  output wire y
);
wire mux0;
wire mux1;

MUX2X1_BH MUX0 (.a(a),    .b(b),    .sel(sel[0]), .y(mux0));
MUX2X1_BH MUX1 (.a(c),    .b(d),    .sel(sel[0]), .y(mux1));
MUX2X1_BH MUX2 (.a(mux0), .b(mux1), .sel(sel[1]), .y(y));

endmodule
