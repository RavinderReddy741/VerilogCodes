`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2023 20:47:46
// Design Name: 
// Module Name: Decoder
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


module Decoder(output [3:0]y,input s0,s1,enable);
assign y[0] = (enable & ~s0 & ~s1);
assign y[1] = (enable & s0 & ~s1);
assign y[2] = (enable & ~s0 & s1);
assign y[3] = (enable & s0 & s1);
endmodule
