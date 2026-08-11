`default_nettype none
module Right_Shift_Register(
  input wire sin,
  input wire clk,
  input wire reset,
  output reg [3:0] sout
);
always@(posedge clk, posedge reset) begin
    if(reset) sout <= 4'b0000;
    else sout <= {sin, sout [3:1]};
  end
endmodule