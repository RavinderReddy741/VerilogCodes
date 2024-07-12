`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 01:44:30
// Design Name: 
// Module Name: Decoder3x8_tb
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


module Decoder3x8_tb();
reg enable ,s0,s1,s2;
wire [7:0]y;
integer i;
Decoder3x8 dut(y,enable,s2,s1,s0);
initial
begin
for(i=0;i<=7;i=i+1)
begin
enable = 1;
{s2,s1,s0} = i;
#10;
end
$finish;
end
endmodule
