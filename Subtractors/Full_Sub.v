`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 00:57:04
// Design Name: 
// Module Name: Full_Sub
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


module Full_Sub(output diff,bout,input a,b,bin);
wire x,xbar,abar,y1,y2;
xor x1(x,a,b);
xor x2(diff,bin,x);
not n1(abar,a);
not n2(xbar,x);
and a1(y1,b,abar);
and a2(y2,xbar,bin);
or r1(bout,y1,y2);
endmodule
