module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8
) (
    input W_CLK,
    input W_RST,
    input W_INC,
    input R_CLK,
    input R_RST,
    input R_INC,
    input [DATA_WIDTH-1:0] WR_DATA,
    output [DATA_WIDTH-1:0] RD_DATA,
    output FULL,
    output EMPTY
);

wire [3:0] wptr, rptr;
wire [3:0] wq2_rptr, rq2_wptr;
wire [2:0] waddr, raddr;
wire wclken;

assign wclken = W_INC & ~FULL;

FIFO_MEM_CNTRL #(
    .DATA_WIDTH(DATA_WIDTH)
) u_fifo_mem (
    .wclk(W_CLK),
    .wclken(wclken),
    .waddr(waddr),
    .raddr(raddr),
    .wdata(WR_DATA),
    .rdata(RD_DATA)
);

DF_SYNC u_sync_r2w (
    .clk(W_CLK),
    .rst_n(W_RST),
    .async_in(rptr),
    .sync_out(wq2_rptr)
);

DF_SYNC u_sync_w2r (
    .clk(R_CLK),
    .rst_n(R_RST),
    .async_in(wptr),
    .sync_out(rq2_wptr)
);

FIFO_WR u_fifo_wr (
    .wclk(W_CLK),
    .wrst_n(W_RST),
    .winc(W_INC),
    .wq2_rptr(wq2_rptr),
    .wptr(wptr),
    .waddr(waddr),
    .wfull(FULL)
);

FIFO_RD u_fifo_rd (
    .rclk(R_CLK),
    .rrst_n(R_RST),
    .rinc(R_INC),
    .rq2_wptr(rq2_wptr),
    .rptr(rptr),
    .raddr(raddr),
    .rempty(EMPTY)
);

endmodule