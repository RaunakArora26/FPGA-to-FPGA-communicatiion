`timescale 1ns / 1ps


module sequence_detector1(
    input mclk,
    input num,
    output reg out
    );
    
    
    parameter S_=0,S0=1,S00=2,S001=3,S0010=4;
    reg [2:0] state=S_;
    
    always@(posedge mclk)//state transition fn
    begin
        case(state)
            0:if(~num)
                state <= state + 1;
              else 
                state <= state;
            1:if(~num)
                 state <= state + 1;
              else 
                 state <= S_;
            2:if(num)
                 state <= state +1;
               else 
                 state <= state;     
            3:if(~num)
                 state <= state + 1;
              else 
                 state <= S_;
            4:if(num)
                 state <= S_;
              else
                  state <= S00;
            default: state <= S_;      
            
        endcase
    
    end
    
    
    always@(state or num)//outputfn
    begin
        case(state)
            S_:out = 0;
            S0:out = 0;
            S00:out = 0;
            S001:if(~num)
                   out = 1;
                 else 
                   out = 0;
            S0010:out = 0;
        endcase
    end
    
endmodule
