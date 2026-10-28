module CLK_GATE (
    input wire CLK,
    input wire CLK_EN,
    output wire GATED_CLK
);

    reg clk_en_latch;
    
    always @(*) begin
        if (!CLK) begin
            clk_en_latch = CLK_EN;
        end
    end
    
    assign GATED_CLK = CLK & clk_en_latch;

endmodule
