`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 00:02:58
// Design Name: 
// Module Name: Half_sub_data_test
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


module Half_sub_data_test();
wire D,BOUT;
reg A,B;

Half_subtractordataflow dut(D,BOUT,A,B);
initial
begin
$monitor($time,"  a = %b , b = %b , Difference = %b,Borrow = %b",A,B,D,BOUT);
 A= 1'b0;B=1'b0;
 #10
 A= 1'b0;B=1'b1;
 #10
 A= 1'b1;B=1'b0;
 #10
 A= 1'b1;B=1'b1;
 #10
 $finish;
end
endmodule
