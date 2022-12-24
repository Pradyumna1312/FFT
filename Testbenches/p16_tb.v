`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2022 05:35:18 PM
// Design Name: 
// Module Name: p16_tb
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


module p16_tb();
reg clk=0;
wire [63:0] out[15:0];
wire [63:0] outi[15:0];

reg[31:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,Ia,Ib,Ic,Id,Ie,If,Ig,Ih,Ii,Ij,Ik,Il,Im,In,Io,Ip;
wire [32*16-1:0] in = {p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a};
wire [32*16-1:0] ini = {Ip,Io,In,Im,Il,Ik,Ij,Ii,Ih,Ig,If,Ie,Id,Ic,Ib,Ia};
wire [64*16-1:0] ub,ib;

initial
forever #5 clk=!clk;


pplin_core f16(clk,in,ini,ub,ib);

assign out[0] = ub[63:0]; assign outi[0] = ib[63:0];
assign out[1] = ub[127:64]; assign outi[1] = ib[127:64];
assign out[2] = ub[191:128]; assign outi[2] = ib[191:64*2];
assign out[3] = ub[255:192]; assign outi[3] = ib[255:96*2];
assign out[4] = ub[319:256]; assign outi[4] = ib[319:2*128];
assign out[5] = ub[383:320]; assign outi[5] = ib[383:2*160];
assign out[6] = ub[447:384]; assign outi[6] = ib[447:2*192];
assign out[7] = ub[511:448]; assign outi[7] = ib[511:2*224];
assign out[8] = ub[575:512]; assign outi[8] = ib[575:2*256];
assign out[9] = ub[639:576]; assign outi[9] = ib[639:2*288];
assign out[10] = ub[703:640]; assign outi[10] = ib[703:2*320];
assign out[11] = ub[767:704]; assign outi[11] = ib[767:704];
assign out[12] = ub[831:768]; assign outi[12] = ib[831:768];
assign out[13] = ub[895:832]; assign outi[13] = ib[895:832];
assign out[14] = ub[959:896]; assign outi[14] = ib[959:2*448];
assign out[15] = ub[1023:960]; assign outi[15] = ib[1023:2*480];

initial
begin
a=32'h0001_0000;
b=32'h0001_0000;
c=32'h0001_0000;
d=32'h0001_0000;
e=0;f=0;g=0;h=0;i=0;j=0;k=0;l=0;m=0;n=0;o=0;p=0;Ia=0;Ib=0;Ic=0;Id=0;Ie=0;If=0;Ig=0;Ih=0;Ii=0;Ij=0;Ik=0;Il=0;Im=0;In=0;Io=0;Ip=0;

#50 
a=32'h0001_0000;
b=32'h0000_0000;
c=32'h0001_0000;
d=32'h0000_0000;
e=0;f=0;g=0;h=0;i=0;j=0;k=0;l=0;m=0;n=0;o=0;p=0;Ia=0;Ib=0;Ic=0;Id=0;Ie=0;If=0;Ig=0;Ih=0;Ii=0;Ij=0;Ik=0;Il=0;Im=0;In=0;Io=0;Ip=0;

#50
a=32'h000_0000;
b=32'h0001_0000;
c=32'h0001_0000;
d=32'h000_0000;
e=0;f=0;g=0;h=0;i=0;j=0;k=0;l=0;m=0;n=0;o=0;p=0;Ia=0;Ib=0;Ic=0;Id=0;Ie=0;If=0;Ig=0;Ih=0;Ii=0;Ij=0;Ik=0;Il=0;Im=0;In=0;Io=0;Ip=0;

#50
a=32'h001_0000;
b=32'h0000_0000;
c=32'h0000_0000;
d=32'h000_0000;
e=0;f=0;g=0;h=0;i=0;j=0;k=0;l=0;m=0;n=0;o=0;p=0;Ia=0;Ib=0;Ic=0;Id=0;Ie=0;If=0;Ig=0;Ih=0;Ii=0;Ij=0;Ik=0;Il=0;Im=0;In=0;Io=0;Ip=0;
end
endmodule
