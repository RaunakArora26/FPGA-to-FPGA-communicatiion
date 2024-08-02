`timescale 1ns / 1ps

module SlowClock( //slow clk of 1000 Hz
    input mclk,
    output reg clk_out = 0
    );
     
    reg [20:0] count = 0;
    
    
    always@(posedge mclk)
    begin
        count <= count + 1;
        if(count == 99_999)
        begin
            count <= 0;
            clk_out = ~clk_out;            
        end
    end
    
    
    
    
    
    
endmodule
