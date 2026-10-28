module Parity_Calc #(
    parameter DATA_WIDTH = 8
) (
    input wire [DATA_WIDTH-1:0] P_Data,
    input wire       Data_Valid,
    input wire       Par_Type,   // 0 for even parity, 1 for odd parity
    input wire       CLK,
    input wire       RST,
    output reg       Par_Bit
);

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        Par_Bit <= 1'b0;
    end
    else if (Data_Valid) begin
        if (Par_Type == 1'b0)
            Par_Bit <= ^P_Data;     
        else 
            Par_Bit <= ~(^P_Data); 
    end
end

endmodule