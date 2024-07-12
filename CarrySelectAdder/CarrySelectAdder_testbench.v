`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 11:48:16
// Design Name: 
// Module Name: CarrySelectAdder_testbench
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


module CarrySelectAdder_testbench();
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]sum;

CarrySelectAdder dut(a,b,cin,sum,cout);
initial
begin
a = 4'b0000;b = 4'b0001;cin=0;
#10;
a = 4'b0001;b = 4'b0001;cin=0;
#10;
a = 4'b0010;b = 4'b0010;cin=0;
#10;
a = 4'b0011;b = 4'b0011;cin=0;
#10;
a = 4'b1111;b = 4'b1111;cin=1;
#10;
a = 4'b1111;b = 4'b1111;cin=0;
#10;
$finish;
end
endmodule
