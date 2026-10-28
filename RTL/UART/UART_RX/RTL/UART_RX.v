module UART_RX #(
    parameter DATA_WIDTH = 8
) (
    input wire CLK,
    input wire RST,
    input wire PAR_TYP,
    input wire PAR_EN,
    input wire [5:0] Prescale,
    input wire RX_IN,
    output wire [DATA_WIDTH-1:0] P_DATA,
    output wire Data_valid,
    output wire Parity_Error,
    output wire Stop_Error
);

wire enable, dat_samp_en, deser_en, bit_cnt_clr;
wire strt_chk_en, par_chk_en, stp_chk_en;
wire [5:0] edge_cnt;
wire [5:0] bit_cnt;
wire sampled_bit, strt_glitch, par_err_comb, stp_err_comb;

edge_bit_counter U_edge_bit_counter(
    .CLK(CLK), .RST(RST), .enable(enable), .bit_cnt_clr(bit_cnt_clr),
    .Prescale(Prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt)
);

data_sampling U_data_sampling(
    .CLK(CLK), .RST(RST), .RX_IN(RX_IN), .Prescale(Prescale),
    .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), .sampled_bit(sampled_bit)
);

deserializer #(.DATA_WIDTH(DATA_WIDTH)) U_deserializer(
    .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), .deser_en(deser_en),
    .edge_cnt(edge_cnt), .Prescale(Prescale), .P_DATA(P_DATA)
);

strt_check U_strt_check(.strt_chk_en(strt_chk_en), .sampled_bit(sampled_bit), .strt_glitch(strt_glitch));

parity_check #(.DATA_WIDTH(DATA_WIDTH)) U_parity_Check(
    .par_chk_en(par_chk_en), .sampled_bit(sampled_bit),
    .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .par_err(par_err_comb)
);

stop_check U_stop_check(.stp_chk_en(stp_chk_en), .sampled_bit(sampled_bit), .stp_err(stp_err_comb));

UART_RX_FSM U_FSM(
    .CLK(CLK), .RST(RST), .RX_IN(RX_IN), .PAR_EN(PAR_EN),
    .strt_glitch(strt_glitch), .par_err_in(par_err_comb), .stp_err_in(stp_err_comb),
    .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .Prescale(Prescale),
    .enable(enable), .bit_cnt_clr(bit_cnt_clr), .dat_samp_en(dat_samp_en), .deser_en(deser_en),
    .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en),
    .data_valid(Data_valid), .par_err(Parity_Error), .stp_err(Stop_Error)
);
endmodule
