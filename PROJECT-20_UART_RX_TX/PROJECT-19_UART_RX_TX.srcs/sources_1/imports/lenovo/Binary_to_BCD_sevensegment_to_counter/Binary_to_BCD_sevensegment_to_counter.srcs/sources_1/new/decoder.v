`timescale 1ns / 1ps

module decoder(
    input [1:0] en,
    output reg [3:0] an
    );
    
    always@(en)
    begin
        case(en)
            
            0: an = 4'b1110;//once
            1: an = 4'b1101;//tens
            2: an = 4'b1011;//hundres
            3: an = 4'b1111;//thousenads (alwyas off{no need})
        
        endcase
    
    
    end
    
endmodule
