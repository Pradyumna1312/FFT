`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2022 10:51:18 PM
// Design Name: 
// Module Name: sixtnpt
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


module sixtnpt(
input [32*16-1:0] in,ini,
output [32*16-1:0] out,outi
    );


bfly2 b1(in[31:0],in[287:256],ini[31:0],ini[287:256],out[31:0],out[287:256],outi[31:0],outi[287:256]);
bfly2 b2(in[63:32],in[319:288],ini[63:32],ini[319:288],out[63:32],out[319:288],outi[63:32],outi[319:288]);
bfly2 b3(in[95:64],in[351:320],ini[95:64],ini[351:320],out[351:320],out[95:64],outi[351:320],outi[95:64]);
bfly2 b4(in[127:96],in[383:352],ini[127:96],ini[383:352],out[127:96],out[383:352],outi[127:96],outi[383:352]);
bfly2 b5(in[159:128],in[415:384],ini[159:128],ini[415:384],out[159:128],out[415:384],outi[159:128],outi[415:384]);
bfly2 b6(in[191:160],in[447:416],ini[191:160],ini[447:416],out[191:160],out[447:416],outi[191:160],outi[447:416]);
bfly2 b7(in[223:192],in[479:448],ini[223:192],ini[479:448],out[223:192],out[479:448],outi[223:192],outi[479:448]);
bfly2 b8(in[255:224],in[511:480],ini[255:224],ini[511:480],out[255:224],out[511:480],outi[255:224],outi[511:480]);


endmodule
