`timescale 1ns / 1ps
    

module mod_five_up_down_counter(
    input mclk,
    input up,
    input down,
    output reg [2:0] count
    );
    
    //moore machine
    parameter S0=0,S1=1,S2=2,S3=3,S4=4;
    
    reg [2:0] state=0;
    
    always@(posedge mclk)
    begin
    
        if(up & ~down)
                 state <= (state + 1)%5;
        else if (~up && down) 
            begin
                 if (state == 0)
                     state <= 4;  // Wrap around to 4 if current state is 0
                 else
                     state <= state - 1;
            end
        else 
                 state <= state;
 
    end
    
    always@(state)
    begin
        count = state;    
    end
    
endmodule
