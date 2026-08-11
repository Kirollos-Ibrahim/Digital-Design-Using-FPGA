`timescale 1ns/1ps
module Right_Shift_Register_TB;
  reg        sin;
  reg        clk;
  reg        reset;
  wire [3:0] sout;

Right_Shift_Register R1 (.*);

always #5 clk = ~clk;

initial begin
  clk = 1'b0; reset = 1'b1; sin = 1'b1;
  #5

  sin = 1'b0;
  reset = 1'b0;
  #10

  sin = 1'b1;
  #10

  sin = 1'b0;
  #10

  sin = 1'b1;
  #10 $stop;
  end
endmodule