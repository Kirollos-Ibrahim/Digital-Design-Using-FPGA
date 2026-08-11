module MUX2X1_GL(
  input wire a,
  input wire b,
  input wire sel,
  output wire y
);
  wire or0;
  wire or1;
  and a0 (or0, a, !sel);
  and a1 (or1, b,  sel);
  or  o0 (y, or0, or1);
endmodule
