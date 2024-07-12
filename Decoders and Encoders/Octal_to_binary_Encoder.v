`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 00:24:49
// Design Name: 
// Module Name: Octal_to_binary_Encoder
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


module Octal_to_binary_Encoder(input [7:0]s,output [2:0]y);
or(y[0],s[4],s[5],s[6],s[7]);
or(y[1],s[2],s[3],s[6],s[7]);
or(y[2],s[1],s[3],s[5],s[7]);
endmodule
