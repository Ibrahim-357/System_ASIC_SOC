module UART_TX_FSM(
    input wire       Data_Valid,
    input wire       Par_En,
    input wire       Ser_Done,
    input wire       CLK,
    input wire       RST,
    output reg       Ser_En,
    output reg [2:0] Mux_Sel,
    output reg       busy
);

localparam [2:0] IDLE = 3'b000;
localparam [2:0] START = 3'b001;
localparam [2:0] SERIAL = 3'b011;
localparam [2:0] PARITY = 3'b111;
localparam [2:0] STOP = 3'b110;


localparam [2:0] Mux_IDLE = 3'b000;
localparam [2:0] Mux_START = 3'b001;
localparam [2:0] Mux_SERIAL = 3'b011;
localparam [2:0] Mux_PARITY = 3'b111;
localparam [2:0] Mux_STOP = 3'b110;


reg [2:0] state;
reg [2:0] next_state;

always @(posedge CLK or negedge RST) begin
    if (!RST)
        state <= IDLE;
    else
        state <= next_state;
end

always @(*) begin
    Mux_Sel = 3'b000;
    Ser_En = 1'b0;
    busy = 1'b0;
    case (state)
        IDLE: begin
            Mux_Sel = Mux_IDLE;
            if (Data_Valid) 
                next_state = START;
            else
                next_state = IDLE;
        end
        START: begin
            Mux_Sel = Mux_START;
            Ser_En = 1'b1;
            next_state = SERIAL;
            busy = 1'b1;
        end
        SERIAL: begin // This assumes that Ser_Done is high when the last bit is being sent. Don't know if this is correct 
            Mux_Sel = Mux_SERIAL;
            if (Ser_Done) begin
                if (Par_En)
                    next_state = PARITY;
                else
                    next_state = STOP;
            end
            else begin
                next_state = SERIAL;
            end
            busy = 1'b1;
        end
        PARITY: begin
            Mux_Sel = Mux_PARITY;
            next_state = STOP;
            busy = 1'b1;
        end
        STOP: begin
            Mux_Sel = Mux_STOP;
            next_state = IDLE;
            busy = 1'b1;
        end
        default: begin
            Mux_Sel = 3'b000;
            Ser_En = 1'b0;
            busy = 1'b0;
            next_state = IDLE;
        end
    endcase
end

endmodule


