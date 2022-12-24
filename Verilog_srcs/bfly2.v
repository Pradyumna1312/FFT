`timescale 1ns/1ps

module bfly2(
input[31:0] ac,bc,ia,ib,
output [31:0] x,y,ix,iy
);
assign x=ac+bc;
assign ix=ia+ib;
assign y=ac-bc;
assign iy=ia-ib;

endmodule

module bfly21(
input[63:0] ac,bc,ia,ib,
output [63:0] x,y,ix,iy
);
assign x=ac+bc;
assign ix=ia+ib;
assign y=ac-bc;
assign iy=ia-ib;

endmodule