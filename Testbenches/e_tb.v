`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2022 03:24:05 AM
// Design Name: 
// Module Name: e_tb
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


module e_tb(

    );
       wire [31:0] out[15:0];
wire [31:0] outi[15:0];

wire[31:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,Ia,Ib,Ic,Id,Ie,If,Ig,Ih,Ii,Ij,Ik,Il,Im,In,Io,Ip;
wire[31:0] Oa,Ob,Oc,Od,Oe,Of,Og,Oh,Oi,Oj,Ok,Ol,Om,On,Oo,Op,OIa,OIb,OIc,OId,OIe,OIf,OIg,OIh,OIi,OIj,OIk,OIl,OIm,OIn,OIo,OIp;
wire [32*16-1:0] in = {a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p};
wire [32*16-1:0] ini = {Ia,Ib,Ic,Id,Ie,If,Ig,Ih,Ii,Ij,Ik,Il,Im,In,Io,Ip};
wire [32*16-1:0] ub,ib;
    eightpt s(in,ini,ub,ib);
    assign a=32'h0011_0000,b=32'h1000_0000,c=0,d=0,e=0,f=0,g=0,h=0,i=0,j=0,k=0,l=0,m=0,n=0,o=0,p=0,Ia=0,Ib=0,Ic=0,Id=0,Ie=0,If=0,Ig=0,Ih=0,Ii=0,Ij=0,Ik=0,Il=0,Im=0,In=0,Io=0,Ip=0;
assign out[0] = ub[31:0]; assign outi[0] = ib[31:0];
assign out[1] = ub[63:32]; assign outi[1] = ib[63:32];
assign out[2] = ub[95:64]; assign outi[2] = ib[95:64];
assign out[3] = ub[127:96]; assign outi[3] = ib[127:96];
assign out[4] = ub[159:128]; assign outi[4] = ib[159:128];
assign out[5] = ub[191:160]; assign outi[5] = ib[191:160];
assign out[6] = ub[223:192]; assign outi[6] = ib[223:192];
assign out[7] = ub[255:224]; assign outi[7] = ib[255:224];
assign out[8] = ub[287:256]; assign outi[8] = ib[287:256];
assign out[9] = ub[319:288]; assign outi[9] = ib[319:288];
assign out[10] = ub[351:320]; assign outi[10] = ib[351:320];
assign out[11] = ub[383:352]; assign outi[11] = ib[31:0];
assign out[12] = ub[415:384]; assign outi[12] = ib[415:384];
assign out[13] = ub[447:416]; assign outi[13] = ib[447:416];
assign out[14] = ub[479:448]; assign outi[14] = ib[479:448];
assign out[15] = ub[511:480]; assign outi[15] = ib[511:480];

endmodule
