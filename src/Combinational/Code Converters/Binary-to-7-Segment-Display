module Binary_to_7_Seg (
    input [3:0] binary,
    output reg [6:0]seg
);
always @(*) begin
  seg={7{1'b0}};
  case (binary)
    4'b0000 : seg[0] = 1'b1;
    4'b0001 : begin seg[3] = 1'b1; seg[2] = 1'b1; seg[0] = 1'b1; seg[1] = 1'b1; seg[6] = 1'b1; end
    4'b0010 : begin seg[1] = 1'b1; seg[4] = 1'b1; end
    4'b0011 : begin seg[1] = 1'b1; seg[2] = 1'b1; end
    4'b0100 : begin seg[2] = 1'b1; seg[3] = 1'b1; seg[6] = 1'b1; end
    4'b0101 : begin seg[1] = 1'b1; seg[4] = 1'b1; end
    4'b0110 : seg[5] = 1'b1;
    4'b0111 : begin seg[3] = 1'b1; seg[2] = 1'b1; seg[0] = 1'b1; seg[1] = 1'b1; end
    4'b1000 : seg = {7{1'b0}};
    4'b1001 : seg[2] = 1'b1;
    4'b1010 : seg[3] = 1'b1;
    4'b1011 : begin seg[5] = 1'b1; seg[6] = 1'b1; end
    4'b1100 : begin seg[5] = 1'b1; seg[4] = 1'b1; seg[0] = 1'b1; end
    4'b1101 : begin seg[1] = 1'b1; seg[6] = 1'b1; end
    4'b1110 : begin seg[5] = 1'b1; seg[4] = 1'b1; end
    4'b1111 : begin seg[5] = 1'b1; seg[4] = 1'b1; seg[3] = 1'b1; end
    default : seg = {7{1'b0}};
    endcase
  end
endmodule
