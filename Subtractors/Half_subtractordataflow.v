`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 00:00:13
// Design Name: 
// Module Name: Half_subtractordataflow
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


module Half_subtractordataflow(D,BOUT,A,B);
output D,BOUT;
input A,B;
assign D = A^B;
assign BOUT= ~A & B;
endmodule
