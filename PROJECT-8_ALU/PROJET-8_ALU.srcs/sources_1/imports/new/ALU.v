`timescale 1ns / 1ps

module ALU(
    input [6:0] A,input [6:0] B,input [2:0] sel,
    output reg [7:0] Y
    );
    
    always@(*)
    begin
        case(sel)
            0:Y=8'b00000000;
            1:Y=A&B;
            2:Y=A|B;
            3:Y=~A;
            4:Y=A^B;
            5:Y=A+B;
            6:Y=A-B;
            7:Y=A*B;  
            default:Y=8'b0;
        endcase
    
    end
    
    
endmodule
