`timescale 1ns / 1ps


module modsixteencounter
#(parameter from = 4,
  parameter to = 11
  )  
(
    input mclk,
    input sw,
    input reset,
    output reg [3:0] count = 4
);
    

    
    always@(posedge mclk or posedge reset)
    begin
        if(reset)
            count <=from;
        else
        begin
            if (sw)
            begin
                if(count == to)
                    count <= from;
                else 
                    count <= count +1;
            end
        else 
            count <= count;
        end
        
    end



endmodule
