module SYS_TOP_dft #(
    parameter DATA_WIDTH = 8,
    parameter RF_ADDR = 4,
    parameter FUN_WIDTH = 4,
    parameter OUT_WIDTH = 16,
    parameter RATIO_WIDTH = 8,
    parameter NUM_STAGES = 2,
    parameter NUM_OF_CHAINS = 3
) (
    input wire scan_clk,
    input wire scan_rst,
    input wire test_mode,
    input wire SE,
    input wire [NUM_OF_CHAINS-1:0] SI,
    output wire [NUM_OF_CHAINS-1:0] SO,
    input wire RST_N,
    input wire UART_CLK,
    input wire REF_CLK,
    input wire UART_RX_IN,
    output wire UART_TX_O,
    output wire parity_error,
    output wire framing_error
);

    // MUXes for clocks and resets
    wire ref_clk_mux;
    wire uart_clk_mux;
    wire rst_n_mux;

    assign ref_clk_mux = test_mode ? scan_clk : REF_CLK;
    assign uart_clk_mux = test_mode ? scan_clk : UART_CLK;
    assign rst_n_mux = test_mode ? scan_rst : RST_N;

    // Wires for RST_SYNC_1 (REF_CLK domain)
    wire rst_sync_1_out;
    RST_SYNC #(.NUM_STAGES(NUM_STAGES)) U_RST_SYNC_1 (
        .CLK(ref_clk_mux),
        .RST(rst_n_mux),
        .SYNC_RST(rst_sync_1_out)
    );
    wire rst_sync_1 = test_mode ? scan_rst : rst_sync_1_out;
    // Wires for RST_SYNC_2 (UART_CLK domain)
    wire rst_sync_2_out;
    RST_SYNC #(.NUM_STAGES(NUM_STAGES)) U_RST_SYNC_2 (
        .CLK(uart_clk_mux),
        .RST(rst_n_mux),
        .SYNC_RST(rst_sync_2_out)
    );
    wire rst_sync_2 = test_mode ? scan_rst : rst_sync_2_out;

    // Wires for RegFile
    wire [RF_ADDR-1:0] rf_address;
    wire rf_wr_en;
    wire rf_rd_en;
    wire [DATA_WIDTH-1:0] rf_wr_data;
    wire [DATA_WIDTH-1:0] rf_rd_data;
    wire rf_rd_valid;
    wire [DATA_WIDTH-1:0] reg0, reg1, reg2, reg3;

    RegFile #(
        .ADDR_WIDTH(RF_ADDR), 
        .DATA_WIDTH(DATA_WIDTH)
    ) U_RegFile (
        .CLK(ref_clk_mux),
        .RST(rst_sync_1),
        .Address(rf_address),
        .WrEn(rf_wr_en),
        .RdEn(rf_rd_en),
        .WrData(rf_wr_data),
        .RdData(rf_rd_data),
        .RdData_Valid(rf_rd_valid),
        .REG0(reg0),
        .REG1(reg1),
        .REG2(reg2),
        .REG3(reg3)
    );

    // Wires for SYS_CTRL
    wire [OUT_WIDTH-1:0] alu_out;
    wire alu_out_valid;
    wire [DATA_WIDTH-1:0] sync_rx_p_data;
    wire sync_rx_d_vld;
    wire fifo_full;
    wire [FUN_WIDTH-1:0] alu_fun;
    wire alu_en;
    wire clk_en;
    wire [DATA_WIDTH-1:0] tx_p_data;
    wire tx_d_vld;
    wire clk_div_en;

    SYS_CTRL #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(RF_ADDR),
        .FUN_WIDTH(FUN_WIDTH),
        .OUT_WIDTH(OUT_WIDTH)
    ) U_SYS_CTRL (
        .CLK(ref_clk_mux),
        .RST(rst_sync_1),
        .ALU_OUT(alu_out),
        .OUT_Valid(alu_out_valid),
        .RX_P_DATA(sync_rx_p_data),
        .RX_D_VLD(sync_rx_d_vld),
        .RdData(rf_rd_data),
        .RdData_Valid(rf_rd_valid),
        .FIFO_FULL(fifo_full),
        .ALU_FUN(alu_fun),
        .EN(alu_en),
        .CLK_EN(clk_en),
        .Address(rf_address),
        .WrEn(rf_wr_en),
        .RdEn(rf_rd_en),
        .WrData(rf_wr_data),
        .TX_P_DATA(tx_p_data),
        .TX_D_VLD(tx_d_vld),
        .clk_div_en(clk_div_en)
    );

    // Wires for CLK_GATE
    wire gated_clk;
    // We add clock mux for gated clock as well if we are bypassing during test mode
    // Actually, normally the clock gate has a test_mode pin to bypass gating.
    // Assuming CLK_GATE has no test_mode pin in RTL, we can add a mux externally
    // or let the synthesis tool handle the clock gating bypass.
    // If CLK_GATE has a test_en pin, we'd use it. Our CLK_GATE only has CLK, CLK_EN, GATED_CLK.
    // We will mux the output of the clock gate with scan_clk during test_mode to make it controllable.
    wire gated_clk_out;
    CLK_GATE U_CLK_GATE (
        .CLK(ref_clk_mux),
        .CLK_EN(clk_en),
        .GATED_CLK(gated_clk_out)
    );
    assign gated_clk = test_mode ? scan_clk : gated_clk_out;

    // ALU
    ALU #(
        .DATA_WIDTH(DATA_WIDTH),
        .FUN_WIDTH(FUN_WIDTH),
        .OUT_WIDTH(OUT_WIDTH)
    ) U_ALU (
        .CLK(gated_clk),
        .RST(rst_sync_1),
        .A(reg0),
        .B(reg1),
        .ALU_FUN(alu_fun),
        .Enable(alu_en),
        .ALU_OUT(alu_out),
        .OUT_VALID(alu_out_valid)
    );

    // Clock Divider
    wire tx_clk_out;
    wire tx_clk;
    ClkDiv #(.RATIO_WIDTH(RATIO_WIDTH)) U_ClkDiv (
        .i_ref_clk(uart_clk_mux),
        .i_rst_n(rst_sync_2),
        .i_clk_en(clk_div_en),
        .i_div_ratio(reg3[RATIO_WIDTH-1:0]),
        .o_div_clk(tx_clk_out)
    );
    assign tx_clk = test_mode ? scan_clk : tx_clk_out;

    // UART_RX
    wire [DATA_WIDTH-1:0] rx_p_data;
    wire rx_d_vld;
    UART_RX #(.DATA_WIDTH(DATA_WIDTH)) U_UART_RX (
        .CLK(uart_clk_mux),
        .RST(rst_sync_2),
        .PAR_TYP(reg2[1]),
        .PAR_EN(reg2[0]),
        .Prescale(reg2[7:2]),
        .RX_IN(UART_RX_IN),
        .P_DATA(rx_p_data),
        .Data_valid(rx_d_vld),
        .Parity_Error(parity_error),
        .Stop_Error(framing_error)
    );

    // DATA_SYNC (UART_RX to SYS_CTRL)
    DATA_SYNC #(
        .NUM_STAGES(NUM_STAGES), 
        .BUS_WIDTH(DATA_WIDTH)
    ) U_DATA_SYNC (
        .unsync_bus(rx_p_data),
        .bus_enable(rx_d_vld),
        .CLK(ref_clk_mux),
        .RST(rst_sync_1),
        .sync_bus(sync_rx_p_data),
        .enable_pulse(sync_rx_d_vld)
    );

    // ASYNC FIFO (SYS_CTRL to UART_TX)
    wire [DATA_WIDTH-1:0] fifo_rd_data;
    wire fifo_empty;
    wire pulse_r_inc;

    ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH)) U_ASYNC_FIFO (
        .W_CLK(ref_clk_mux),
        .W_RST(rst_sync_1),
        .W_INC(tx_d_vld),
        .R_CLK(tx_clk),
        .R_RST(rst_sync_2),
        .R_INC(pulse_r_inc),
        .WR_DATA(tx_p_data),
        .RD_DATA(fifo_rd_data),
        .FULL(fifo_full),
        .EMPTY(fifo_empty)
    );

    // UART_TX
    wire tx_busy;
    UART_TX #(.DATA_WIDTH(DATA_WIDTH)) U_UART_TX (
        .P_Data(fifo_rd_data),
        .Data_Valid(~fifo_empty),
        .Par_En(reg2[0]),
        .Par_Type(reg2[1]),
        .CLK(tx_clk),
        .RST(rst_sync_2),
        .TX_OUT(UART_TX_O),
        .busy(tx_busy)
    );

    // PULSE_GEN
    PULSE_GEN U_PULSE_GEN (
        .CLK(tx_clk),
        .RST(rst_sync_2),
        .LVL_SIG(tx_busy),
        .PULSE_SIG(pulse_r_inc)
    );

endmodule

