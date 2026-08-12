`timescale 1ns/1ps
module RAM_32X64_TB;

reg         clk;
reg         reset;
reg         we;
reg  [31:0] wdata;
reg  [5:0]  waddr;
reg  [5:0]  raddr1;
reg  [5:0]  raddr2;

wire [31:0] rdata1;
wire [31:0] rdata2;

RAM_32X64 RAM0 (.*);
always #5 clk = ~clk;

initial begin

  clk    = 1'b0;
  reset  = 1'b1;
  we     = 1'b0;
  wdata  = 32'b0;
  waddr  = 6'b0;
  raddr1 = 6'b0;
  raddr2 = 6'b0;
  #10;

  reset = 1'b0;
  @(negedge clk);
  we    = 1'b1;
  waddr = 6'd5;
  wdata = 32'h12345678;
  @(posedge clk);
  #1;

   
  we     = 1'b0;
  raddr1 = 6'd5;
  #1;

  $display("Time=%0t | Read Addr1=%0d | Data1=%h", $time, raddr1, rdata1);
  @(negedge clk);
  we    = 1'b1;
  waddr = 6'd10;
  wdata = 32'hABCDEF01;
  @(posedge clk);
  #1;

  we     = 1'b0;
  raddr1 = 6'd5;
  raddr2 = 6'd10;
  #1;

  $display("Time=%0t | Addr1=%0d Data1=%h | Addr2=%0d Data2=%h", $time, raddr1, rdata1, raddr2, rdata2);
  @(negedge clk);
  we    = 1'b1;
  waddr = 6'd20;
  wdata = 32'hDEADBEEF;
  @(posedge clk);
  #1;

  we     = 1'b0;
  raddr1 = 6'd20;
  raddr2 = 6'd5;
  #1;
  $display("Time=%0t | Addr1=%0d Data1=%h | Addr2=%0d Data2=%h", $time, raddr1, rdata1, raddr2, rdata2);
  #10 $stop;
  end
endmodule