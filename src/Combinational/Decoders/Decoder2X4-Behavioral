module Decoder2X4_BH(
  input wire [1:0] a,
  input wire en,
  output reg [3:0] b
);
always@(*) begin
  if(en) begin
        case({a[1],a[0]})
          2'b00: {b[3],b[2],b[1],b[0]} = 4'b0001;
          2'b01: {b[3],b[2],b[1],b[0]} = 4'b0010;
          2'b10: {b[3],b[2],b[1],b[0]} = 4'b0100;
          2'b11: {b[3],b[2],b[1],b[0]} = 4'b1000;
        endcase
      end
  end
endmodule