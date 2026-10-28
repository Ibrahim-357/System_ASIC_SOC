module FIFO_RD (
    input rclk,
    input rrst_n,
    input rinc,
    input [3:0] rq2_wptr,
    output reg  [3:0] rptr,
    output wire [2:0] raddr,
    output reg rempty
);
reg  [3:0] rbin;
wire [3:0] rbin_next;
wire [3:0] rgray_next;
wire rempty_next;

assign rbin_next = rbin + (rinc & ~rempty);

assign rgray_next = (rbin_next >> 1) ^ rbin_next;

assign raddr = rbin[2:0];

assign rempty_next = (rgray_next == rq2_wptr);

always @(posedge rclk or negedge rrst_n) begin
    if (!rrst_n) begin
        rbin   <= 0;
        rptr   <= 0;
        rempty <= 1'b1;
    end else begin
        rbin   <= rbin_next;
        rptr   <= rgray_next;
        rempty <= rempty_next;
    end
end

endmodule