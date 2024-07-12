`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 01:29:09
// Design Name: 
// Module Name: Decoder3x8
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

//LOGIC 1 ENABLE LOGIC 1 OUTPUT
module Decoder3x8(output [7:0]y,input enable,s2,s1,s0);
assign y[0] = enable & ~s0 & ~s1 & ~s2;
assign y[1] = enable & ~s2 & ~s1 & s0;
assign y[2] = enable & ~s2 & s1 & ~s0;
assign y[3] = enable & ~s2 & s1 & s0;
assign y[4] = enable & s2 & ~s1 & ~s0;
assign y[5] = enable & s2 & ~s1 & s0;
assign y[6] = enable & s2 & s1 & ~s0;
assign y[7] = enable & s2 & s1 & s0;
endmodule
