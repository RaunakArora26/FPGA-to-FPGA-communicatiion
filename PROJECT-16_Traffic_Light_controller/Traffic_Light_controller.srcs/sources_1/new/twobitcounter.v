`timescale 1ns / 1ps

module threebitcounter(
    input clk,
    output reg [2:0] count = 0
    );
    
    always@(posedge clk)
    begin
        count <= count + 1;
        if(count == 5)
        begin
            count <= 0;
        end
    end
    
endmodule
