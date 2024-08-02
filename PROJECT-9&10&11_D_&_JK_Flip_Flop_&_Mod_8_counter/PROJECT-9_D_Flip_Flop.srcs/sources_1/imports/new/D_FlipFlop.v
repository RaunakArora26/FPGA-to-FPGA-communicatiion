`timescale 1ns / 1ps


module D_FlipFlop(
    input D,
    input mclk,
    input load,
    input reset,
    output reg Q=0,
    output Not_Q
    );
    
    always@(posedge mclk)
    begin
        if(reset)
            Q <= 0; //reset
        else if(load)
            Q <= D; //just load
        else 
            Q <= Q; //retain
            
    end
    
    assign Not_Q = ~Q;
    
    
    
endmodule
