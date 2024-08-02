`timescale 1ns / 1ps


module Four_one_tree_decoder(
    input [3:0] A,
    output [15:0] Y,
    input En
    );
    
    wire [3:0] w;
Decoder_two_to_four_behav D1(A[3:2],w,En);

Decoder_two_to_four_behav D2(A[1:0],Y[15:12],w[3]);
Decoder_two_to_four_behav D3(A[1:0],Y[11:8],w[2]);
Decoder_two_to_four_behav D4(A[1:0],Y[7:4],w[1]);
Decoder_two_to_four_behav D5(A[1:0],Y[3:0],w[0]);

 

  
endmodule
