`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 11:28:40
// Design Name: 
// Module Name: Demux1x8using1x4
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


module Demux1x8using1x4(output y0,y1,y2,y3,y4,y5,y6,y7,input s2,s1,s0,input in);
demux1x4 d1(y0,y1,y2,y3,s2,s1,s0,in);
demux1x4 d2(y4,y5,y6,y7,~s2,s1,s0,in);
endmodule
