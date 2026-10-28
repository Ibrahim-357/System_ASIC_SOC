module SYS_CTRL #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter FUN_WIDTH = 4,
    parameter OUT_WIDTH = 16
)(
    input wire CLK,
    input wire RST,
    input wire [OUT_WIDTH-1:0] ALU_OUT,
    input wire OUT_Valid,
    input wire [DATA_WIDTH-1:0] RX_P_DATA,
    input wire RX_D_VLD,
    input wire [DATA_WIDTH-1:0] RdData,
    input wire RdData_Valid,
    input wire FIFO_FULL,
    
    output reg [FUN_WIDTH-1:0] ALU_FUN,
    output reg EN,
    output reg CLK_EN,
    output reg [ADDR_WIDTH-1:0] Address,
    output reg WrEn,
    output reg RdEn,
    output reg [DATA_WIDTH-1:0] WrData,
    output reg [DATA_WIDTH-1:0] TX_P_DATA,
    output reg TX_D_VLD,
    output wire clk_div_en
);

    assign clk_div_en = 1'b1; // Clock divider is always on according to spec

    localparam IDLE = 4'd0,
               WR_ADDR = 4'd1,
               WR_DATA = 4'd2,
               RD_ADDR = 4'd3,
               WAIT_RD_VALID = 4'd4,
               ALU_A = 4'd5,
               ALU_B = 4'd6,
               ALU_FUN_W = 4'd7,
               ALU_FUN_WO = 4'd8,
               WAIT_ALU_VALID = 4'd9,
               SEND_RD_DATA = 4'd10,
               SEND_ALU_OUT_LOW = 4'd11,
               SEND_ALU_OUT_HIGH = 4'd12;

    reg [3:0] current_state, next_state;
    reg [ADDR_WIDTH-1:0] rf_addr_reg, rf_addr_next;
    reg [DATA_WIDTH-1:0] alu_out_low_reg, alu_out_low_next;
    reg [DATA_WIDTH-1:0] alu_out_high_reg, alu_out_high_next;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state <= IDLE;
            rf_addr_reg <= {ADDR_WIDTH{1'b0}};
            alu_out_low_reg <= {DATA_WIDTH{1'b0}};
            alu_out_high_reg <= {DATA_WIDTH{1'b0}};
        end else begin
            current_state <= next_state;
            rf_addr_reg <= rf_addr_next;
            alu_out_low_reg <= alu_out_low_next;
            alu_out_high_reg <= alu_out_high_next;
        end
    end

    always @(*) begin
        next_state = current_state;
        rf_addr_next = rf_addr_reg;
        alu_out_low_next = alu_out_low_reg;
        alu_out_high_next = alu_out_high_reg;
        
        ALU_FUN = {FUN_WIDTH{1'b0}};
        EN = 1'b0;
        CLK_EN = 1'b0;
        Address = {ADDR_WIDTH{1'b0}};
        WrEn = 1'b0;
        RdEn = 1'b0;
        WrData = {DATA_WIDTH{1'b0}};
        TX_P_DATA = {DATA_WIDTH{1'b0}};
        TX_D_VLD = 1'b0;

        case (current_state)
            IDLE: begin
                if (RX_D_VLD) begin
                    case (RX_P_DATA)
                        8'hAA: next_state = WR_ADDR;
                        8'hBB: next_state = RD_ADDR;
                        8'hCC: next_state = ALU_A;
                        8'hDD: next_state = ALU_FUN_WO;
                        default: next_state = IDLE;
                    endcase
                end
            end
            
            WR_ADDR: begin
                if (RX_D_VLD) begin
                    rf_addr_next = RX_P_DATA[ADDR_WIDTH-1:0];
                    next_state = WR_DATA;
                end
            end
            
            WR_DATA: begin
                if (RX_D_VLD) begin
                    Address = rf_addr_reg;
                    WrData = RX_P_DATA;
                    WrEn = 1'b1;
                    next_state = IDLE;
                end
            end
            
            RD_ADDR: begin
                if (RX_D_VLD) begin
                    Address = RX_P_DATA[ADDR_WIDTH-1:0];
                    RdEn = 1'b1;
                    next_state = WAIT_RD_VALID;
                end
            end
            
            WAIT_RD_VALID: begin
                if (RdData_Valid) begin
                    alu_out_low_next = RdData;
                    next_state = SEND_RD_DATA;
                end
            end
            
            SEND_RD_DATA: begin
                if (!FIFO_FULL) begin
                    TX_P_DATA = alu_out_low_reg;
                    TX_D_VLD = 1'b1;
                    next_state = IDLE;
                end
            end
            
            ALU_A: begin
                if (RX_D_VLD) begin
                    Address = {ADDR_WIDTH{1'b0}};
                    WrData = RX_P_DATA;
                    WrEn = 1'b1;
                    next_state = ALU_B;
                end
            end
            
            ALU_B: begin
                if (RX_D_VLD) begin
                    Address = {{ADDR_WIDTH-1{1'b0}}, 1'b1};
                    WrData = RX_P_DATA;
                    WrEn = 1'b1;
                    next_state = ALU_FUN_W;
                end
            end
            
            ALU_FUN_W: begin
                if (RX_D_VLD) begin
                    CLK_EN = 1'b1;
                    ALU_FUN = RX_P_DATA[FUN_WIDTH-1:0];
                    EN = 1'b1;
                    next_state = WAIT_ALU_VALID;
                end
            end
            
            ALU_FUN_WO: begin
                if (RX_D_VLD) begin
                    CLK_EN = 1'b1;
                    ALU_FUN = RX_P_DATA[FUN_WIDTH-1:0];
                    EN = 1'b1;
                    next_state = WAIT_ALU_VALID;
                end
            end
            
            WAIT_ALU_VALID: begin
                CLK_EN = 1'b1; // Keep clock gate enabled
                if (OUT_Valid) begin
                    alu_out_low_next = ALU_OUT[DATA_WIDTH-1:0];
                    alu_out_high_next = ALU_OUT[OUT_WIDTH-1:DATA_WIDTH];
                    next_state = SEND_ALU_OUT_LOW;
                end
            end
            
            SEND_ALU_OUT_LOW: begin
                if (!FIFO_FULL) begin
                    TX_P_DATA = alu_out_low_reg;
                    TX_D_VLD = 1'b1;
                    next_state = SEND_ALU_OUT_HIGH;
                end
            end
            
            SEND_ALU_OUT_HIGH: begin
                if (!FIFO_FULL) begin
                    TX_P_DATA = alu_out_high_reg;
                    TX_D_VLD = 1'b1;
                    next_state = IDLE;
                end
            end
            
            default: next_state = IDLE;
        endcase
    end

endmodule
