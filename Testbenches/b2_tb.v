`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2022 02:55:49 AM
// Design Name: 
// Module Name: b2_tb
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


module b2_tb(

    );
    wire [31:0] a,ia,b,ib,c,ic,d,id;
    bfly2 b2(a,b,ia,ib,c,d,ic,id);
    assign a=32'h0001_0000;
    assign ia=32'h0000_0000;
    assign b=32'h0001_0000;
    assign ib=32'h0001_0000;
endmodule
