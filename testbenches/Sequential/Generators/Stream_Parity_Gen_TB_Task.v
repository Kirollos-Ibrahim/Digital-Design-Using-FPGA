`timescale 1ns / 1ps
module Stream_Parity_Gen_TB_Task;
  reg clk;
  reg reset;
  reg serial_in;
  wire parity_out;

integer i;
integer errors;

Stream_Parity_Gen G1 (.*);

initial begin
  clk = 0;
  forever #5 clk = ~clk;
  end


task apply_check_pattern(input [7:0] pattern);
  integer bit_idx;
  reg expected_parity;
  begin
    expected_parity = ^pattern;
    for (bit_idx = 7; bit_idx >= 0; bit_idx = bit_idx - 1) begin
      @(negedge clk);
      serial_in = pattern[bit_idx];
      end
    @(posedge clk);
    #1;
    if (parity_out !== expected_parity) begin
      $display("ERROR: Pattern %8b | Expected Parity: %b | Got: %b", pattern, expected_parity, parity_out);
      errors = errors + 1;
      end
    end
  endtask
 
initial begin
  
  reset = 1;
  serial_in = 0;
  errors = 0;
  @(negedge clk);
  reset = 0;  

  $display("Starting exhaustive test of all 256 combinations...");

  for (i = 0; i < 256; i = i + 1) apply_check_pattern(i);

  $display("-------------------------------------------------");

   if (errors == 0) $display("SUCCESS: All 256 combinations passed seamlessly!");     
   else $display("FAILED: Test completed with %0d errors.", errors);

   $display("-------------------------------------------------");
   $stop;
   end
endmodule