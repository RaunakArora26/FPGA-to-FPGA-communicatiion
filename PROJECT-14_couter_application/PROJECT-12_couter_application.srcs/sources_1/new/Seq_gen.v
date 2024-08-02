`timescale 1ns / 1ps

module Sequence_Generator(
    input mclk,
    input sw,
    input reset,
    output reg [3:0] count=0
    );
    
    parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S8=8,S9=9,S10=10,S11=11,S12=12;
    reg [3:0] state = S0;
    
    always@(posedge mclk or posedge reset)
    begin
        if(reset)
            state <= S0;
        else
            begin
                if(sw)
                begin
                    case(state)
                        S0,S1,S2,S3,S4,S8,S9,S10,S11: state <= state + 1;
                        S5: state <= S8;
                        S12: state <= S0;
                        default : state <= S0;  
                    endcase
                end
            end
           
    end
    
    
    always@(state)
    begin
        count = state;    
    end
    
endmodule
