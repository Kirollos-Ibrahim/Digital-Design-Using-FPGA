`timescale 1ns/1ps
module FSM_TB;
  reg a;
  reg b;
  reg clk;
  reg reset;
  wire y0;
  wire y1;

FSM FSM0 (.*);

always #10 clk = ~clk;

initial begin
  clk = 1'b0;
  reset  = 1'b1;
  #10

  reset  = 1'b0;
  {a, b} = 2'b11;
  #10 // #45

  {a, b} = 2'b10;
  #15

  {a, b} = 2'b01;
  #20

  {a, b} = 2'b10;
  #20

  {a, b} = 2'b11;
  #45

  #20 $stop;
  end
endmodule