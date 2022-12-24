`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2022 05:29:42 PM
// Design Name: 
// Module Name: cmpx_mul
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


module cmpx_mul(input wire clk, input wire [31:0] ar,ai,br,bi,output wire[63:0] pr_int,pi_int);

parameter AWIDTH = 32;  // size of 1st input of multiplier
parameter BWIDTH = 32;  // size of 2nd input of multiplier

reg signed [AWIDTH-1:0]	ai_d, ai_dd, ai_ddd, ai_dddd;
reg signed [AWIDTH-1:0]	ar_d, ar_dd, ar_ddd, ar_dddd;
reg signed [BWIDTH-1:0]	bi_d , bi_dd, bi_ddd, br_d, br_dd, br_ddd;
reg signed [AWIDTH:0]	addcommon;
reg signed [BWIDTH:0]	addr, addi;
reg signed [AWIDTH+BWIDTH:0]	mult0, multr, multi, pr_int, pi_int;
reg signed [AWIDTH+BWIDTH:0]	common, commonr1, commonr2;

always @(posedge clk)
  begin
    ar_d   = ar;
    ar_dd  = ar_d;
    ai_d   = ai;
    ai_dd  = ai_d;
    br_d   = br;
    br_dd  = br_d;
    br_ddd = br_dd;
    bi_d   = bi;
    bi_dd  = bi_d;
    bi_ddd = bi_dd;

	addcommon = ar_d-ai_d;
	mult0     = addcommon*bi_dd;
	common    = mult0;

	ar_ddd  =ar_dd;
	ar_dddd = ar_ddd;
	addr    = br_ddd - bi_ddd;
	multr  = addr*ar_dddd;
	commonr1 = common;
	pr_int   = multr +commonr1;

	ai_ddd   = ai_dd;
	ai_dddd  = ai_ddd;
	addi   = br_ddd +bi_ddd;
	multi    = addi*ai_dddd;
	commonr2 = common;
	pi_int  = multi +commonr2;
 end

//assign O = pr_int;
//assign Oi = pi_int;
assign ok=0;
endmodule
