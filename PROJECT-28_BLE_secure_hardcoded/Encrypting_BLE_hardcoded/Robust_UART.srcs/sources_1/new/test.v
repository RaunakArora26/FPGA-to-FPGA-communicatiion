`timescale 1ns / 1ps


module test(
    input a,
    output reg b
    );
    
    
    
    always@(*)  begin
    if(a==0)
        assign b = 0;
    else if(a==1) 
        assign b=1;
    
    end
    
    
endmodule
