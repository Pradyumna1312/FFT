`timescale 1ns/1ps

module pplin_core(
input clk,
input [32*16-1:0] in,ini,
output reg[64*16-1:0]  out,outi
);
reg [32*16-1:0] a,ia,b,ib;
reg pipe1_active=1,pipe2_active=0,pipe3_active=0, pipe4_active=0;
reg [32*16-1:0] int1, int1i;
reg [64*16-1:0] int2, int2i, int3, int3i;
wire [32*16-1:0] in1, in1i;
wire [64*16-1:0] in2, in2i, in3, in3i;
wire ctrl1,ctrl2,ctrl;

sixtnpt s1(in,ini,in1,in1i);
eightpt s2(clk,int1,int1i,in2,in2i);
fourpt s3(int2,int2i,in3,in3i);

/*always@(posedge clk && pipe1_active)
begin
out <= in1;
outi <= in1i;
pipe2_active=1;
end 
*/
always@(posedge clk && pipe1_active)
begin
a <= in1;
ia <= in1i;
pipe2_active=1;
end
always@(posedge clk && pipe2_active)
begin
int1 <=in1;
int1i <=in1i;
pipe3_active=1;
end
always@(posedge clk && pipe3_active)
begin
int2<=in2;
int2i<=in2i;
pipe4_active=1;
end
always@(posedge clk && pipe3_active)
begin
out=in3;
outi=in3i;
end
endmodule