module stop_check (
    input stp_chk_en,
    input sampled_bit,
    output reg stp_err
);


always @(*)
    begin
        if (stp_chk_en)
        begin 
            if (sampled_bit == 1'b1) // checks if the start bit is 0 to see if a glitch happend
                stp_err = 1'b0; // there is no glitch
            else
                stp_err = 1'b1; // there is glitch
        end
        else 
            stp_err = 1'b0;
    end


endmodule
