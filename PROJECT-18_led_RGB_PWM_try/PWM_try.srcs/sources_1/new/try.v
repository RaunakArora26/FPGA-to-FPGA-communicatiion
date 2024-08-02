`timescale 1ns / 1ps


module PWM_RGB_led(
    input mclk,
    input [4:0] sw,
    output reg [2:0] led    
    );
    
    reg [7:0] count = 0;
    
    always@(posedge mclk)
    begin
        if(count < 100)
            count <= count + 1;
        else 
            count<=0;    
    end
    
    always@(*)
    begin
    case(sw)
                0: begin
                    led[0] = (count < 100) ? 1 : 0;
                    led[1] = 0;
                    led[2] = 0;
                end
                1: begin
                    led[0] = (count < 90) ? 1 : 0;
                    led[1] = (count < 10) ? 1 : 0;
                    led[2] = 0;
                end
                2: begin
                    led[0] = (count < 80) ? 1 : 0;
                    led[1] = (count < 20) ? 1 : 0;
                    led[2] = 0;
                end
                3: begin
                    led[0] = (count < 70) ? 1 : 0;
                    led[1] = (count < 30) ? 1 : 0;
                    led[2] = 0;
                end
                4: begin
                    led[0] = (count < 60) ? 1 : 0;
                    led[1] = (count < 40) ? 1 : 0;
                    led[2] = 0;
                end
                5: begin
                    led[0] = (count < 50) ? 1 : 0;
                    led[1] = (count < 50) ? 1 : 0;
                    led[2] = 0;
                end
                6: begin
                    led[0] = (count < 40) ? 1 : 0;
                    led[1] = (count < 60) ? 1 : 0;
                    led[2] = 0;
                end
                7: begin
                    led[0] = (count < 30) ? 1 : 0;
                    led[1] = (count < 70) ? 1 : 0;
                    led[2] = 0;
                end
                8: begin
                    led[0] = (count < 20) ? 1 : 0;
                    led[1] = (count < 80) ? 1 : 0;
                    led[2] = 0;
                end
                9: begin
                    led[0] = (count < 10) ? 1 : 0;
                    led[1] = (count < 90) ? 1 : 0;
                    led[2] = 0;
                end
                10: begin
                    led[0] = 0;
                    led[1] = (count < 100) ? 1 : 0;
                    led[2] = 0;
                end
                11: begin
                    led[0] = 0;
                    led[1] = (count < 90) ? 1 : 0;
                    led[2] = (count < 10) ? 1 : 0;
                end
                12: begin
                    led[0] = 0;
                    led[1] = (count < 80) ? 1 : 0;
                    led[2] = (count < 20) ? 1 : 0;
                end
                13: begin
                    led[0] = 0;
                    led[1] = (count < 70) ? 1 : 0;
                    led[2] = (count < 30) ? 1 : 0;
                end
                14: begin
                    led[0] = 0;
                    led[1] = (count < 60) ? 1 : 0;
                    led[2] = (count < 40) ? 1 : 0;
                end
                15: begin
                    led[0] = 0;
                    led[1] = (count < 50) ? 1 : 0;
                    led[2] = (count < 50) ? 1 : 0;
                end
                16: begin
                    led[0] = 0;
                    led[1] = (count < 40) ? 1 : 0;
                    led[2] = (count < 60) ? 1 : 0;
                end
                17: begin
                    led[0] = 0;
                    led[1] = (count < 30) ? 1 : 0;
                    led[2] = (count < 70) ? 1 : 0;
                end
                18: begin
                    led[0] = 0;
                    led[1] = (count < 20) ? 1 : 0;
                    led[2] = (count < 80) ? 1 : 0;
                end
                19: begin
                    led[0] = 0;
                    led[1] = (count < 10) ? 1 : 0;
                    led[2] = (count < 90) ? 1 : 0;
                end
                20: begin
                    led[0] = 0;
                    led[1] = 0;
                    led[2] = (count < 100) ? 1 : 0;
                end
                21: begin
                   led[0] = (count < 10) ? 1 : 0;
                   led[1] = 0;
                   led[2] = (count < 90) ? 1 : 0;
                end
                22: begin
                    led[0] = (count < 20) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 80) ? 1 : 0;
                end
                23: begin
                    led[0] = (count < 30) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 70) ? 1 : 0;
                end
                24: begin
                    led[0] = (count < 40) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 60) ? 1 : 0;
                end
                25: begin
                    led[0] = (count < 50) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 50) ? 1 : 0;
                end
                26: begin
                    led[0] = (count < 60) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 40) ? 1 : 0;
                end
                27: begin
                    led[0] = (count < 70) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 30) ? 1 : 0;
                end
                28: begin
                    led[0] = (count < 80) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 20) ? 1 : 0;
                end
                29: begin
                    led[0] = (count < 90) ? 1 : 0;
                    led[1] = 0;
                    led[2] = (count < 10) ? 1 : 0;
                end
                30: begin
                    led[0] = (count < 50) ? 1 : 0;
                    led[1] = (count < 50) ? 1 : 0;
                    led[2] = (count < 50) ? 1 : 0;
                end
                31: begin
                    led[0] = (count < 33) ? 1 : 0;
                    led[1] = (count < 33) ? 1 : 0;
                    led[2] = (count < 33) ? 1 : 0;
                end
                default: begin
                    led[0] = 0;
                    led[1] = 0;
                    led[2] = 0;
                end
      endcase
      end
   
endmodule
