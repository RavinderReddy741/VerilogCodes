`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 11:58:44
// Design Name: 
// Module Name: Demux1x8_tb
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


module Demux1x8_tb();
wire y0,y1,y2,y3,y4,y5,y6,y7;
reg s2,s1,s0,in;
Demux1x8using1x4 dut1(y0,y1,y2,y3,y4,y5,y6,y7,s2,s1,s0,in);
initial
begin
$monitor("y0 = %0b,y1 = %0b,y2 = %0b,y3 = %0b,y4 = %0b,y5 = %0b,y6 = %0b,y7 = %0b,s2 = %0b,s1 = %0b,s0 = %0b,in = %0b",y0,y1,y2,y3,y4,y5,y6,y7,s2,s1,s0,in);
{s2,s1,s0} = 3'b000;in = 1'b0;
#10;
{s2,s1,s0} = 3'b000;in = 1'b1;
#10;
{s2,s1,s0} = 3'b001;in = 1'b0;
#10;
{s2,s1,s0} = 3'b001;in = 1'b1;
#10;
{s2,s1,s0} = 3'b010;in = 1'b0;
#10;
{s2,s1,s0} = 3'b010;in = 1'b1;
#10;
{s2,s1,s0} = 3'b011;in = 1'b0;
#10;
{s2,s1,s0} = 3'b011;in = 1'b1;
#10;
{s2,s1,s0} = 3'b100;in = 1'b0;
#10;
{s2,s1,s0} = 3'b100;in = 1'b1;
#10;
{s2,s1,s0} = 3'b101;in = 1'b0;
#10;
{s2,s1,s0} = 3'b101;in = 1'b1;
#10;
{s2,s1,s0} = 3'b110;in = 1'b0;
#10;
{s2,s1,s0} = 3'b110;in = 1'b1;
#10;
{s2,s1,s0} = 3'b111;in = 1'b0;
#10;
{s2,s1,s0} = 3'b111;in = 1'b1;
#10;
$finish;
end
endmodule
