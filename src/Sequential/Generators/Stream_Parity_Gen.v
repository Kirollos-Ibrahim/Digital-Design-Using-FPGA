module Stream_Parity_Gen(
  input wire  clk,
  input wire  reset,
  input wire  serial_in,
  output wire parity_out
);
reg [7:0] sr;

always@(posedge clk, posedge reset) begin
  if(reset) sr <= 8'b0;
  else sr <= {serial_in, sr[7:1]};
  end

function p_check (input [7:0] in);
  integer i, ones; begin
  p_check = 1; ones = 0;
  for(i = 0; i <= 7; i = i + 1)
    if(in[i] == 1) ones = ones + 1;
  if((ones%2) == 0 | ones == 0) p_check = 0;
  end
endfunction

assign parity_out = p_check(sr);
endmodule