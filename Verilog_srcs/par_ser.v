`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2022 01:35:44 AM
// Design Name: 
// Module Name: par_ser
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


module par_ser
#(  
    parameter N = 32
)
(
    input wire clk, reset,
    input wire [ N-1:0] data_in, // parallel data
    output reg empty_tick, // for external control
    output reg data_out  // serial data
);

reg [N-1:0] data_reg, data_next;
reg [N-1:0] count_reg, count_next;
reg empty_reg, empty_next;

// conversion completed and ready for next data in register
always @(posedge clk)
    empty_tick = empty_reg;

// save initial and next value in register
always @(posedge clk, posedge reset) begin
    if(reset) begin
        count_reg <= 0;
        empty_reg <= 1;
        data_reg <= 0;
    end
    else begin
        count_reg <= count_next;
        empty_reg <= empty_next;
        data_reg <= data_next;
    end
end

always @* begin
    count_next = count_reg;
    empty_next = empty_reg;
    data_next = data_reg;
    // parallel_to_serial data
    data_out = data_reg[count_reg];
    
    // coversion completed , load the next data
    if (count_reg == N-1) begin
        count_next = 0;  // restart count
        empty_next = 1; 
        data_next = data_in;  // load next data
        
    end
    else begin // else continue counting
        count_next = count_reg + 1;
        empty_next = 0;
    end
end

endmodule 

