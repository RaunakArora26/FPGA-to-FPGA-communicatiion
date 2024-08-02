`timescale 1ns / 1ps


module Fsmversiontwo(
    input clk,
    output reg [2:0] led
    );
    parameter S0 = 0 , S1 = 1 , S2 = 2 ;
    parameter red = 3'b100 , green = 3'b010 , yellow = 3'b110;
    
    reg [1:0] state;
    
    always@(posedge clk)
    begin
        case(state)
                0:state <= S1; 
                1:state <= S2;
                2:state <= S0;  
                default:state <= S0;
            endcase
    end
    
    always@(state)
    begin
        case(state)
            0:led = red;
            1:led = green;
            2:led = yellow;
            default: led = red;
        endcase
    end
    
    
endmodule
