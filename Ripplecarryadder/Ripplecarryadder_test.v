`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 01:18:41
// Design Name: 
// Module Name: Ripplecarryadder_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Ripplecarryadder_test();
reg [3:0]A,B;
reg Cin;
wire [3:0]Sum;
wire Cout;
Four_bit_ripple_carryadder dut(Sum,Cout,A,B,Cin);
initial
begin
$monitor($time ," A = %b ,B = %b, Cin = %b,Sum = %b,Cout = %b",A,B,Cin,Sum,Cout);
#10;
A = 4'b1111;B= 4'b1111;Cin=1'b0;
#10;
A = 4'b1101;B= 4'b1111;Cin=1'b0;
#10;
A = 4'b0000;B= 4'b1011;Cin=1'b0;
#10;
A = 4'b0000;B= 4'b0000;Cin=1'b1;
#10;
A = 4'b1111;B= 4'b1011;Cin=1'b1;
#10;
$finish;
end
endmodule
