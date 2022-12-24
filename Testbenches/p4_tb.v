module p4_tb();
reg[31:0] in1,in2,in3,in4,in1i,in2i,in3i,in4i;
wire[31:0] out1,out2,out3,out4,io1,io2,io3,io4;
bfly b1(in1,in2,in3,in4,in1i,in2i,in3i,in4i,out1,out2,out3,out4,io1,io2,io3,io4);
initial
begin
in1=-1;in2=-1;in3=0;in4=0;in1i=0;in2i=0;in3i=0;in4i=0;
end

endmodule

