`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2022 04:52:48 PM
// Design Name: 
// Module Name: sht
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


module sht();
reg[31:0] x;
wire[31:0] y;
Shift s(x,y);
initial
begin
x=32'h0025_0124; 
end
endmodule
