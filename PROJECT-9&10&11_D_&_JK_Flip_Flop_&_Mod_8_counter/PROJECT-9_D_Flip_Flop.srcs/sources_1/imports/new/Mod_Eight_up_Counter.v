`timescale 1ns / 1ps


module Mod_Eight_up_Counter(
    input mclk,
    input up,
    output reg [2:0] Count
    );
    
    parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S6=6,S7=7;
    reg [2:0] state=0;
    
    
    always@(posedge mclk)
    begin
        if(up)
            state <= state + 1;
        else 
                state <= state;
    end
    
    always@(state)
    begin
        Count = state;       
     end
    
    
    
endmodule
