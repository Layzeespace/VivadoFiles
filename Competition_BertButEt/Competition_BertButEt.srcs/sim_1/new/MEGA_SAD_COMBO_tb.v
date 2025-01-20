`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2021 01:57:32 PM
// Design Name: 
// Module Name: MEGA_SAD_COMBO_tb
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


module MEGA_SAD_COMBO_tb();

reg Clk, Reset;
reg SAD, RegWriteCtrl, Move;
reg [1:0] SEMux;
reg [2:0] MemToReg;
reg [31:0] PCPlus4, ALUResult, ReadReg1, ReadReg2, Hi, Lo;
reg Zero;
reg [4:0] RegDstResult;
reg [63:0] HiLoResult;
reg HiLoWrite;
reg [31:0] MemReadData;
reg [31:0] a0A, a0B,
                   a1A, a1B,
                   a2A, a2B,
                   a3A, a3B,
                   a4A, a4B,
                   a5A, a5B,
                   a6A, a6B,
                   a7A, a7B;

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
wire [31:0] oSum;


MEGA_SAD_COMBO sad(Clk, Reset,
                   SAD, RegWriteCtrl, Move,
                   SEMux, 
                   MemToReg,
                   PCPlus4, Zero, HiLoResult, ALUResult,
                   ReadReg1, ReadReg2, RegDstResult,
                   Hi, Lo,
                   HiLoWrite,
                   MemReadData,
                   a0A, a0B,
                   a1A, a1B,
                   a2A, a2B,
                   a3A, a3B,
                   a4A, a4B,
                   a5A, a5B,
                   a6A, a6B,
                   a7A, a7B,
                    
                  oRegWriteCtrl, oMove,
                  oSEMux, 
                  oMemToReg,
                  oPCPlus4, oZero, oHiLoResult, oALUResult,
                  oReadReg1, oReadReg2, oRegDstResult,
                  oHi, oLo,
                  oHiLoWrite,
                  oMemReadData,
                  oRegWrite2WB,
                  oSum);

initial begin
    Clk <= 1'b1;
    forever #10 Clk <= ~Clk;
end

initial begin
    Reset = 1;
    SAD = 1;
    RegWriteCtrl = 0; 
    Move = 0;
    SEMux = 0;
    MemToReg = 0;
    PCPlus4 = 0;
    Zero = 0;
    HiLoResult = 0; 
    ALUResult = 0;
    ReadReg1 = 0;
    ReadReg2 = 0;
    RegDstResult = 0;
    Hi = 0;
    Lo = 0;
    HiLoWrite = 0;
    MemReadData = 0;
    a0A = 1;
    a0B = 0;
    a1A = 0;
    a1B = 0;
    a2A = 0;
    a2B = 0;
    a3A = 0;
    a3B = 0;
    a4A = 0;
    a4B = 0;
    a5A = 0;
    a5B = 0;
    a6A = 0;
    a6B = 0;
    a7A = 0;
    a7B = 0;           
    
    #15;
    Reset = 0;
end





endmodule
