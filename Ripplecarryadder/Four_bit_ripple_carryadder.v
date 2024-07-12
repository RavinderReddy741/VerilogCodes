`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 00:57:43
// Design Name: 
// Module Name: Four_bit_ripple_carryadder
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


module Four_bit_ripple_carryadder(Sum,Cout,A,B,Cin);
input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire c1,c2,c3;
fulladder fa1(Sum[0],c1,A[0],B[0],Cin);
fulladder fa2(Sum[1],c2,A[1],B[1],c1);
fulladder fa3(Sum[2],c3,A[2],B[2],c2);
fulladder fa4(Sum[3],Cout,A[3],B[3],c3);
endmodule
