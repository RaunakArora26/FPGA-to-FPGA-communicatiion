`timescale 1ns / 1ps

module Binary_to_BCD(
    input [13:0] bin,
    output [3:0] ones,
    output [3:0] tens,
    output [3:0] hundreds,
    output [3:0] thousands
    );
    
 integer i;
 reg [15:0] bcd;
     
 always @(bin) begin
     bcd=0;             
     for (i=0;i<14;i=i+1) begin                    //Iterate once for each bit in input number
        if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 3;        //If any BCD digit is >= 5, add three
        if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 3;
        if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
        if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
        bcd = {bcd[14:0],bin[13-i]};                //Shift one bit, and shift in proper bit from input 
     end
 end
 
 assign ones = bcd[3:0];
 assign tens = bcd[7:4];
 assign hundreds = bcd[11:8];
 assign thousands = bcd[15:12];
 
 endmodule