`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2022 11:49:48 PM
// Design Name: 
// Module Name: dual_port
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


module dual_port(
);

  //  Xilinx Simple Dual Port Single Clock RAM with Byte-write
  //  This code implements a parameterizable SDP single clock memory.
  //  If a reset or enable is not necessary, it may be tied off or removed from the code.

  parameter NB_COL = 4;                       // Specify number of columns (number of bytes)
  parameter COL_WIDTH = 8;                  // Specify column width (byte width, typically 8 or 9)
  parameter RAM_DEPTH = 64;                  // Specify RAM depth (number of entries)
  parameter RAM_PERFORMANCE = "HIGH_PERFORMANCE"; // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
  parameter INIT_FILE = "block_RAM.v";                       // Specify name/location of RAM initialization file if using one (leave blank if not)

  wire [7:0] addra; // Write address bus, width determined from RAM_DEPTH
  wire [7:0] addrb; // Read address bus, width determined from RAM_DEPTH
  wire [(NB_COL*COL_WIDTH)-1:0] dina; // RAM input data
  wire clka;                          // Clock
  wire [NB_COL-1:0] wea;              // Byte-write enable
  wire enb;                           // Read Enable, for additional power savings, disable when not in ue
  wire rstb;                          // Output reset (does not affect memory contents)
  wire regceb;                        // Output register enable
  wire [(NB_COL*COL_WIDTH)-1:0] doutb;         // RAM output data

  reg [(NB_COL*COL_WIDTH)-1:0] aram[RAM_DEPTH-1:0];
  reg [(NB_COL*COL_WIDTH)-1:0] bram = {(NB_COL*COL_WIDTH){1'b0}};

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
    if (INIT_FILE != "") begin: use_init_file
      initial
        $readmemh(INIT_FILE, aram, 0, RAM_DEPTH-1);
    end else begin: init_bram_to_zero
      integer ram_index;
      initial
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
          aram[ram_index] = {(NB_COL*COL_WIDTH){1'b0}};
    end
  endgenerate

  always @(posedge clka)
    if (enb)
      <ram_data> <= aram[<addrb>];

  generate
  genvar i;
     for (i = 0; i < NB_COL; i = i+1) begin: byte_write
       always @(posedge <clka>)
         if (<wea>[i])
           <ram_name>[<addra>][(i+1)*COL_WIDTH-1:i*COL_WIDTH] <= dina[(i+1)*COL_WIDTH-1:i*COL_WIDTH];
      end
  endgenerate

  //  The following code generates HIGH_PERFORMANCE (use output register) or LOW_LATENCY (no output register)
  generate
    if (RAM_PERFORMANCE == "LOW_LATENCY") begin: no_output_register

      // The following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
       assign <doutb> = <ram_data>;

    end else begin: output_register

      // The following is a 2 clock cycle read latency with improve clock-to-out timing

      reg [(NB_COL*COL_WIDTH)-1:0] doutb_reg = {(NB_COL*COL_WIDTH){1'b0}};

      always @(posedge <clka>)
        if (<rstb>)
          doutb_reg <= {(NB_COL*COL_WIDTH){1'b0}};
        else if (<regceb>)
          doutb_reg <= <ram_data>;

      assign <doutb> = doutb_reg;

    end
  endgenerate

  //  The following function calculates the address width based on specified RAM depth
  function integer clogb2;
    input integer depth;
      for (clogb2=0; depth>0; clogb2=clogb2+1)
        depth = depth >> 1;
  endfunction
						
						
 //  );
endmodule
						