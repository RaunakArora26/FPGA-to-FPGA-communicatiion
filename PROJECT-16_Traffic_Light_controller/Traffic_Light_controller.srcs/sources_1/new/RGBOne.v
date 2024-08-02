`timescale 1ns / 1ps


module Top(
    input mclk,
    output reg [2:0] RGB0,
    output reg [2:0] RGB1
    );
    
    wire [2:0] count;
    wire slowclk;
    
    Five_sec_clk(mclk,slowclk);
    threebitcounter(slowclk,count);
    
    always@(posedge mclk)
    begin
        case(count)
            0:begin
                RGB0[0] = 1;
                RGB0[1] = 0;
                RGB0[2] = 0;
                
                RGB1[0] = 0;
                RGB1[1] = 1;
                RGB1[2] = 0;
              end
            1:begin
                RGB0[0] = 1;
                RGB0[1] = 0;
                RGB0[2] = 0;
                
                RGB1[0] = 0;
                RGB1[1] = 1;
                RGB1[2] = 0;
              end
            2:begin
                RGB0[0] = 1;
                RGB0[1] = 0;
                RGB0[2] = 0;
                
                RGB1[0] = 1;
                RGB1[1] = 1;
                RGB1[2] = 0;
              end
            3:begin
                RGB0[0] = 0;
                RGB0[1] = 1;
                RGB0[2] = 0;
                
                RGB1[0] = 1;
                RGB1[1] = 0;
                RGB1[2] = 0;
              end
            4:begin
                RGB0[0] = 0;
                RGB0[1] = 1;
                RGB0[2] = 0;
                
                RGB1[0] = 1;
                RGB1[1] = 0;
                RGB1[2] = 0;
              end
            5:begin
                  RGB0[0] = 1;
                  RGB0[1] = 1;
                  RGB0[2] = 0;
                  
                  RGB1[0] = 1;
                  RGB1[1] = 0;
                  RGB1[2] = 0;
                end
            
        
        endcase
    end
    
    
    
endmodule
