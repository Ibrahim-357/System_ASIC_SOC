module Output_Mux(
    input wire [2:0] Mux_Sel,
    input wire       Ser_Data,
    input wire       Par_Bit,
    output reg       TX_OUT
);


localparam [2:0] Mux_IDLE = 3'b000;
localparam [2:0] Mux_START = 3'b001;
localparam [2:0] Mux_SERIAL = 3'b011;
localparam [2:0] Mux_PARITY = 3'b111;
localparam [2:0] Mux_STOP = 3'b110;

always @(*) begin
    case (Mux_Sel)
        Mux_IDLE: TX_OUT = 1'b1;
        Mux_START: TX_OUT = 1'b0;
        Mux_SERIAL: TX_OUT = Ser_Data;
        Mux_PARITY: TX_OUT = Par_Bit;
        Mux_STOP: TX_OUT = 1'b1;
        default: TX_OUT = 1'b1;
    endcase
end

endmodule
