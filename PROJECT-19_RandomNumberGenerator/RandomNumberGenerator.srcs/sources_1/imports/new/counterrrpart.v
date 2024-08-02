`timescale 1ns / 1ps


module modsixteencounter(
    input mclk,
    input sw,
    output reg [7:0] count = 0
);
    
reg r_sw= 1'b0;
    
    always@(posedge mclk)
    begin
    //create a reg
    r_sw <= sw;
    
    //with each button press this satement occurs
    if (r_sw == 1'b0 && sw == 1'b1)
    begin
        if(count == 15)
            count <= 0;
        else 
            count = count +1;
    end
    end



endmodule
