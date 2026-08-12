`timescale 1ns/1ps
module CaseX_CaseZ_Comparison_TB;

  reg  [3:0] in;
  wire [1:0] out_x;
  wire       valid_x;
  wire [1:0] out_z;
  wire       valid_z;

Priority_Encoder_CaseX En0 (.in(in), .out(out_x), .valid(valid_x));
Priority_Encoder_CaseZ En1 (.in(in), .out(out_z), .valid(valid_z));

initial begin
  $display("Time | Request | CaseX (Grant, Valid) | CaseZ (Grant, Valid)");
  $display("----------------------------------------------------------");
  $monitor("%4t |  %b   |       (%d, %b)       |       (%d, %b)", 
  $time, in, out_x, valid_x, out_z, valid_z);
  in[3:0] = 3'b1000; #10
  in      = 4'b1000; #10
  in      = 4'b0100; #10
  in      = 4'bx100; #10
  in      = 4'b00x1; #10
  $stop;
  end
endmodule