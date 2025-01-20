`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Group 4
// Team BertButEt

// Colin Herbert / Noah Butler / Dylan Etson
// 33%             33%           33%

// competition_source.v
// 8-stage pipeline
// IF ID EX MEM SAD1 SAD2 SAD3 WB

// Signals:
// PC: toplevel/ifidex/ifid/ifstage
// oV0 & oV1: toplevel/ifidex/ifid/idstage
// oSum: toplevel/memsad/sad/sad3

//////////////////////////////////////////////////////////////////////////////////


module competition_source(Clk, Reset, out7, en_out);

input Clk, Reset;
output [6:0] out7;
output [7:0] en_out;

wire woSAD, woRegWriteCtrl, woMove, woMemRead;
wire [1:0] woSEMux, woMemWrite;
wire [2:0] woMemToReg;
wire [31:0] woPCPlus4, woALUResult, woReadReg1, woReadReg2, woHi, woLo;
wire woZero;
wire [4:0] woRegDstResult;
wire [63:0] woHiLoResult;
wire woHiLoWrite;
(* mark_debug = "true" *) wire [31:0] DISPLAY_V0, DISPLAY_V1;

wire [4:0] woMEMrd, woSAD1rd, woSAD2rd, woSAD3rd;
wire woMEMRegWrite, woSAD1RegWrite, woSAD2RegWrite, woSAD3RegWrite;

wire oRegWriteCtrl, oMove;
wire [1:0] oSEMux;
wire [2:0] oMemToReg;
wire [31:0] oPCPlus4, oALUResult, oReadReg1, oReadReg2, oHi, oLo;
wire oZero;
wire [4:0] oRegDstResult;
wire [63:0] oHiLoResult;
wire oHiLoWrite;
wire [31:0] oMemReadData;
wire oRegWrite2WB;
wire [31:0] DISPLAY_Sum;

wire wboRegWrite1, wboRegWrite2WB;
wire wboHiLoWrite;
wire [63:0] wboHiLoResult;
wire [31:0] wboReadReg2, wboRegWriteData, woSEImm, woReadReg1PlusSEImm;
wire [4:0]  wboRegDstResult;

wire ClkOut;

ClkDiv clkDiv(Clk, Reset, ClkOut);
Two4DigitDisplay Display(Clk, DISPLAY_V0[15:0], DISPLAY_V1[15:0], out7, en_out);

IF_ID_EX_COMBO_C ifidex(ClkOut, Reset,
                     wboHiLoResult[63:32], wboHiLoResult[31:0], wboHiLoWrite,
                     wboRegWrite2WB,
                     wboRegWrite1, wboRegDstResult, wboRegWriteData,
                     wboReadReg2,
                     woMEMrd, woSAD1rd, woSAD2rd, woSAD3rd,
                     woMEMRegWrite, woSAD1RegWrite, woSAD2RegWrite, woSAD3RegWrite,
                     
                     woSAD, woRegWriteCtrl, woMove, woMemRead,
                     woSEMux, woMemWrite, 
                     woMemToReg,
                     woPCPlus4, woZero, woHiLoResult, woALUResult,
                     woReadReg1, woReadReg2, woRegDstResult,
                     woHi, woLo, 
                     woHiLoWrite, woSEImm,
                     DISPLAY_V0, DISPLAY_V1);

MEM_MEGASAD_COMBO memsad(ClkOut, Reset,
                  woSAD, woRegWriteCtrl, woMove, woMemRead,
                     woSEMux, woMemWrite, 
                     woMemToReg,
                     woPCPlus4, woZero, woHiLoResult, woALUResult,
                     woReadReg1, woReadReg2, woRegDstResult,
                     woHi, woLo,
                     woHiLoWrite, woSEImm,
                  
                  oRegWriteCtrl, oMove,
                  oSEMux, 
                  oMemToReg,
                  oPCPlus4, oZero, oHiLoResult, oALUResult,
                  oReadReg1, oReadReg2, oRegDstResult,
                  oHi, oLo,
                  oHiLoWrite,
                  oMemReadData,
                  woReadReg1PlusSEImm,
                  oRegWrite2WB,
                  DISPLAY_Sum,
                  woMEMrd, woSAD1rd, woSAD2rd, woSAD3rd,
                  woMEMRegWrite, woSAD1RegWrite, woSAD2RegWrite, woSAD3RegWrite);

WB_STAGE_C     wb(ClkOut, Reset,
                  oRegWriteCtrl, oMove,
                  oSEMux, 
                  oMemToReg,
                  oPCPlus4, oZero, oHiLoResult, oALUResult,
                  oReadReg1, oReadReg2, oRegDstResult,
                  oHi, oLo,
                  oHiLoWrite,
                  oMemReadData,
                  woReadReg1PlusSEImm,
                  oRegWrite2WB,
                  
                  wboRegWrite1, wboRegWrite2WB,
                  wboHiLoWrite,
                  wboHiLoResult,
                  wboReadReg2,
                  wboRegDstResult,
                  wboRegWriteData);

endmodule
