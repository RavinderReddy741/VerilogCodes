`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2023 22:27:45
// Design Name: 
// Module Name: mux9x1
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


module mux9x1(output out,input i0,i1,i2,i3,i4,i5,i6,i7,i8,input [3:0]sel);
wire w1,w2,w3,w4,w5,w6,w7;
mux2x1 m1(w1,i0,i1,sel[0]);
mux2x1 m2(w2,i2,i3,sel[0]);
mux2x1 m3(w3,i4,i5,sel[0]);
mux2x1 m4(w4,i6,i7,sel[0]);
mux2x1 m5(w5,w1,w2,sel[1]);
mux2x1 m6(w6,w3,w4,sel[1]);
mux2x1 m7(w7,w5,w6,sel[2]);
mux2x1 m8(out,w7,i8,sel[3]);
endmodule
