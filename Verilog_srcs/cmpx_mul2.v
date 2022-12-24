`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 11:50:47 AM
// Design Name: 
// Module Name: cmpx_mul2
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


module cmpx_mul2(input wire [31:0] in1,in1i,in2,in2i,output wire[31:0] O,Oi);
wire[63:0]  o;
wire[63:0]  oi;
assign o = in1*in2-in1i*in2i;
assign oi = in1*in2i+in2*in1i;
assign O ={o[47:32],o[15:0]};
assign Oi = {oi[47:32],oi[15:0]};
endmodule
