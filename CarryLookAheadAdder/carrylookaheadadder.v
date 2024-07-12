`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 21:04:43
// Design Name: 
// Module Name: carrylookaheadadder
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


module carrylookaheadadder(input [3:0]a,[3:0]b,input cin,output [3:0]sum,cout);
wire [3:0]c;
assign c[0] = cin;
assign c[1] = (a[0] & b[0]) |((a[0] ^ b[0]) & c[0]);
assign c[2] = (a[1] & b[1]) | (( a[1] ^ b[1])&(a[0] & b[0]))|((a[0] ^ b[0]) & (a[1] & b[1]) & c[0]);
assign c[3] = (a[2] & b[2]) | ((a[2] ^ b[2]) & (a[1] & b[1])) | ((a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] & b[0])) | ((a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] & b[0]) & c[0]);
assign cout  = (a[3] & b[3]) | ((a[3] ^ b[3]) & (a[2] & b[2])) | ((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] & b[1]))|((a[3] ^ b[3]) & (a[2] ^ b[2] ) & (a[1] ^ b[1]) & (a[0] & b[0])) | ((a[3] ^ b[3]) & (a[2] ^ b[2] ) & (a[1] ^ b[1]) & (a[0] ^ b[0]) & c[0]);
assign sum = a^b^cin;
endmodule
