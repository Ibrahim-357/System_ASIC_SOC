module Serializer #(
    parameter DATA_WIDTH = 8
) (
    input wire [DATA_WIDTH-1:0] P_Data,
    input wire       ser_en,
    input wire       CLK,
    input wire       RST,
    output reg       Ser_Data,
    output reg       Ser_Done
);

integer i;
reg [DATA_WIDTH-1:0] Data_FF;
reg is_transmitting; 

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        Data_FF <= {DATA_WIDTH{1'b0}};
        Ser_Data <= 1'b0;
        Ser_Done <= 1'b0;
        i <= 0;
        is_transmitting <= 1'b0;
    end 
    else if (ser_en) begin 
        Data_FF <= P_Data;
        Ser_Data <= P_Data[0];
        Ser_Done <= 1'b0;
        i <= 1;                  
        is_transmitting <= 1'b1;
    end
    else if (is_transmitting) begin 
        if (i < DATA_WIDTH) begin
            Ser_Data <= Data_FF[i];
            if (i == DATA_WIDTH-1) begin
                Ser_Done <= 1'b1;
            end
            i <= i + 1;
        end
        else begin
            Ser_Done <= 1'b0;
            is_transmitting <= 1'b0;
            i <= 0;
        end
    end
    else begin
        Ser_Done <= 1'b0;
        i <= 0; 
    end       
end
endmodule