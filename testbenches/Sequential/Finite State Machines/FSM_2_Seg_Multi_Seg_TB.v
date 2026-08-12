`timescale 1ns/1ps
module FSM_2_Seg_Multi_Seg_TB;
  reg a;
  reg b;
  reg clk;
  reg rst_n;
  wire y0;
  wire y1;
 
FSM_2_Seg_Multi_Seg FSM (.*);
	 
always #10 clk = ~clk;
	 
initial begin
  clk = 1'b0;
  rst_n  = 1'b0;
  #12; 

  rst_n  = 1'b1;
  {a, b} = 2'b11;
  #10; // #45;

  {a, b} = 2'b10;
  #15;
 
  {a, b} = 2'b01;
  #20;
 
  {a, b} = 2'b10;
  #20;
 
  {a, b} = 2'b11;
  #45;
 
  #20; $stop;
  end
endmodule