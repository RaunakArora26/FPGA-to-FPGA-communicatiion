`timescale 1ns / 1ps

module Full_adder_tb();

reg A,B,Cin;
wire S,Cout;
integer i;

Full_adder dut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

initial begin
    
    for(i=0;i<8;i=i+1)
    begin
        {A,B,Cin} = i; 
        #10;   
    end
    $finish;
end



endmodule
