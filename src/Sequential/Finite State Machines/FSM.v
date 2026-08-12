module FSM(
  input wire a,
  input wire b,
  input wire clk,
  input wire reset,
  output reg y0,
  output reg y1
);
localparam S0 = 1'b00,
           S1 = 1'b01,
           S2 = 1'b10;

reg [1:0] Current_State, Next_State;

always@(posedge clk or posedge reset) begin
  if(reset) Current_State <= S0;
  else Current_State <= Next_State;
  end

always@(*) begin: All_Logic
  Next_State = Current_State;
  y0 = 1'b0;
  y1 = 1'b0;
  case(Current_State)
    S0: begin y1 = 1; if(~a) Next_State = S0; if(a & ~b) Next_State = S1; if(a & b) begin Next_State = S2; y0 = 1; end end
    S1: begin y1 = 1; if(~a) Next_State = S1; if(a) Next_State = S0;
    S2: Next_State = S0;
    endcase
  end
endmodule