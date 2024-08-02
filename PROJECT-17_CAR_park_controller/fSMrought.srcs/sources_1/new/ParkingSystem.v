`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////


module ParkingSystem(
    input [14:0] cars,
    output reg [3:0] count
    );
    
    always@(cars)
    begin
    count = cars[0] + cars[1] + cars[2]+ cars[3]+ cars[4]+ cars[5]+
            cars[6]+ cars[7]+ cars[8]+ cars[9]+ cars[10]+ cars[11]+ cars[12]+ cars[13]+ cars[14]+ cars[15];
    end
endmodule
