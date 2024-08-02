`timescale 1ns / 1ps


module Full_adder(
    input A,input B,input Cin,
    output S,output Cout
    );
    
    assign S = A^B^Cin;
    assign Cout = (A&B) | (B&Cin) | (Cin&A);
    
    
    
endmodule

//module Full_adder_behav(
//    input A, input B, input Cin,
//    output reg S, output reg Cout
//);

//    always @(*) begin
//        case ({A, B, Cin})
//            3'b000: {Cout, S} = 2'b00;
//            3'b001: {Cout, S} = 2'b01;
//            3'b010: {Cout, S} = 2'b01;
//            3'b011: {Cout, S} = 2'b10;
//            3'b100: {Cout, S} = 2'b01;
//            3'b101: {Cout, S} = 2'b10;
//            3'b110: {Cout, S} = 2'b10;
//            3'b111: {Cout, S} = 2'b11;
//            default: {Cout, S} = 2'b00; // Default case for safety
//        endcase
//    end

//endmodule
   
