`timescale 1ns / 1ps


module Five_sec_clk(
    input mclk,
    output reg FiveSecClk = 0
    );
    
    parameter terminal_count = 250000000;
    
    reg [31:0] FiveCount = 0;
    
    always@(posedge mclk)
    begin
        FiveCount <= FiveCount + 1;
        if(FiveCount == terminal_count)
        begin
            FiveCount <= 0;
            FiveSecClk = ~FiveSecClk;
        end
    end
    
    endmodule
