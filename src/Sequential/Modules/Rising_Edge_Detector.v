module Rising_Edge_Detector(
    input wire clk,
    input wire level,
    output reg seq,
    output reg moore_out,
    output reg mealy_out
);

localparam LOW  = 2'b00,
           RISE = 2'b01,
           HIGH = 2'b10;

reg [1:0] current_state, next_state;

always @(posedge clk) current_state <= next_state;

always @(*) begin
  next_state = current_state;
  moore_out = 1'b0;
  mealy_out = 1'b0;
  case (current_state)
    LOW: begin
      if(level) begin
        next_state = RISE;
        mealy_out = 1'b1;
        end
      else next_state = LOW;
      end

    RISE: begin
      moore_out = 1'b1;
      if(level)  next_state = HIGH;
      else       next_state = LOW;
      end

    HIGH: begin
    if(level) next_state = HIGH;
    else      next_state = LOW;
    end

    default: next_state = LOW;
    endcase
  end

always @(posedge clk) seq <= (next_state == RISE);
endmodule