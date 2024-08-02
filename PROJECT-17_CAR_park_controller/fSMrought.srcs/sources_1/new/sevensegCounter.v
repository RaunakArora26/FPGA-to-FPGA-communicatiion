`timescale 1ns / 1ps

module binarytoSevenSeg(
    input [3:0] Y,
    output reg [6:0] Seg
    );
    
    
    always@(Y)
    begin
    
        case(Y)
            0: Seg<= 7'b1000000;
            1: Seg<= 7'b1111001;
            2: Seg<= 7'b0100100;
            3: Seg<= 7'b0110000;
            4: Seg<= 7'b0011001;
            5: Seg<= 7'b0010010;
            6: Seg<= 7'b0000010;
            7: Seg<= 7'b1111000;
            8: Seg<= 7'b0000000;
            9: Seg<= 7'b0011000;
            10:Seg<= 7'b0001000;
            11:Seg<= 7'b0000011;
            12:Seg<= 7'b1000110;
            13:Seg<= 7'b0100001;
            14:Seg<= 7'b0000110;//E
            15:Seg<= 7'b0001110;//F
        
        endcase
    
    end
    
endmodule
