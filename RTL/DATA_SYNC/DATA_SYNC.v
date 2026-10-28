module DATA_SYNC #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH = 8
)(
    input [BUS_WIDTH-1:0] unsync_bus,
    input bus_enable,
    input CLK,
    input RST,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg enable_pulse
);

reg [NUM_STAGES-1:0] sync_regs;
reg pulse_gen_ff;
wire sync_enable;
wire mux_sel;

always @(posedge CLK or negedge RST)
begin
    if (!RST) 
    begin
        sync_regs <= 'b0;
    end 
    else 
    begin
        sync_regs <= {sync_regs[NUM_STAGES-2:0], bus_enable};
    end
end


assign sync_enable = sync_regs[NUM_STAGES-1];

always @(posedge CLK or negedge RST)
begin
    if (!RST) 
    begin
        pulse_gen_ff <= 1'b0;
    end 
    else 
    begin
        pulse_gen_ff <= sync_enable;
    end
end

assign mux_sel = sync_enable & ~pulse_gen_ff;

always @(posedge CLK or negedge RST)
begin
    if (!RST) 
    begin
        enable_pulse <= 1'b0;
    end 
    else 
    begin
        enable_pulse <= mux_sel;
    end
end

always @(posedge CLK or negedge RST)
begin
    if (!RST) 
    begin
        sync_bus <= 'b0;
    end 
    else if (mux_sel) 
    begin
        sync_bus <= unsync_bus;
    end
    else 
    begin
        sync_bus <= sync_bus;
    end
end


endmodule
