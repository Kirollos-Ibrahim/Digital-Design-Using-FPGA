`timescale 1ns/1ps
module Stream_Parity_Gen_TB;
  reg  clk;
  reg  reset;
  reg  serial_in;
  wire parity_out;

Stream_Parity_Gen G1 (.*);

always #5 clk = ~clk;

initial begin
  clk = 1'b0; reset = 1'b1;
  #5

  reset = 1'b0;
  serial_in = 1'b0;
  #10

  serial_in = 1'b0;
  #10

  serial_in = 1'b1;
  #10

  serial_in = 1'b1;
  #10

  serial_in = 1'b0;
  #10

  serial_in = 1'b1;
  #10

  serial_in = 1'b0;
  #10

  serial_in = 1'b1;
  #10 $stop;
  end
endmodule