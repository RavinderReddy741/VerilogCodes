`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 01:22:55
// Design Name: 
// Module Name: mux9x1_testbech
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


module mux9x1_testbech();
wire out;
reg i0,i1,i2,i3,i4,i5,i6,i7,i8;
reg [3:0]sel;
mux9x1 dut(out,i0,i1,i2,i3,i4,i5,i6,i7,i8,sel);
initial
begin
$monitor("i0 = %b,i1 = %b,i2 = %b,i3 = %b,i4 = %b,i5 = %b,i6 = %b,i7 = %b,i8 = %b,sel = %b ,out = %b",i0,i1,i2,i3,i4,i5,i6,i7,i8,sel,out);
i0 = 1'b0;i1 = 1'b0;i2 = 1'b0;i3 = 1'b0;i4 = 1'b0;i5= 1'b0;i6= 1'b0;i7= 1'b0;i8= 1'b0;sel = 4'b0000;
#10;
i0 = 1'b1;i1 = 1'b1;i2 = 1'b1;i3 = 1'b1;i4 = 1'b1;i5= 1'b1;i6= 1'b1;i7= 1'b1;i8= 1'b1;sel = 4'b1111;
#10;
i0 = 1'b1;i1 = 1'b0;i2 = 1'b1;i3 = 1'b0;i4 = 1'b1;i5= 1'b0;i6= 1'b1;i7= 1'b0;i8= 1'b1;sel = 4'b1100;
#10;
i0 = 1'b0;i1 = 1'b1;i2 = 1'b1;i3 = 1'b0;i4 = 1'b1;i5= 1'b1;i6= 1'b1;i7= 1'b1;i8= 1'b1;sel = 4'b0011;
#10;
i0 = 1'b1;i1 = 1'b0;i2 = 1'b1;i3 = 1'b1;i4 = 1'b0;i5= 1'b1;i6= 1'b1;i7= 1'b0;i8= 1'b0;sel = 4'b0010;
#10;
i0 = 1'b1;i1 = 1'b1;i2 = 1'b1;i3 = 1'b1;i4 = 1'b1;i5= 1'b0;i6= 1'b0;i7= 1'b0;i8= 1'b1;sel = 4'b0101;
#10;
$finish;
end
endmodule
