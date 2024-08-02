`timescale 1ns / 1ps

module FULL_OPEN(
    input [3:0] Y,
    output reg [6:0] Seg
    );
    
    
    always@(Y)
    begin
    
        case(Y)
            0: Seg<= 7'b0001110;//F
            1: Seg<= 7'b1000001;//U
            2: Seg<= 7'b1000111;//L
            3: Seg<= 7'b1000000;//O
            4: Seg<= 7'b0001100;//P
            5: Seg<= 7'b0000110;//E
            6: Seg<= 7'b0101011;//n
            
        
        
        endcase
    
    end
    
endmodule
