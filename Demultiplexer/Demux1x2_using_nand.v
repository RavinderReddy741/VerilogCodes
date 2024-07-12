`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 13:18:24
// Design Name: 
// Module Name: Demux1x2_using_nand
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


module Demux1x2_using_nand(output y0,y1,input sel,in);
wire w1,w2,w3;
nand n1(w1,sel,sel);
nand n2(w2,w1,in);
nand n3(y0,w2,w2);
nand n4(w3,sel,in);
nand n5(y1,w3,w3);
endmodule
