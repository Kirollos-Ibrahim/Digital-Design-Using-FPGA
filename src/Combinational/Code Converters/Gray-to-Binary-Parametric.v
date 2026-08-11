module Gray_to_Binary #(
    parameter BITS = 4
)(
    input wire [BITS-1:0] gray,
    output reg [BITS-1:0] binary
);
integer k;
always @(*) begin
   binary[BITS-1] = gray[BITS-1];
   for (k = BITS - 2 ;k >= 0 ;k = k - 1) binary[k] = gray[k] ^ binary[k + 1];
   end
endmodule
