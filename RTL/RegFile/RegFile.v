module RegFile #(
    parameter ADDR_WIDTH = 4,
    parameter DATA_WIDTH = 8
) (
    input wire CLK,
    input wire RST,
    input wire [ADDR_WIDTH-1:0] Address,
    input wire WrEn,
    input wire RdEn,
    input wire [DATA_WIDTH-1:0] WrData,
    output reg [DATA_WIDTH-1:0] RdData,
    output reg RdData_Valid,
    output wire [DATA_WIDTH-1:0] REG0,
    output wire [DATA_WIDTH-1:0] REG1,
    output wire [DATA_WIDTH-1:0] REG2,
    output wire [DATA_WIDTH-1:0] REG3
);

    reg [DATA_WIDTH-1:0] memory [0:(1<<ADDR_WIDTH)-1];
    integer i;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            RdData <= {DATA_WIDTH{1'b0}};
            RdData_Valid <= 1'b0;
            for (i = 0; i < (1<<ADDR_WIDTH); i = i + 1) begin
                if (i == 2)
                    memory[i] <= 8'b10000001; // Prescale=32, ParityType=0, ParityEnable=1
                else if (i == 3)
                    memory[i] <= 8'd32; // Div ratio = 32
                else
                    memory[i] <= {DATA_WIDTH{1'b0}};
            end
        end
        else begin
            RdData_Valid <= 1'b0;
            if (WrEn && !RdEn) begin
                memory[Address] <= WrData;
            end
            else if (RdEn && !WrEn) begin
                RdData <= memory[Address];
                RdData_Valid <= 1'b1;
            end
        end
    end

    assign REG0 = memory[0];
    assign REG1 = memory[1];
    assign REG2 = memory[2];
    assign REG3 = memory[3];

endmodule
