`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 11:08:19
// Design Name: 
// Module Name: CarrySelectAdder
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


module CarrySelectAdder(input [3:0]a,b,input cin,output [3:0]sum,output cout);
wire [3:0] carry0,carry1,temp0,temp1;

fulladder0 f01(temp0[0],carry0[0],a[0],b[0],1'b0);
fulladder0 f02(temp0[1],carry0[1],a[1],b[1],carry0[0]);
fulladder0 f03(temp0[2],carry0[2],a[2],b[2],carry0[1]);
fulladder0 f04(temp0[3],carry0[3],a[3],b[3],carry0[2]);

fulladder0 f11(temp1[0],carry1[0],a[0],b[0],1'b1);
fulladder0 f12(temp1[1],carry1[1],a[1],b[1],carry1[0]);
fulladder0 f13(temp1[2],carry1[2],a[2],b[2],carry1[1]);
fulladder0 f14(temp1[3],carry1[3],a[3],b[3],carry1[2]);

multiplexer m0(temp0[0],temp1[0],cin,sum[0]);
multiplexer m1(temp1[1],temp1[1],cin,sum[1]);
multiplexer m2(temp1[2],temp1[2],cin,sum[2]);
multiplexer m3(temp1[3],temp1[3],cin,sum[3]);

multiplexer m4(carry0[3],carry1[3],cin,cout);

endmodule
