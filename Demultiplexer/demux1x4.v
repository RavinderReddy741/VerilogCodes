`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 11:39:35
// Design Name: 
// Module Name: demux1x4
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


module demux1x4(output out1,out2,out3,out4,input en,sel0,sel1,input inp);
assign out1 = (~en & (~sel0 & ~ sel1))?inp:1'b0;
assign out2 = (~en & (~sel0 &  sel1))?inp:1'b0;
assign out3 = (~en & (sel0 & ~ sel1))?inp:1'b0;
assign out4 = (~en & (sel0 & sel1))?inp:1'b0;
endmodule
