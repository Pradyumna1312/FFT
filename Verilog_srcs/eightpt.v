`timescale 1ns/1ps

module eightpt(
input clk,
input [32*16-1:0] in ,ini,
output [64*16-1:0] out,outi
);
wire [31:0] twi_mem[15:0];
assign twi_mem[0]=32'h0001_0000;
assign twi_mem[1]=32'h0000_0000;
assign twi_mem[2]=32'h0000_eed2;
assign twi_mem[3]=32'hffff_9e08;
assign twi_mem[4]=32'h0000_b504;
assign twi_mem[5]=32'hffff_4afc;
assign twi_mem[6]=32'h0000_61f8;
assign twi_mem[7]=32'hffff_137c;
assign twi_mem[8]=32'h0000_0000;
assign twi_mem[9]=32'hffff_0000;
assign twi_mem[10]=32'hffff_9e08;
assign twi_mem[11]=32'hffff_137c;
assign twi_mem[12]=32'hffff_4afc;
assign twi_mem[13]=32'hffff_4afc;
assign twi_mem[14]=32'hffff_137c;
assign twi_mem[15]=32'hffff_9e08;
wire [64*16-1:0] ut,uti,x,xi;
assign {outi[15:0],outi[79:48]}=0;
assign {out[15:0],out[79:48]}=0;
assign {outi[15:0],outi[79:48],outi[143:112],outi[207:176],outi[271:240]}=0;
assign {out[15:0],out[79:48],out[143:112],out[207:176],out[271:240]}=0;
//],out[335:304],out[399:368],out[463:432]
bfly2 b1(in[31:0],in[159:128],ini[31:0],ini[159:128],out[47:16],x[303:272],outi[47:16],xi[303:272]);
bfly2 b2(in[63:32],in[191:160],ini[63:32],ini[191:160],out[111:80],x[367:336],outi[111:80],xi[367:336]);
bfly2 b3(in[95:64],in[223:192],ini[95:64],ini[223:192],out[175:144],x[431:400],outi[175:144],xi[431:400]);
bfly2 b4(in[127:96],in[255:224],ini[127:96],ini[255:224],out[239:208],x[495:464],outi[239:208],xi[495:464]);
cmpx_mul m1(clk,in[287:256],ini[287:256],twi_mem[0],twi_mem[1],ut[575:512],uti[575:512]);
cmpx_mul m2(clk,in[319:288],ini[319:288],twi_mem[2],twi_mem[3],ut[639:576],uti[639:576]);
cmpx_mul m3(clk,in[351:320],ini[351:320],twi_mem[4],twi_mem[5],ut[703:640],uti[703:640]);
cmpx_mul m4(clk,in[383:352],ini[383:352],twi_mem[6],twi_mem[7],ut[767:704],uti[767:704]);
cmpx_mul m5(clk,in[415:384],ini[415:384],twi_mem[8],twi_mem[9],ut[831:768],uti[831:768]);
cmpx_mul m6(clk,in[447:416],ini[447:416],twi_mem[10],twi_mem[11],ut[895:832],uti[895:832]);
cmpx_mul m7(clk,in[479:448],ini[479:448],twi_mem[12],twi_mem[13],ut[959:896],uti[959:896]);
cmpx_mul m8(clk,in[511:480],ini[511:480],twi_mem[14],twi_mem[15],ut[1023:960],uti[1023:960]);

bfly21 b5(ut[575:512],ut[831:768],uti[575:512],uti[831:768],out[575:512],x[831:768],outi[575:512],xi[831:768]);
bfly21 b6(ut[639:576],ut[895:832],uti[639:576],uti[895:832],out[639:576],x[895:832],outi[639:576],xi[895:832]);
bfly21 b7(ut[703:640],ut[959:896],uti[703:640],uti[959:896],out[703:640],x[959:896],outi[703:640],xi[959:896]);
bfly21 b8(ut[767:704],ut[1023:960],uti[767:704],uti[1023:960],out[767:704],x[1023:960],outi[767:704],xi[1023:960]);

cmpx_mul m12(clk,x[303:272],xi[303:272],twi_mem[0],twi_mem[1],out[319:256],outi[319:256]);
cmpx_mul m22(clk,x[367:336],xi[367:336],twi_mem[4],twi_mem[5],out[383:320],outi[383:320]);
cmpx_mul m32(clk,x[431:400],xi[431:400],twi_mem[8],twi_mem[9],out[447:384],outi[447:384]);
cmpx_mul m42(clk,x[495:464],xi[495:464],twi_mem[12],twi_mem[13],out[511:448],outi[511:448]);
cmpx_mul m52(clk,x[815:784],xi[815:784],twi_mem[0],twi_mem[1],out[831:768],outi[831:768]);
cmpx_mul m62(clk,x[879:848],xi[879:848],twi_mem[4],twi_mem[5],out[895:832],outi[895:832]);
cmpx_mul m72(clk,x[943:911],xi[943:911],twi_mem[8],twi_mem[9],out[959:896],outi[959:896]);
cmpx_mul m82(clk,x[1008:976],xi[1008:976],twi_mem[12],twi_mem[13],out[1023:960],outi[1023:960]);
endmodule