module UART_TX #(
    parameter DATA_WIDTH = 8
) (
    input wire [DATA_WIDTH-1:0] P_Data,
    input wire       Data_Valid,
    input wire       Par_En,
    input wire       Par_Type, // 0 for even parity, 1 for odd parity
    input wire       CLK,
    input wire       RST,

    output wire      TX_OUT,
    output wire      busy
);

wire Ser_En_Top;
wire Ser_Done_Top;
wire [2:0] Mux_Sel_Top;
wire Par_Bit_Top;
wire Ser_Data_Top;


UART_TX_FSM FSM_inst(
    .Data_Valid(Data_Valid),
    .Par_En(Par_En),
    .Ser_Done(Ser_Done_Top),
    .CLK(CLK),
    .RST(RST),
    .Ser_En(Ser_En_Top),
    .Mux_Sel(Mux_Sel_Top),
    .busy(busy)
);

Serializer #(.DATA_WIDTH(DATA_WIDTH)) Serializer_inst(
    .P_Data(P_Data),
    .ser_en(Ser_En_Top),
    .CLK(CLK),
    .RST(RST),
    .Ser_Data(Ser_Data_Top),
    .Ser_Done(Ser_Done_Top)
);

Parity_Calc #(.DATA_WIDTH(DATA_WIDTH)) Parity_Calc_inst(
    .P_Data(P_Data),
    .Data_Valid(Data_Valid),
    .Par_Type(Par_Type),
    .CLK(CLK),
    .RST(RST),
    .Par_Bit(Par_Bit_Top)
);

Output_Mux Output_Mux_inst(
    .Mux_Sel(Mux_Sel_Top),
    .Ser_Data(Ser_Data_Top),
    .Par_Bit(Par_Bit_Top),
    .TX_OUT(TX_OUT)
);

endmodule
