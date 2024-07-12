`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 01:08:45
// Design Name: 
// Module Name: Full_subtractor_testbench
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


module Full_subtractor_testbench();
reg a,b,bin;
wire diff,bout;
integer i;
Full_Sub dut(diff,bout,a,b,bin);
initial
begin
//a=1'b0;b=1'b0;bin = 1'b0;
//#10;
//a=1'b0;b=1'b0;bin = 1'b1;
//#10;
//a=1'b0;b=1'b1;bin = 1'b0;
//#10;
//a=1'b0;b=1'b1;bin = 1'b1;
//#10;
//a=1'b1;b=1'b0;bin = 1'b0;
//#10;
//a=1'b1;b=1'b0;bin = 1'b1;
//#10;
//a=1'b1;b=1'b1;bin = 1'b0;
//#10;
//a=1'b1;b=1'b1;bin = 1'b1;
//#10;
for(i=0;i<8;i=i+1)
      begin
        {a,b,bin} = i;
        #10;
      end
$finish;
end
endmodule
