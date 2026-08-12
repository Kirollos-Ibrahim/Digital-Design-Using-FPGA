module RAM_32X64#(
  parameter ADD_WIDTH = 6, DATA_WIDTH = 32
)(
  input wire                     clk,
  input wire                     reset,
  input wire                     we,  
  input wire  [DATA_WIDTH-1 : 0] wdata,
  input wire  [ADD_WIDTH-1 : 0]  waddr,
  input wire  [ADD_WIDTH-1 : 0]  raddr1,
  input wire  [ADD_WIDTH-1 : 0]  raddr2,
  output wire [DATA_WIDTH-1 : 0] rdata1,
  output wire [DATA_WIDTH-1 : 0] rdata2
);
localparam DEPTH = (1 << ADD_WIDTH);
reg [DATA_WIDTH-1 : 0] RAM [0: DEPTH-1];
integer i;

always@(posedge clk or posedge reset) begin
  if(reset) for(i = 0; i < DEPTH ; i = i + 1) RAM[i] <= {DATA_WIDTH{1'b0}};
  else if(we) RAM[waddr] <= wdata;
  end

assign rdata1 = RAM[raddr1];
assign rdata2 = RAM[raddr2];
endmodule