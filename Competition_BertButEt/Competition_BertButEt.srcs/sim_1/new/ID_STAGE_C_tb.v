`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2021 09:42:54 PM
// Design Name: 
// Module Name: ID_STAGE_C_tb
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


module ID_STAGE_C_tb();

reg Clk, Reset;
reg [31:0] PCPlus4, Instruction;
reg [31:0] newHi, newLo;
reg RegWrite2WB, cRegWrite1;
reg [4:0] RegWriteAddress1;
reg [31:0] WriteData1, ReadReg2WB;
reg HiLoWrite;
reg [4:0] EXrd, MEMrd, SAD1rd, SAD2rd, SAD3rd;
reg EXRegWrite, MEMRegWrite, SAD1RegWrite, SAD2RegWrite, SAD3RegWrite;

wire oSAD, oRegWriteCtrl, oMove, oMemRead;
wire [1:0] oRegDst, oSEMux, oALUSrcA, oALUSrcB, oMemWrite; 
wire [2:0] oMemToReg, oHiLoOp;
wire [4:0] oALUCtrl;
wire [31:0] oReadReg1, oReadReg2, oPCPlus4, oSEImm, oHi, oLo;
wire [4:0] oI2016, oI1511;
wire [2:0] oPCSrc;
wire oPCWrite, oIFIDWrite, oIFIDFlush;

wire [31:0] oSEImm26ToIF, oReadReg1ToIF, oPCPlus4ToIF, oPCSumImmToIF;
wire [31:0] oV0, oV1;

ID_STAGE_C idstage(Clk, Reset,
                  PCPlus4, Instruction,
                  newHi, newLo, HiLoWrite,
                  RegWrite2WB,
                  cRegWrite1, RegWriteAddress1, WriteData1,
                  ReadReg2WB,
                  EXrd, MEMrd, SAD1rd, SAD2rd, SAD3rd,
                  EXRegWrite, MEMRegWrite, SAD1RegWrite, SAD2RegWrite, SAD3RegWrite,

                  oSAD, oRegWriteCtrl, oMove, oMemRead,
                  oRegDst, oSEMux, oALUSrcA, oALUSrcB, oMemWrite, 
                  oMemToReg, oHiLoOp, 
                  oALUCtrl,
                  oReadReg1, oReadReg2, oPCPlus4, oSEImm, oHi, oLo,
                  oI2016, oI1511,
                  oSEImm26ToIF, oReadReg1ToIF, oPCPlus4ToIF, oPCSumImmToIF,
                  oPCSrc,
                  oPCWrite, oIFIDWrite,
                  oIFIDFlush,
                  oV0, oV1);

initial begin
    Clk <= 1'b1;
    forever #10 Clk <= ~Clk;
end

initial begin
    Reset = 1;
    PCPlus4 = 32'd4;
    Instruction = 32'h0212a022;
newHi = 32'd5;
newLo = 32'd6;
RegWrite2WB = 1; 
cRegWrite1 = 0;
RegWriteAddress1 = 0;
WriteData1 = 0;
ReadReg2WB = 0;
HiLoWrite = 1;
EXrd = 0;
MEMrd = 0;
SAD1rd = 0;
SAD2rd = 0;
SAD3rd = 0;
EXRegWrite = 0; 
MEMRegWrite = 0;
SAD1RegWrite = 0;
SAD2RegWrite = 0;
SAD3RegWrite = 0;
#15;
Reset = 0;
    
end



endmodule
