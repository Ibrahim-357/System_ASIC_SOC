module UART_RX_FSM(
    input CLK,
    input RST,
    input RX_IN,
    input PAR_EN,
    input strt_glitch,
    input par_err_in,
    input stp_err_in,
    input [5:0] bit_cnt,
    input [5:0] edge_cnt,
    input [5:0] Prescale,
    output reg enable,
    output reg bit_cnt_clr,
    output reg dat_samp_en,
    output reg deser_en,
    output reg strt_chk_en,
    output reg par_chk_en,
    output reg stp_chk_en,
    output reg data_valid,
    output reg par_err,
    output reg stp_err
);

localparam IDLE = 3'b000,
           START = 3'b001,
           DATA = 3'b011,
           PARITY = 3'b111,
           STOP = 3'b110;

reg [2:0] state, next_state;

always @(posedge CLK or negedge RST) begin
    if (!RST)
        state <= IDLE;
    else
        state <= next_state;
end

always @(*) begin
    next_state = state;
    enable = 0; dat_samp_en = 0; deser_en = 0;
    strt_chk_en = 0; par_chk_en = 0; stp_chk_en = 0;
    bit_cnt_clr = 0;
    
    case (state)
        IDLE: begin
            if (RX_IN == 1'b0) begin
                next_state = START;
                enable = 1; dat_samp_en = 1; strt_chk_en = 1;
            end
        end
        START: begin
            enable = 1; dat_samp_en = 1; strt_chk_en = 1;
            if (edge_cnt == 0) bit_cnt_clr = 1; 
            if (edge_cnt == Prescale - 1) begin
                if (strt_glitch) next_state = IDLE;
                else next_state = DATA;
            end
        end
        DATA: begin
            enable = 1; dat_samp_en = 1; deser_en = 1;
            if (edge_cnt == Prescale - 1 && bit_cnt == 6'd8) begin
                if (PAR_EN) next_state = PARITY;
                else next_state = STOP;
            end
        end
        PARITY: begin
            enable = 1; dat_samp_en = 1; par_chk_en = 1;
            if (edge_cnt == Prescale - 1) next_state = STOP;
        end
        STOP: begin
            enable = 1; dat_samp_en = 1; stp_chk_en = 1;
            if (edge_cnt == Prescale - 1) begin
                if (RX_IN == 1'b0) next_state = START; 
                else next_state = IDLE;
            end
        end
        default: next_state = IDLE;
    endcase
end

always @(posedge CLK or negedge RST) 
begin
    if (!RST) begin
        data_valid <= 1'b0;
        par_err <= 1'b0;
        stp_err <= 1'b0;
    end 
    else 
    begin

        if (state == PARITY && edge_cnt == Prescale - 1) par_err <= par_err_in;
        else if (state == IDLE || (state == START && edge_cnt == 0)) par_err <= 1'b0;
            
        if (state == STOP && edge_cnt == Prescale - 2)
        begin
            stp_err <= stp_err_in;
            if (!par_err && !stp_err_in) 
                data_valid <= 1'b1; 
            else
                data_valid <= 1'b0;
        end 
        else if (state == IDLE || (state == START && edge_cnt == 0)) 
        begin
            stp_err <= 1'b0;
            data_valid <= 1'b0;
        end
        else
            data_valid <= 1'b0;
    end
end
endmodule