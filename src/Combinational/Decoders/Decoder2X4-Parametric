`default_nettype none
module Decoder2X4 #( 
  parameter N = 4
)(
  input wire [($clog2(N))-1:0] A,
  input wire en, 
  output reg [N-1:0] F
);

always@(*) begin
  F = {N{1'b0}};
  if(en) F[A] = 1'b1;
  end
endmodule