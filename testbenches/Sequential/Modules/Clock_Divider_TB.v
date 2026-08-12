`timescale 1ns/1ps
module Clock_Divider_TB;
  
parameter DIV_RATIO = 10;
localparam CLOCK_PERIOD = 20;
  
reg i_cloc_div_clock_in; 
reg i_cloc_div_reset_n;
wire o_cloc_div_clock_out;

always  #(CLOCK_PERIOD/2) i_cloc_div_clock_in = ~i_cloc_div_clock_in;
 
Clock_Divider CD0 (.*); 
  
initial begin
  i_cloc_div_clock_in = 1'b0;
  i_cloc_div_reset_n = 1'b0;
  #(DIV_RATIO*CLOCK_PERIOD);
      
  i_cloc_div_reset_n = 1'b1;	  
  #(3*DIV_RATIO*CLOCK_PERIOD);

  i_cloc_div_reset_n = 1'b0; 
  #(DIV_RATIO*CLOCK_PERIOD);
      
  i_cloc_div_reset_n = 1'b1;	  
  #(3*DIV_RATIO*CLOCK_PERIOD);
  $stop;
  end
endmodule 