`timescale 1ns / 1ps


module Ten_sec_clk(
    input mclk,
    output reg tenSecClk = 0
    );
    
    parameter terminal_count = 500000000;
    
    reg [31:0] tenCount = 0;
    
    always@(posedge mclk)
    begin
        tenCount <= tenCount + 1;
        if(tenCount == terminal_count)
        begin
            tenCount <= 0;
            tenSecClk = ~tenSecClk;
        end
    end
    
    endmodule
