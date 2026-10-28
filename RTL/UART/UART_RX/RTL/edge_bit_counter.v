module edge_bit_counter(
    input CLK,
    input RST,
    input enable,
    input bit_cnt_clr,
    input [5:0] Prescale,
    output reg [5:0] edge_cnt,
    output reg [5:0] bit_cnt 
);

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        edge_cnt <= 6'b0;
        bit_cnt <= 6'b0;
    end 
    else if (!enable) 
    begin
        edge_cnt <= 6'b0;
        bit_cnt <= 6'b0;
    end
    else 
    begin
        if (edge_cnt == Prescale - 1) 
	    begin
            edge_cnt <= 6'b0;
	        if (bit_cnt_clr)
               	bit_cnt <= 6'b0;
            else  
            	bit_cnt <= bit_cnt + 1;
        end
        else if (bit_cnt_clr) 
	    begin
            bit_cnt <= 6'b0; 
        end 
        else 
        begin
            edge_cnt <= edge_cnt + 1;
        end
        
    end
end
endmodule
