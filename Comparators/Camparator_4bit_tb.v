`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 23:39:01
// Design Name: 
// Module Name: Camparator_4bit_tb
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


module Camparator_4bit_tb();
integer i,j;
reg [3:0]a,b;
wire equal,lesser,greater;
Comaparator_4_bit dut(equal,lesser,greater,a,b);
initial
begin
$monitor("a = %0d,b = %0d,equal = %0d,lesser = %0d,greater = %0d",a,b,equal,lesser,greater);
//a = 4'b1001;
//b = 4'b0010;
//#10;
//a = 
for(i = 0;i<=15;i = i+1)
begin
for(j = 15;j>=1; j= j-1)
begin
a = i;
b = j;
#5;
end
end
end
endmodule
