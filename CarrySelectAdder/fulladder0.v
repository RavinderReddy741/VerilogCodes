`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 11:33:14
// Design Name: 
// Module Name: fulladder0
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


module fulladder0(output Sum,Carry,input A,B,Cin);
assign Sum = A ^ B ^ Cin;
assign Carry = (A & B)|(B & Cin)|(Cin & A);
endmodule
