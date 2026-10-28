module PULSE_GEN (
    input wire CLK,
    input wire RST,
    input wire LVL_SIG,
    output wire PULSE_SIG
);

    reg lvl_ff;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            lvl_ff <= 1'b0;
        end
        else begin
            lvl_ff <= LVL_SIG;
        end
    end

    assign PULSE_SIG = LVL_SIG & ~lvl_ff;

endmodule
