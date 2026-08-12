`timescale 1ns/1ps
module Rising_Edge_Detector_TB;

reg clk;
reg level;
wire seq;
wire moore_out;
wire mealy_out;

Rising_Edge_Detector D0 (.*);

always #5 clk = ~clk;

initial begin
  clk = 1'b0;
  level = 0;
  #10

  level = 1;
  #10

  level = 1;
  #10

  level = 0;
  #10

  level = 1;
  #10

  level = 0;
  #10

  level = 0;
  #10

  level = 1;
  #20 $stop;
  end
endmodule