`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2021 05:43:36 AM
// Design Name: 
// Module Name: IF_ID_COMBO_V2
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


module IF_ID_COMBO_V2(Clk, Reset,
                      cPCSrc, cPCMux,
                      ReadReg1, PCSumImm,
                      cRegWrite,
                      RegWriteData, RegWriteAddress, Hi, Lo, HiLoWrite,
                      EXrd, MEMrd, 
                      EXRegWrite, MEMRegWrite, 
                      EXMemRead, MEMMemRead,
                      ocALUSrcA, ocALUSrcB, ocRegDst, ocHiLoOp, ocALUCtrl, ocJump,
                      ocBranch, ocPCMux, ocMemWrite, ocMemRead,
                      ocMove, ocRegWriteCtrl, ocMemToReg, ocSEMux, ocRegAddress,
                      oPCPlus4, oReadReg1, oReadReg2, oSEImm, oSEImm2, oI2016, oI1511, oHi, oLo,
                      oEXMEMFlush,
                      oPC,
                      V0, V1);

input Clk, Reset;

input cPCSrc, cPCMux;
input [31:0] PCSumImm, ReadReg1;

input cRegWrite;
input [31:0] RegWriteData, Hi, Lo;
input [4:0] RegWriteAddress, EXrd, MEMrd;
input HiLoWrite, EXRegWrite, MEMRegWrite, EXMemRead, MEMMemRead;

output [1:0] ocALUSrcA, ocALUSrcB;
output ocRegDst, ocJump;
output [2:0] ocHiLoOp;
output [4:0] ocALUCtrl;

output ocBranch, ocPCMux, ocMemRead;
output [1:0] ocMemWrite;

output ocMove, ocRegWriteCtrl, ocRegAddress;
output [2:0] ocMemToReg;
output [1:0] ocSEMux;
output [31:0] V0, V1;

output [31:0] oPCPlus4, oReadReg1, oReadReg2, oSEImm, oSEImm2;
(* mark_debug = "true" *) output [31:0] oHi, oLo;
output [4:0] oI2016, oI1511;
output [31:0] oPC;
output oEXMEMFlush;

wire wPCWrite, wIFIDWrite;
wire [31:0] wPCPlus4, wInstruction;
wire wIFIDFlush;

IF_STAGE_V2     IF(Clk, Reset, wPCWrite, wIFIDWrite,
                   cPCSrc, cPCMux,
                   ReadReg1, PCSumImm,
                   wIFIDFlush,
                   wPCPlus4, wInstruction,
                   oPC);

ID_STAGE_V2     ID(Clk, Reset,
                   cRegWrite,
                   wPCPlus4, wInstruction, RegWriteData, RegWriteAddress, Hi, Lo,
                   HiLoWrite,
                   EXrd, MEMrd,
                   EXRegWrite, MEMRegWrite, 
                   EXMemRead, MEMMemRead,
                   cPCSrc,
                   ocALUSrcA, ocALUSrcB, ocRegDst, ocHiLoOp, ocALUCtrl, ocJump,
                   ocBranch, ocPCMux, ocMemWrite, ocMemRead,
                   ocMove, ocRegWriteCtrl, ocMemToReg, ocSEMux, ocRegAddress,
                   oPCPlus4, oReadReg1, oReadReg2, oSEImm, oSEImm2, oI2016, oI1511, oHi, oLo,
                   wPCWrite, wIFIDWrite, wIFIDFlush,
                   oEXMEMFlush, V0, V1);

endmodule
