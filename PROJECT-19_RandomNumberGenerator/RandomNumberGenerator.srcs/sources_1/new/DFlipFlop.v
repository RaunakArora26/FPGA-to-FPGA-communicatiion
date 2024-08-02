`timescale 1ns / 1ps

module DFlipFlop(
    input clk,reset,
    input load,D,
    output reg Q
    );
    
    always@(posedge clk)
    begin
        if(reset)
        begin
            Q<=1'b0;
        end
        else if(load)
        begin
            Q<=D;
        end
   end
    
endmodule
