`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2022 11:23:55 PM
// Design Name: 
// Module Name: block_RAM
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


module block_RAM(

    );
  // RAMB18E1: 18K-bit Configurable Synchronous Block RAM
   //           Artix-7
   // Xilinx HDL Language Template, version 2022.2

   RAMB18E1 #(
      // Address Collision Mode: "PERFORMANCE" or "DELAYED_WRITE" 
      .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
      // Collision check: Values ("ALL", "WARNING_ONLY", "GENERATE_X_ONLY" or "NONE")
      .SIM_COLLISION_CHECK("ALL"),
      // DOA_REG, DOB_REG: Optional output register (0 or 1)
      .DOA_REG(0),
      .DOB_REG(0),
      // INITP_00 to INITP_07: Initial contents of parity memory array
      .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
      // INIT_00 to INIT_3F: Initial contents of data memory array
      .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
      // INIT_A, INIT_B: Initial values on output ports
      .INIT_A(18'h00000),
      .INIT_B(18'h00000),
      // Initialization File: RAM initialization file
      .INIT_FILE("NONE"),
      // RAM Mode: "SDP" or "TDP" 
      .RAM_MODE("TDP"),
      // READ_WIDTH_A/B, WRITE_WIDTH_A/B: Read/write width per port
      .READ_WIDTH_A(0),                                                                 // 0-72
      .READ_WIDTH_B(0),                                                                 // 0-18
      .WRITE_WIDTH_A(0),                                                                // 0-18
      .WRITE_WIDTH_B(0),                                                                // 0-72
      // RSTREG_PRIORITY_A, RSTREG_PRIORITY_B: Reset or enable priority ("RSTREG" or "REGCE")
      .RSTREG_PRIORITY_A("RSTREG"),
      .RSTREG_PRIORITY_B("RSTREG"),
      // SRVAL_A, SRVAL_B: Set/reset value for output
      .SRVAL_A(18'h00000),
      .SRVAL_B(18'h00000),
      // Simulation Device: Must be set to "7SERIES" for simulation behavior
      .SIM_DEVICE("7SERIES"),
      // WriteMode: Value on output upon a write ("WRITE_FIRST", "READ_FIRST", or "NO_CHANGE")
      .WRITE_MODE_A("WRITE_FIRST"),
      .WRITE_MODE_B("WRITE_FIRST")
   )
   RAMB18E1_inst (
      // Port A Data: 16-bit (each) output: Port A data
      .DOADO(DOADO),                 // 16-bit output: A port data/LSB data
      .DOPADOP(DOPADOP),             // 2-bit output: A port parity/LSB parity
      // Port B Data: 16-bit (each) output: Port B data
      .DOBDO(DOBDO),                 // 16-bit output: B port data/MSB data
      .DOPBDOP(DOPBDOP),             // 2-bit output: B port parity/MSB parity
      // Port A Address/Control Signals: 14-bit (each) input: Port A address and control signals (read port
      // when RAM_MODE="SDP")
      .ADDRARDADDR(ADDRARDADDR),     // 14-bit input: A port address/Read address
      .CLKARDCLK(CLKARDCLK),         // 1-bit input: A port clock/Read clock
      .ENARDEN(ENARDEN),             // 1-bit input: A port enable/Read enable
      .REGCEAREGCE(REGCEAREGCE),     // 1-bit input: A port register enable/Register enable
      .RSTRAMARSTRAM(RSTRAMARSTRAM), // 1-bit input: A port set/reset
      .RSTREGARSTREG(RSTREGARSTREG), // 1-bit input: A port register set/reset
      .WEA(WEA),                     // 2-bit input: A port write enable
      // Port A Data: 16-bit (each) input: Port A data
      .DIADI(DIADI),                 // 16-bit input: A port data/LSB data
      .DIPADIP(DIPADIP),             // 2-bit input: A port parity/LSB parity
      // Port B Address/Control Signals: 14-bit (each) input: Port B address and control signals (write port
      // when RAM_MODE="SDP")
      .ADDRBWRADDR(ADDRBWRADDR),     // 14-bit input: B port address/Write address
      .CLKBWRCLK(CLKBWRCLK),         // 1-bit input: B port clock/Write clock
      .ENBWREN(ENBWREN),             // 1-bit input: B port enable/Write enable
      .REGCEB(REGCEB),               // 1-bit input: B port register enable
      .RSTRAMB(RSTRAMB),             // 1-bit input: B port set/reset
      .RSTREGB(RSTREGB),             // 1-bit input: B port register set/reset
      .WEBWE(WEBWE),                 // 4-bit input: B port write enable/Write enable
      // Port B Data: 16-bit (each) input: Port B data
      .DIBDI(DIBDI),                 // 16-bit input: B port data/MSB data
      .DIPBDIP(DIPBDIP)              // 2-bit input: B port parity/MSB parity
   );

   // End of RAMB18E1_inst instantiation
					
endmodule	