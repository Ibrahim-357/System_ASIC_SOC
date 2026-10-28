module strt_check (
    input strt_chk_en,
    input sampled_bit,
    output reg strt_glitch
);


always @(*)
    begin
        if (strt_chk_en)
        begin 
            if (sampled_bit == 1'b0) // checks if the start bit is 0 to see if a glitch happend
                strt_glitch = 1'b0; // there is no glitch
            else
                strt_glitch = 1'b1; // there is glitch
        end
        else 
            strt_glitch = 1'b0;
    end


endmodule