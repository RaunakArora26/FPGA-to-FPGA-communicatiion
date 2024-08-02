`timescale 1ns / 1ps


module maincarParkController(
    input mclk,
    input [15:0] cars,//switches
    output [3:0] led, 
    output [6:0] seg1,
    output [3:0] an1,
    output [6:0] seg2,
    output reg [3:0] an2
    );
    wire [3:0] count;
    wire SlowClk;
    wire [1:0] enable;
    
    assign an1 = 4'b1110;
    
    ParkingSystem U0(cars,count);
    binarytoSevenSeg U1(count,seg1);
    
    assign led = count;
    
    SlowClock U2(mclk,SlowClk);
    twobitcounter U3(SlowClk,enable);
    
    
    reg [3:0] Y;
    FULL_OPEN U4(Y,seg2);
    
    always@(posedge SlowClk)
    begin
        if(cars[0] & cars[1] & cars[2]& cars[3]& cars[4]& cars[5]&
          cars[6]& cars[7]& cars[8]& cars[9]& cars[10]& cars[11]& 
          cars[12]& cars[13]& cars[14]& cars[15]) 
        begin
                case(enable)
                    0:begin
                        Y=2;
                        an2 = 4'b1110;
                      end
                    1:begin
                        Y=2;
                        an2 = 4'b1101;
                      end
                    2:begin
                        Y=1;
                        an2 = 4'b1011;
                      end
                    3:begin
                        Y=0;
                        an2 = 4'b0111;
                      end
        
                endcase
         end
    
    else if((cars[0] & cars[1] & cars[2]& cars[3]&
            cars[4]& cars[5]& cars[6]& cars[7]& cars[8]&
            cars[9]& cars[10]& cars[11]& cars[12]& cars[13]& cars[14]& cars[15])!=1) 
    begin
        case(enable)
            0:begin
                Y=6;
                an2 = 4'b1110;
              end
            1:begin
                Y=5;
                an2 = 4'b1101;
              end
            2:begin
                Y=4;
                an2 = 4'b1011;
              end
            3:begin
                Y=3;
                an2 = 4'b0111;
              end
        endcase
    
    end
end
    
    
endmodule
