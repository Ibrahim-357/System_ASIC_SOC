module data_sampling(
    input wire CLK,
    input wire RST,
    input wire RX_IN,
    input wire [5:0] Prescale,
    input wire [5:0] edge_cnt,
    input wire dat_samp_en,
    output reg sampled_bit
);
reg [2:0] samples;
wire [5:0] half_prescale = (Prescale >> 1); // prescale divided by 2

always @(posedge CLK or negedge RST) 
begin
    if (!RST) 
    begin
        samples <= 3'b0;
        sampled_bit <= 1'b0;
    end 
    else if (dat_samp_en) 
    begin
        // Sample at middle points
        if (edge_cnt == half_prescale - 6'd2) samples[0] <= RX_IN;
        else if (edge_cnt == half_prescale - 6'd1) samples[1] <= RX_IN;
        else if (edge_cnt == half_prescale) samples[2] <= RX_IN;
        
        // Majority vote calculation
        if (edge_cnt == half_prescale + 6'd1) begin
            sampled_bit <= (samples[0] & samples[1]) | (samples[1] & samples[2]) | (samples[0] & samples[2]);
        end
    end
end
endmodule