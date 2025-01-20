`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2021 01:50:47 AM
// Design Name: 
// Module Name: WB_STAGE_V2
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


module IF_STAGE_V2(Clk, Reset, cPCWrite, cIFIDWrite,
                   cPCSrc, cPCMux,
                   ReadReg1, PCSumImm,
                   IFIDFlush,
                   oPCPlus4, oInstruction,
                   oPC);

input Clk, Reset, cPCSrc, cPCMux, cPCWrite, cIFIDWrite;
input [31:0] PCSumImm, ReadReg1;
input IFIDFlush;

output [31:0] oPCPlus4, oInstruction, oPC;

wire [31:0] wPCResult, wPCSrcResult, wPCPlus4, wInstruction;
(* mark_debug = "true" *) wire [31:0] wAddress;

ProgramCounter Counter(wAddress, wPCResult, Reset, Clk, cPCWrite);
PCAdder PCAdder(wPCPlus4, wAddress);
InstructionMemory Memory(wInstruction, wAddress);

Mux32Bit2To1 PCSourceMux(wPCSrcResult, wPCPlus4, PCSumImm, cPCSrc);
Mux32Bit2To1 PCMux(wPCResult, wPCSrcResult, ReadReg1, cPCMux);

IF_ID_REG_V3 IFID(Clk, Reset, wPCPlus4, wInstruction, oPCPlus4, oInstruction, cIFIDWrite, IFIDFlush);

assign oPC = wAddress;

endmodule
