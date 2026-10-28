module parity_check #(
    parameter DATA_WIDTH = 8
) (
    input par_chk_en,
    input sampled_bit,
    input PAR_TYP,
    input [DATA_WIDTH-1:0] P_DATA,
    output par_err
);

wire calc_parity = PAR_TYP ? ~(^P_DATA) : (^P_DATA); // 0 = Even, 1 = Odd
assign par_err = par_chk_en ? (sampled_bit != calc_parity) : 1'b0;

endmodule
