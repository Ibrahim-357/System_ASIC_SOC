module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8
)(
    input wclk,
    input wclken,
    input [2:0] waddr,
    input [2:0] raddr,
    input [DATA_WIDTH-1:0] wdata,
    output [DATA_WIDTH-1:0] rdata
);

reg [DATA_WIDTH-1:0] mem [0:7];

always @(posedge wclk) 
begin
    if (wclken) 
    begin
        mem[waddr] <= wdata;
    end
end

assign rdata = mem[raddr];

endmodule