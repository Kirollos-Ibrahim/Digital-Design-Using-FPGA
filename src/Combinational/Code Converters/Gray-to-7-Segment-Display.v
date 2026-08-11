module Gray_to_7_Seg(
    input [3:0] gray,
    output [6:0] seg
);

wire [3:0] binary;

Binary_to_7_Seg m1(.binary(binary), .seg(seg));
Gray_to_Binary m2(.gray(gray), .binary(binary));

endmodule
