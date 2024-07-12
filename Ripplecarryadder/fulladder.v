`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 01:10:38
// Design Name: 
// Module Name: fulladder
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


module fulladder(Sum,Cout,A,B,Cin);
input A,B,Cin;
output Sum,Cout;
wire s1,s2,s3;
xor g1(s1,A,B);
xor g2(Sum,s1,Cin);
and a1(s3,A,B);
and a2(s2,s1,Cin);
or r1(Cout,s2,s3);
endmodule
