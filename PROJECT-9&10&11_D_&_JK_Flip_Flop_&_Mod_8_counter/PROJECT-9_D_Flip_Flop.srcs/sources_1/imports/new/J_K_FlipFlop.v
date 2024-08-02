`timescale 1ns / 1ps


module J_K_FlipFlop(
    input mclk,
    input J,
    input K,
    input reset,
    output reg Q=0,
    output Not_Q
    );
    
    always@(posedge mclk)
    begin
        if(reset)
            Q<=0;
        else  begin
        case({J,K})
            2'b00:Q <= Q;
            2'b01:Q <= 0;
            2'b10:Q <= 1;
            2'b11:Q <= ~Q;
        endcase 
        end
    
    end
    
    assign Not_Q = ~Q;
    
    
endmodule
