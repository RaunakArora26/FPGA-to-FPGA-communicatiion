`timescale 1ns / 1ps

module fsm(
    input clk,
    output  reg [3:0] led
    );
    parameter S0 = 0 , S1 = 1 , S2 = 2 ;
    parameter red = 3'b100 , green = 3'b010 , yellow = 3'b110;
    
    reg [1:0] state;
    
    always@(posedge clk)
    begin
        case(state)
            0:begin
                state <= S1;
                led <= green;   
              end
            1:begin
                state <= S2;
                led <= yellow;                
              end
            2:begin
                state <= S0;
                led <= red;                
              end  
            default:begin
                        state <= S0;
                        led <= red;
                    end
              
        endcase
    
    end
    
    
endmodule
