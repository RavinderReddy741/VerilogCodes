`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 22:56:14
// Design Name: 
// Module Name: Carry_Skip_Adder
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


module Carry_Skip_Adder(output cout,[3:0]sum,input [3:0]a,[3:0]b,cin);
wire [3:0]p;
wire sel;
wire [3:0]c;
fulladder f1(sum[0],c[0],a[0],b[0],cin);
fulladder f2(sum[1],c[1],a[1],b[1],c[0]);
fulladder f3(sum[2],c[2],a[2],b[2],c[1]);
fulladder f4(sum[3],c[3],a[3],b[3],c[2]);

andoperation a1(p[0],a[0],b[0]);
andoperation a2(p[1],a[1],b[1]);
andoperation a3(p[2],a[2],b[2]);
andoperation a4(p[3],a[3],b[3]);

assign sel = p[0]^p[1]^p[2]^p[3];

mux m1(cout,sel,cin,c[3]);

endmodule
