`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2022 10:28:48 PM
// Design Name: 
// Module Name: cntrl
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


module proc_cntrl(
input clk, rst,
input [31:0] in[15:0],ini[15:0],
output [31:0] out[15:0],outi[15:0]
    );
    
wire [32*16-1:0] a = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],in[8],in[9],in[10],in[11],in[12],in[13],in[14],in[15]};
wire [32*16-1:0] ia = {ini[0],ini[1],ini[2],ini[3],ini[4],ini[5],ini[6],ini[7],ini[8],ini[9],ini[10],ini[11],ini[12],ini[13],ini[14],ini[15]};
wire [32*16-1:0] b,ib;
pplin_core(clk,a,ia,b,ib);
assign out[0] = b[31:0];
endmodule
