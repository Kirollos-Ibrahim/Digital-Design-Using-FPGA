`timescale 1ns / 1ps
module Decoder2X4_TB;

localparam N_TB = 4;
  
reg [($clog2(N_TB))-1:0] A;
reg en;
wire [N_TB-1:0] F;
  
Decoder2X4 #(.N(N_TB)) Dec0 (.A(A), .en(en), .F(F));  
  
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, Decoder2X4_TB);
	
  en = 1'b0;
  A = 2'b01;
  #10;
	
  en = 1'b0;
  A = 2'b11;
  #10;
	
  en = 1'b1;
  A = 2'b00;
  #10;

  en = 1'b1;
  A = 2'b01;
  #10;	

  en = 1'b1;
  A = 2'b10;
  #10;	

  en = 1'b1;
  A = 2'b11;
  #20;
  $stop;
  end
endmodule