`timescale 1ns / 1ps

//module Decoder_two_to_four(
//    input [1:0] A,
//    output [3:0] Y
//    );  
    
//    assign Y[3] = A[1] & A[0];
//    assign Y[2] = A[1] & ~A[0];
//    assign Y[1] = ~A[1] & A[0];
//    assign Y[0] = ~A[1] & ~A[0];
//endmodule

module Decoder_two_to_four_behav(
    input [1:0] A,
    output reg [3:0] Y,
    input En
    );  
    
    always@(*)
    begin
    if(En)
    begin
        case(A)
            0:Y=4'b0001;
            1:Y=4'b0010;
            2:Y=4'b0100;
            3:Y=4'b1000;
        endcase
    end
    else
    Y=0;
    
    end
endmodule
