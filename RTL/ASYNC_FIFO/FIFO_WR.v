module FIFO_WR (
    input wclk,
    input wrst_n,
    input winc,
    input [3:0] wq2_rptr,
    output reg  [3:0] wptr,
    output wire [2:0] waddr,
    output reg wfull
);

reg  [3:0] wbin;
wire [3:0] wbin_next;
wire [3:0] wgray_next;
wire wfull_next;

assign wbin_next = wbin + (winc & ~wfull);

assign wgray_next = (wbin_next >> 1) ^ wbin_next;

assign waddr = wbin[2:0];

assign wfull_next = (wgray_next[3] != wq2_rptr[3]) &&
                    (wgray_next[2] != wq2_rptr[2]) &&
                    (wgray_next[1:0] == wq2_rptr[1:0]);

always @(posedge wclk or negedge wrst_n) 
begin
    if (!wrst_n) 
    begin
        wbin  <= 0;
        wptr  <= 0;
        wfull <= 0;
    end 
    else 
    begin
        wbin  <= wbin_next;
        wptr  <= wgray_next;
        wfull <= wfull_next;
    end
end

endmodule