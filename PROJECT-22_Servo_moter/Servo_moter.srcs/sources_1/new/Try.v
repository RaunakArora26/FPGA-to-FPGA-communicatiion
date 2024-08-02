`timescale 1ns / 1ps

module Try(
    input [1:0] sw,
    output servo0,
    input mclk
);

    reg [20:0] count = 0;
    reg [20:0] control = 0;
    reg toggle = 1;
    reg servo0_reg;

    always @(posedge mclk) begin
        count <= count + 1;
        if(count == 'd1_999_999)       // Count to 2,000,000 for 20ms period
            count <= 0;
        
        if(count < ( 'd100_000 + control))
            servo0_reg <= 1;
        else 
            servo0_reg <= 0;
        
        
        //------------------------     //now just change the control signal as you want 
        if(sw == 2'b00)  //at 00 most left position
            control <= 'd30_000;   
        else if(sw == 2'b11)    //at 11 most right position
            control <= 'd160_000;
        else 
            control <= 'd100_000;   //else middle 
        
//        if(control == 'd100_000)
//                toggle <= 0;
//        if(control == 0)
//                toggle <= 1;
                
                
//        if(count  == 0)
//            begin
//                 if(toggle ==0)
//                    control <= control - 1000;
//                 if(toggle == 1)
//                    control <= control + 1000;
//            end
     end
     
     assign servo0 = servo0_reg;
endmodule