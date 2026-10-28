module ClkDiv #(
    parameter RATIO_WIDTH = 8
)(
    input i_ref_clk,
    input i_rst_n,
    input i_clk_en,
    input [RATIO_WIDTH-1:0] i_div_ratio,
    output o_div_clk
);

wire ClK_DIV_EN = i_clk_en && ( i_div_ratio != 0) && ( i_div_ratio != 1);

wire [RATIO_WIDTH-1:0] half_div_ratio = (i_div_ratio >> 1);

wire is_odd = i_div_ratio[0];

reg [RATIO_WIDTH-1:0] counter;
reg out_p;
reg out_n;

always @(posedge i_ref_clk or negedge i_rst_n) 
begin
    if (!i_rst_n) 
    begin
        counter <= 0;
        out_p <= 0;
    end 
    else if (ClK_DIV_EN) 
    begin
        if (counter == (i_div_ratio - 1))
        begin
            counter <= 0;
        end
        else 
        begin
            counter <= counter + 1;
        end


        if (counter < half_div_ratio)
        begin
            out_p <= 1'b1;
        end 
        else
        begin
            out_p <= 1'b0;
        end

    end 
    else 
    begin
        counter <= 0;
        out_p <= 1'b0;
    end
end


always @(negedge i_ref_clk or negedge i_rst_n)
begin
    if (!i_rst_n) 
    begin
        out_n <= 1'b0;
    end 
    else if (ClK_DIV_EN) 
    begin
        out_n <= out_p;
    end 
    else 
    begin
        out_n <= 1'b0;
    end
end

assign o_div_clk = (!ClK_DIV_EN) ? i_ref_clk : (is_odd) ? (out_p | out_n) : out_p;

endmodule