`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 23:49:49
// Design Name: 
// Module Name: carrylookahead_testbench
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


module carrylookahead_testbench();
reg [3:0]a,b;
reg cin;
wire [3:0] sum;
wire cout;
wire [5:0] add;
carrylookaheadadder gut(a,b,cin,sum,cout);
assign add = {cout,sum};
initial
begin
a = 4'b0000;b = 4'b0000;cin = 1'b0;
#10;
a = 4'b0001;b = 4'b0001;cin = 1'b1;
#10;
a = 4'b0110;b = 4'b1101;cin = 1'b1;
#10;
a = 4'b1111;b = 4'b1111;cin = 1'b1;
#10;
a = 4'b1100;b = 4'b0101;cin = 1'b0;
#10;
$finish;
end
endmodule
