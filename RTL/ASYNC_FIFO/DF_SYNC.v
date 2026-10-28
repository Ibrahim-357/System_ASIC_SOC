module DF_SYNC (
    input clk,
    input rst_n,
    input [3:0] async_in,
    output reg  [3:0] sync_out
);

reg [3:0] q1;

always @(posedge clk or negedge rst_n) 
begin
    if (!rst_n) 
    begin
        q1 <= 4'b0;
        sync_out <= 4'b0;
    end 
    else 
    begin
        q1 <= async_in;
        sync_out <= q1;
    end
end
endmodule