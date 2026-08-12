`timescale 1ns/1ps
module D_FF_TB;
  reg D;
  reg clk;
  reg reset;
  wire Q; 

D_FF D0 (.*);

always #10 clk = ~clk;

initial begin
  clk = 1'b0; reset = 1'b1;
  D = 1'b1; #10

  reset = 1'b0;
  D = 1'b1; #10

  D = 1'b0; #20
  $stop;
  end
endmodule