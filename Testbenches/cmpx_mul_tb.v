`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2022 11:30:47 PM
// Design Name: 
// Module Name: cmpx_mul_tb
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


module cmpx_mul_tb();
reg[31:0] in1,in1i,in2,in2i;
wire[31:0] O,Oi;
initial
begin
in1=1;in1i=2;in2=4;in2i=2;
end

cmpx_mul c1(in1,in1i,in2,in2i,O,Oi);
endmodule
