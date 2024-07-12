`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 00:49:56
// Design Name: 
// Module Name: Demux1x4using1x2
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


module Demux1x4using1x2(output y0,y1,y2,y3,input [1:0]sel,input in);
wire w1,w2;
demux1x2 d1(w1,w2,sel[1],in);
demux1x2 d2(y0,y1,sel[0],w1);
demux1x2 d3(y2,y3,sel[0],w2);
endmodule
