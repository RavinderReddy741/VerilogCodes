`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 21:49:45
// Design Name: 
// Module Name: Demux1x4ifelse
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


module Demux1x4ifelse(output reg y0,y1,y2,y3,input [1:0]sel,input in);
always @(*)
begin
if(sel == 2'b00)
{y0,y1,y2,y3} = {in,3'b000};
else if(sel ==2'b01)
{y0,y1,y2,y3} = {1'b0,in,2'b00};
else if(sel ==2'b10)
{y0,y1,y2,y3} = {2'b00,in,1'b0};
else
{y0,y1,y2,y3} = {3'b00,in};
end
endmodule
