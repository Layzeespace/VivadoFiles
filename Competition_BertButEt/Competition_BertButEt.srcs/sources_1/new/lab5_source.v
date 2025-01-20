`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// ECE 369 
// Group 4
//
// Noah Butler / Colin Herbert / Dylan Etson
// 33%         / 33%           / 33%
//
// Top Level 
// lab5_source.v
//
//////////////////////////////////////////////////////////////////////////////////


module lab5_source(Clk, Reset, out7, en_out);

input Clk, Reset;
output [6:0] out7;
output [7:0] en_out;

wire wcRegWrite;
wire [31:0] wRegWriteData, wHi, wLo;
wire [4:0] wRegWriteAddress;

wire wcMove, wcRegWriteCtrl, wcRegAddress;
wire [2:0] wcMemToReg;
wire [1:0] wcSEMux;

wire wcZero, wHiLoWrite, wHiLoWriteIn;

wire [31:0] wPCPlus4, wMemReadData, wALUResult, wReadReg1;
(* mark_debug = "true" *) wire [31:0] wPC, wLoDisplay;
wire [31:0] wHiIn, wLoIn;
wire [63:0] wHiLoResult;
wire [4:0] wRegDstResult;
wire ClkOut;
(* mark_debug = "true" *) wire [31:0] wV0, wV1;

ClkDiv clkDiv(Clk, Reset, ClkOut);
Two4DigitDisplay Display(Clk, wV0[15:0], wV1[15:0], out7, en_out);

IF_ID_EX_MEM_COMBO_V2 FDXMEM(ClkOut, Reset,
                             wcRegWrite,
                             wRegWriteData, wRegWriteAddress, wHiIn, wLoIn, wHiLoWriteIn,
                             wcMove, wcRegWriteCtrl, wcMemToReg, wcSEMux, wcRegAddress,
                             wcZero,
                             wPCPlus4, wHiLoResult, wMemReadData, wALUResult, wHi, wLo,
                             wRegDstResult, wReadReg1, wHiLoWrite,
                             wPC, wLoDisplay, wV0, wV1);

WB_STAGE_V2     WB(ClkOut, Reset,
                   wcMove, wcRegWriteCtrl, wcMemToReg, wcSEMux, wcRegAddress,
                   wcZero,
                   wPCPlus4, wHiLoResult, wMemReadData, wALUResult, wHi, wLo,
                   wRegDstResult, wReadReg1, wHiLoWrite,
                   
                   wcRegWrite, 
                   wRegWriteAddress, wRegWriteData, wHiIn, wLoIn, wHiLoWriteIn);


endmodule
