module deserializer #(
    parameter DATA_WIDTH = 8
) (
    input wire CLK,
    input wire RST,
    input wire sampled_bit,
    input wire deser_en,
    input wire [5:0] edge_cnt,
    input wire [5:0] Prescale,
    output reg [DATA_WIDTH-1:0] P_DATA
);
always @(posedge CLK or negedge RST) begin
    if (!RST) 
    begin
        P_DATA <= {DATA_WIDTH{1'b0}};
    end 
    else if (deser_en && edge_cnt == Prescale - 1) 
    begin
        P_DATA <= {sampled_bit, P_DATA[DATA_WIDTH-1:1]};
    end
end
endmodule
