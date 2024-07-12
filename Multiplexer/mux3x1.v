`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 21:47:18
// Design Name: 
// Module Name: mux3x1
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


module mux3x1(output out,input i0,i1,i2,input [1:0]sel);
wire w1;
mux2x1 m1(w1,i0,i1,sel[0]);
mux2x1 m2(out,w1,i2,sel[1]);
endmodule
