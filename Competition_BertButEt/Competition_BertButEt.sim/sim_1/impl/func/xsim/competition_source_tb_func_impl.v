// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Dec  4 21:06:28 2021
// Host        : DESKTOP-B5RP88R running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.sim/sim_1/impl/func/xsim/competition_source_tb_func_impl.v
// Design      : competition_source
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Adder_32Bit_C
   (D,
    Q,
    S);
  output [10:0]D;
  input [10:0]Q;
  input [0:0]S;

  wire [10:0]D;
  wire Out_carry__0_n_0;
  wire Out_carry_n_0;
  wire [10:0]Q;
  wire [0:0]S;
  wire [2:0]NLW_Out_carry_CO_UNCONNECTED;
  wire [2:0]NLW_Out_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Out_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_Out_carry__1_O_UNCONNECTED;

  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 Out_carry
       (.CI(1'b0),
        .CO({Out_carry_n_0,NLW_Out_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(D[3:0]),
        .S({Q[3:2],S,Q[0]}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Out_carry__0
       (.CI(Out_carry_n_0),
        .CO({Out_carry__0_n_0,NLW_Out_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[7:4]),
        .S(Q[7:4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 Out_carry__1
       (.CI(Out_carry__0_n_0),
        .CO(NLW_Out_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Out_carry__1_O_UNCONNECTED[3],D[10:8]}),
        .S({1'b0,Q[10:8]}));
endmodule

module EX_STAGE_C
   (oALUResult_reg_r,
    oRegWriteCtrl,
    oRegDstResult,
    Reset_IBUF,
    Clk_IBUF_BUFG,
    woRegWriteCtrl,
    woSEImm);
  output oALUResult_reg_r;
  output oRegWriteCtrl;
  output [0:0]oRegDstResult;
  input Reset_IBUF;
  input Clk_IBUF_BUFG;
  input woRegWriteCtrl;
  input [0:0]woSEImm;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire oALUResult_reg_r;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;
  wire woRegWriteCtrl;
  wire [0:0]woSEImm;

  REG_EX_MEM_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .oALUResult_reg_r_0(oALUResult_reg_r),
        .oRegDstResult(oRegDstResult),
        .oRegWriteCtrl(oRegWriteCtrl),
        .woRegWriteCtrl(woRegWriteCtrl),
        .woSEImm(woSEImm));
endmodule

module ID_STAGE_C
   (\memory_reg[2][7] ,
    \memory_reg[3][7] ,
    oRegWriteCtrl_reg,
    woSEImm,
    oRegWriteCtrl_reg_0,
    out7_OBUF,
    wALUResult,
    \memory_reg[2][7]_0 ,
    Clk_IBUF_BUFG,
    \memory_reg[2][0] ,
    oALUResult,
    \memory_reg[3][7]_0 ,
    \memory_reg[3][0] ,
    SR,
    oRegWriteCtrl_reg_1,
    \oSEImm_reg[0] ,
    oSAD2RegWrite,
    oSAD2rd,
    sel0);
  output [0:0]\memory_reg[2][7] ;
  output [0:0]\memory_reg[3][7] ;
  output oRegWriteCtrl_reg;
  output [0:0]woSEImm;
  output oRegWriteCtrl_reg_0;
  output [6:0]out7_OBUF;
  output [15:0]wALUResult;
  input \memory_reg[2][7]_0 ;
  input Clk_IBUF_BUFG;
  input \memory_reg[2][0] ;
  input [14:0]oALUResult;
  input \memory_reg[3][7]_0 ;
  input \memory_reg[3][0] ;
  input [0:0]SR;
  input oRegWriteCtrl_reg_1;
  input \oSEImm_reg[0] ;
  input oSAD2RegWrite;
  input [0:0]oSAD2rd;
  input [2:0]sel0;

  wire Clk_IBUF_BUFG;
  wire [0:0]SR;
  wire \memory_reg[2][0] ;
  wire [0:0]\memory_reg[2][7] ;
  wire \memory_reg[2][7]_0 ;
  wire \memory_reg[3][0] ;
  wire [0:0]\memory_reg[3][7] ;
  wire \memory_reg[3][7]_0 ;
  wire [14:0]oALUResult;
  wire oRegWriteCtrl_reg;
  wire oRegWriteCtrl_reg_0;
  wire oRegWriteCtrl_reg_1;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire \oSEImm_reg[0] ;
  wire [6:0]out7_OBUF;
  wire [2:0]sel0;
  wire [15:0]wALUResult;
  wire [15:0]wReadReg2;
  wire [7:7]woReadReg1ToIF;
  wire [0:0]woSEImm;

  RegFile_C regFile
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D(wReadReg2),
        .\memory_reg[2][0]_0 (\memory_reg[2][0] ),
        .\memory_reg[2][7]_0 (\memory_reg[2][7] ),
        .\memory_reg[2][7]_1 (\memory_reg[2][7]_0 ),
        .\memory_reg[3][0]_0 (\memory_reg[3][0] ),
        .\memory_reg[3][7]_0 (\memory_reg[3][7] ),
        .\memory_reg[3][7]_1 (\memory_reg[3][7]_0 ),
        .oALUResult(oALUResult),
        .\oReadReg2_reg[15] (oRegWriteCtrl_reg_1),
        .\oReadReg2_reg[15]_0 (\oSEImm_reg[0] ),
        .out7_OBUF(out7_OBUF),
        .sel0(sel0),
        .woReadReg1ToIF(woReadReg1ToIF));
  REG_ID_EX_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D(wReadReg2),
        .SR(SR),
        .oRegWriteCtrl_reg_0(oRegWriteCtrl_reg),
        .oRegWriteCtrl_reg_1(oRegWriteCtrl_reg_0),
        .oRegWriteCtrl_reg_2(oRegWriteCtrl_reg_1),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .\oSEImm_reg[0]_0 (\oSEImm_reg[0] ),
        .wALUResult(wALUResult),
        .woReadReg1ToIF(woReadReg1ToIF),
        .woSEImm(woSEImm));
endmodule

module IF_ID_COMBO_C
   (\memory_reg[2][7] ,
    \memory_reg[3][7] ,
    woRegWriteCtrl,
    \oInstruction_reg[17] ,
    woSEImm,
    \oInstruction_reg[16] ,
    out7_OBUF,
    wALUResult,
    \memory_reg[2][7]_0 ,
    Clk_IBUF_BUFG,
    \memory_reg[2][0] ,
    oALUResult,
    \memory_reg[3][7]_0 ,
    \memory_reg[3][0] ,
    Reset_IBUF,
    \oPCResult_reg[11] ,
    oRegDstResult,
    oRegWriteCtrl,
    oSAD2RegWrite,
    oSAD2rd,
    sel0);
  output [0:0]\memory_reg[2][7] ;
  output [0:0]\memory_reg[3][7] ;
  output woRegWriteCtrl;
  output \oInstruction_reg[17] ;
  output [0:0]woSEImm;
  output \oInstruction_reg[16] ;
  output [6:0]out7_OBUF;
  output [15:0]wALUResult;
  input \memory_reg[2][7]_0 ;
  input Clk_IBUF_BUFG;
  input \memory_reg[2][0] ;
  input [14:0]oALUResult;
  input \memory_reg[3][7]_0 ;
  input \memory_reg[3][0] ;
  input Reset_IBUF;
  input \oPCResult_reg[11] ;
  input [0:0]oRegDstResult;
  input oRegWriteCtrl;
  input oSAD2RegWrite;
  input [0:0]oSAD2rd;
  input [2:0]sel0;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire idstage_n_4;
  wire ifstage_n_8;
  wire \memory_reg[2][0] ;
  wire [0:0]\memory_reg[2][7] ;
  wire \memory_reg[2][7]_0 ;
  wire \memory_reg[3][0] ;
  wire [0:0]\memory_reg[3][7] ;
  wire \memory_reg[3][7]_0 ;
  wire [14:0]oALUResult;
  wire \oInstruction_reg[16] ;
  wire \oInstruction_reg[17] ;
  wire \oPCResult_reg[11] ;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [6:0]out7_OBUF;
  wire \p_0_out_inferred__0/oInstruction[17]_i_2_n_0 ;
  wire \p_0_out_inferred__0/oInstruction[17]_i_3_n_0 ;
  wire [8:1]sel;
  wire [2:0]sel0;
  wire [15:0]wALUResult;
  wire woRegWriteCtrl;
  wire [0:0]woSEImm;

  ID_STAGE_C idstage
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .SR(ifstage_n_8),
        .\memory_reg[2][0] (\memory_reg[2][0] ),
        .\memory_reg[2][7] (\memory_reg[2][7] ),
        .\memory_reg[2][7]_0 (\memory_reg[2][7]_0 ),
        .\memory_reg[3][0] (\memory_reg[3][0] ),
        .\memory_reg[3][7] (\memory_reg[3][7] ),
        .\memory_reg[3][7]_0 (\memory_reg[3][7]_0 ),
        .oALUResult(oALUResult),
        .oRegWriteCtrl_reg(woRegWriteCtrl),
        .oRegWriteCtrl_reg_0(idstage_n_4),
        .oRegWriteCtrl_reg_1(\oInstruction_reg[17] ),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .\oSEImm_reg[0] (\oInstruction_reg[16] ),
        .out7_OBUF(out7_OBUF),
        .sel0(sel0),
        .wALUResult(wALUResult),
        .woSEImm(woSEImm));
  IF_STAGE_C ifstage
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Q(sel),
        .Reset_IBUF(Reset_IBUF),
        .SR(ifstage_n_8),
        .\oInstruction_reg[16] (\oInstruction_reg[16] ),
        .\oInstruction_reg[17] (\oInstruction_reg[17] ),
        .\oInstruction_reg[17]_0 (\p_0_out_inferred__0/oInstruction[17]_i_2_n_0 ),
        .\oPCResult_reg[11] (\oPCResult_reg[11] ),
        .\oPCResult_reg[11]_0 (idstage_n_4),
        .oRegDstResult(oRegDstResult),
        .oRegWriteCtrl(oRegWriteCtrl));
  LUT3 #(
    .INIT(8'h04)) 
    \p_0_out_inferred__0/oInstruction[17]_i_2 
       (.I0(sel[7]),
        .I1(\p_0_out_inferred__0/oInstruction[17]_i_3_n_0 ),
        .I2(sel[8]),
        .O(\p_0_out_inferred__0/oInstruction[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \p_0_out_inferred__0/oInstruction[17]_i_3 
       (.I0(sel[5]),
        .I1(sel[3]),
        .I2(sel[1]),
        .I3(sel[2]),
        .I4(sel[4]),
        .I5(sel[6]),
        .O(\p_0_out_inferred__0/oInstruction[17]_i_3_n_0 ));
endmodule

module IF_ID_EX_COMBO_C
   (\memory_reg[2][7] ,
    \memory_reg[3][7] ,
    woInstruction,
    oALUResult_reg_r,
    oRegDstResult,
    oRegWriteCtrl,
    out7_OBUF,
    wALUResult,
    \memory_reg[2][7]_0 ,
    Clk_IBUF_BUFG,
    \memory_reg[2][0] ,
    oALUResult,
    \memory_reg[3][7]_0 ,
    \memory_reg[3][0] ,
    Reset_IBUF,
    \oPCResult_reg[11] ,
    oSAD2RegWrite,
    oSAD2rd,
    sel0);
  output [0:0]\memory_reg[2][7] ;
  output [0:0]\memory_reg[3][7] ;
  output [1:0]woInstruction;
  output oALUResult_reg_r;
  output [0:0]oRegDstResult;
  output oRegWriteCtrl;
  output [6:0]out7_OBUF;
  output [15:0]wALUResult;
  input \memory_reg[2][7]_0 ;
  input Clk_IBUF_BUFG;
  input \memory_reg[2][0] ;
  input [14:0]oALUResult;
  input \memory_reg[3][7]_0 ;
  input \memory_reg[3][0] ;
  input Reset_IBUF;
  input \oPCResult_reg[11] ;
  input oSAD2RegWrite;
  input [0:0]oSAD2rd;
  input [2:0]sel0;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire \memory_reg[2][0] ;
  wire [0:0]\memory_reg[2][7] ;
  wire \memory_reg[2][7]_0 ;
  wire \memory_reg[3][0] ;
  wire [0:0]\memory_reg[3][7] ;
  wire \memory_reg[3][7]_0 ;
  wire [14:0]oALUResult;
  wire oALUResult_reg_r;
  wire \oPCResult_reg[11] ;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [6:0]out7_OBUF;
  wire [2:0]sel0;
  wire [15:0]wALUResult;
  wire [1:0]woInstruction;
  wire woRegWriteCtrl;
  wire [0:0]woSEImm;

  EX_STAGE_C exstage
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .oALUResult_reg_r(oALUResult_reg_r),
        .oRegDstResult(oRegDstResult),
        .oRegWriteCtrl(oRegWriteCtrl),
        .woRegWriteCtrl(woRegWriteCtrl),
        .woSEImm(woSEImm));
  IF_ID_COMBO_C ifid
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .\memory_reg[2][0] (\memory_reg[2][0] ),
        .\memory_reg[2][7] (\memory_reg[2][7] ),
        .\memory_reg[2][7]_0 (\memory_reg[2][7]_0 ),
        .\memory_reg[3][0] (\memory_reg[3][0] ),
        .\memory_reg[3][7] (\memory_reg[3][7] ),
        .\memory_reg[3][7]_0 (\memory_reg[3][7]_0 ),
        .oALUResult(oALUResult),
        .\oInstruction_reg[16] (woInstruction[0]),
        .\oInstruction_reg[17] (woInstruction[1]),
        .\oPCResult_reg[11] (\oPCResult_reg[11] ),
        .oRegDstResult(oRegDstResult),
        .oRegWriteCtrl(oRegWriteCtrl),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .out7_OBUF(out7_OBUF),
        .sel0(sel0),
        .wALUResult(wALUResult),
        .woRegWriteCtrl(woRegWriteCtrl),
        .woSEImm(woSEImm));
endmodule

module IF_STAGE_C
   (Q,
    SR,
    \oInstruction_reg[16] ,
    \oInstruction_reg[17] ,
    Reset_IBUF,
    \oPCResult_reg[11] ,
    \oPCResult_reg[11]_0 ,
    oRegDstResult,
    oRegWriteCtrl,
    Clk_IBUF_BUFG,
    \oInstruction_reg[17]_0 );
  output [7:0]Q;
  output [0:0]SR;
  output \oInstruction_reg[16] ;
  output \oInstruction_reg[17] ;
  input Reset_IBUF;
  input \oPCResult_reg[11] ;
  input \oPCResult_reg[11]_0 ;
  input [0:0]oRegDstResult;
  input oRegWriteCtrl;
  input Clk_IBUF_BUFG;
  input \oInstruction_reg[17]_0 ;

  wire Clk_IBUF_BUFG;
  wire PCadder_n_0;
  wire PCadder_n_1;
  wire PCadder_n_10;
  wire PCadder_n_2;
  wire PCadder_n_3;
  wire PCadder_n_4;
  wire PCadder_n_5;
  wire PCadder_n_6;
  wire PCadder_n_7;
  wire PCadder_n_8;
  wire PCadder_n_9;
  wire [7:0]Q;
  wire Reset_IBUF;
  wire [0:0]SR;
  wire counter_n_0;
  wire counter_n_11;
  wire \oInstruction_reg[16] ;
  wire \oInstruction_reg[17] ;
  wire \oInstruction_reg[17]_0 ;
  wire \oPCResult_reg[11] ;
  wire \oPCResult_reg[11]_0 ;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;
  wire [9:0]sel;
  wire woIFIDWrite;

  Adder_32Bit_C PCadder
       (.D({PCadder_n_0,PCadder_n_1,PCadder_n_2,PCadder_n_3,PCadder_n_4,PCadder_n_5,PCadder_n_6,PCadder_n_7,PCadder_n_8,PCadder_n_9,PCadder_n_10}),
        .Q({sel[9],Q,sel[0],counter_n_11}),
        .S(counter_n_0));
  ProgramCounter_C counter
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D({PCadder_n_0,PCadder_n_1,PCadder_n_2,PCadder_n_3,PCadder_n_4,PCadder_n_5,PCadder_n_6,PCadder_n_7,PCadder_n_8,PCadder_n_9,PCadder_n_10}),
        .Q({sel[9],Q,sel[0],counter_n_11}),
        .Reset_IBUF(Reset_IBUF),
        .S(counter_n_0),
        .woIFIDWrite(woIFIDWrite));
  REG_IF_ID_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Q({sel[9],sel[0]}),
        .Reset_IBUF(Reset_IBUF),
        .SR(SR),
        .\oInstruction_reg[16]_0 (\oInstruction_reg[16] ),
        .\oInstruction_reg[17]_0 (\oInstruction_reg[17] ),
        .\oInstruction_reg[17]_1 (\oInstruction_reg[17]_0 ),
        .\oPCResult_reg[11] (\oPCResult_reg[11] ),
        .\oPCResult_reg[11]_0 (\oPCResult_reg[11]_0 ),
        .oRegDstResult(oRegDstResult),
        .oRegWriteCtrl(oRegWriteCtrl),
        .woIFIDWrite(woIFIDWrite));
endmodule

module MEGA_SAD_COMBO
   (\oALUResult_reg[15] ,
    \oALUResult_reg[7] ,
    \oALUResult_reg[7]_0 ,
    \oRegDstResult_reg[0] ,
    oSAD2RegWrite,
    oSAD2rd,
    \oRegDstResult_reg[0]_0 ,
    oRegWriteCtrl_reg,
    Reset_IBUF,
    oALUResult_reg_r,
    Clk_IBUF_BUFG,
    wALUResult,
    \memory_reg[2][7] ,
    \memory_reg[3][7] ,
    woInstruction,
    RegWriteCtrl,
    RegDstResult);
  output [14:0]\oALUResult_reg[15] ;
  output \oALUResult_reg[7] ;
  output \oALUResult_reg[7]_0 ;
  output \oRegDstResult_reg[0] ;
  output oSAD2RegWrite;
  output [0:0]oSAD2rd;
  output \oRegDstResult_reg[0]_0 ;
  output oRegWriteCtrl_reg;
  input Reset_IBUF;
  input oALUResult_reg_r;
  input Clk_IBUF_BUFG;
  input [15:0]wALUResult;
  input [0:0]\memory_reg[2][7] ;
  input [0:0]\memory_reg[3][7] ;
  input [1:0]woInstruction;
  input RegWriteCtrl;
  input [0:0]RegDstResult;

  wire Clk_IBUF_BUFG;
  wire [0:0]RegDstResult;
  wire RegWriteCtrl;
  wire Reset_IBUF;
  wire [0:0]\memory_reg[2][7] ;
  wire [0:0]\memory_reg[3][7] ;
  wire [14:0]\oALUResult_reg[15] ;
  wire \oALUResult_reg[7] ;
  wire \oALUResult_reg[7]_0 ;
  wire oALUResult_reg_r;
  wire \oRegDstResult_reg[0] ;
  wire \oRegDstResult_reg[0]_0 ;
  wire oRegWriteCtrl_reg;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire sad1_n_0;
  wire sad1_n_1;
  wire sad1_n_10;
  wire sad1_n_11;
  wire sad1_n_12;
  wire sad1_n_13;
  wire sad1_n_14;
  wire sad1_n_15;
  wire sad1_n_16;
  wire sad1_n_2;
  wire sad1_n_3;
  wire sad1_n_4;
  wire sad1_n_5;
  wire sad1_n_6;
  wire sad1_n_7;
  wire sad1_n_8;
  wire sad1_n_9;
  wire sad2_n_0;
  wire sad2_n_1;
  wire sad2_n_10;
  wire sad2_n_11;
  wire sad2_n_12;
  wire sad2_n_13;
  wire sad2_n_14;
  wire sad2_n_15;
  wire sad2_n_2;
  wire sad2_n_3;
  wire sad2_n_4;
  wire sad2_n_5;
  wire sad2_n_6;
  wire sad2_n_7;
  wire sad2_n_8;
  wire sad2_n_9;
  wire [15:0]wALUResult;
  wire [1:0]woInstruction;
  wire woSAD3RegWrite;
  wire [0:0]woSAD3rd;

  SAD1_STAGE_C sad1
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .RegDstResult(RegDstResult),
        .RegWriteCtrl(RegWriteCtrl),
        .Reset_IBUF(Reset_IBUF),
        .oALUResult_reg_r(sad1_n_0),
        .oALUResult_reg_r_0(oALUResult_reg_r),
        .oRegWriteCtrl_reg(sad1_n_1),
        .oRegWriteCtrl_reg_0(sad1_n_2),
        .oRegWriteCtrl_reg_1(sad1_n_3),
        .oRegWriteCtrl_reg_10(sad1_n_12),
        .oRegWriteCtrl_reg_11(sad1_n_13),
        .oRegWriteCtrl_reg_12(sad1_n_14),
        .oRegWriteCtrl_reg_13(sad1_n_15),
        .oRegWriteCtrl_reg_14(sad1_n_16),
        .oRegWriteCtrl_reg_2(sad1_n_4),
        .oRegWriteCtrl_reg_3(sad1_n_5),
        .oRegWriteCtrl_reg_4(sad1_n_6),
        .oRegWriteCtrl_reg_5(sad1_n_7),
        .oRegWriteCtrl_reg_6(sad1_n_8),
        .oRegWriteCtrl_reg_7(sad1_n_9),
        .oRegWriteCtrl_reg_8(sad1_n_10),
        .oRegWriteCtrl_reg_9(sad1_n_11),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .wALUResult(wALUResult));
  SAD2_STAGE_C sad2
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .RegDstResult(RegDstResult),
        .RegWriteCtrl(RegWriteCtrl),
        .Reset_IBUF(Reset_IBUF),
        .\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_15),
        .\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_16),
        .\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_5),
        .\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_6),
        .\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_4),
        .\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_5),
        .\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_3),
        .\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_4),
        .\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_2),
        .\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_3),
        .\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_1),
        .\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_2),
        .\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_0),
        .\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_1),
        .\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_14),
        .\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_15),
        .\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_13),
        .\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_14),
        .\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_12),
        .\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_13),
        .\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_11),
        .\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_12),
        .\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_10),
        .\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_11),
        .\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_9),
        .\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_10),
        .\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_8),
        .\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_9),
        .\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_7),
        .\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_8),
        .\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r (sad2_n_6),
        .\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 (sad1_n_7),
        .oALUResult_reg_r(sad1_n_0),
        .\oRegDstResult_reg[0] (\oRegDstResult_reg[0] ),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .woInstruction(woInstruction),
        .woSAD3RegWrite(woSAD3RegWrite),
        .woSAD3rd(woSAD3rd));
  SAD3_STAGE_C sad3
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .\memory_reg[2][7] (\memory_reg[2][7] ),
        .\memory_reg[3][7] (\memory_reg[3][7] ),
        .\oALUResult_reg[0] (sad2_n_15),
        .\oALUResult_reg[10] (sad2_n_5),
        .\oALUResult_reg[11] (sad2_n_4),
        .\oALUResult_reg[12] (sad2_n_3),
        .\oALUResult_reg[13] (sad2_n_2),
        .\oALUResult_reg[14] (sad2_n_1),
        .\oALUResult_reg[15] (\oALUResult_reg[15] ),
        .\oALUResult_reg[15]_0 (sad2_n_0),
        .\oALUResult_reg[1] (sad2_n_14),
        .\oALUResult_reg[2] (sad2_n_13),
        .\oALUResult_reg[3] (sad2_n_12),
        .\oALUResult_reg[4] (sad2_n_11),
        .\oALUResult_reg[5] (sad2_n_10),
        .\oALUResult_reg[6] (sad2_n_9),
        .\oALUResult_reg[7] (\oALUResult_reg[7] ),
        .\oALUResult_reg[7]_0 (\oALUResult_reg[7]_0 ),
        .\oALUResult_reg[7]_1 (sad2_n_8),
        .\oALUResult_reg[8] (sad2_n_7),
        .\oALUResult_reg[9] (sad2_n_6),
        .\oRegDstResult_reg[0] (\oRegDstResult_reg[0]_0 ),
        .oRegWriteCtrl_reg(oRegWriteCtrl_reg),
        .woSAD3RegWrite(woSAD3RegWrite),
        .woSAD3rd(woSAD3rd));
endmodule

module MEM_MEGASAD_COMBO
   (\oALUResult_reg[15] ,
    \oALUResult_reg[7] ,
    \oALUResult_reg[7]_0 ,
    \oRegDstResult_reg[0] ,
    \oRegDstResult_reg[0]_0 ,
    oRegWriteCtrl_reg,
    oSAD2RegWrite,
    oSAD2rd,
    Reset_IBUF,
    oALUResult_reg_r,
    Clk_IBUF_BUFG,
    wALUResult,
    \memory_reg[2][7] ,
    \memory_reg[3][7] ,
    woInstruction,
    oMEMRegWrite,
    oMEMrd);
  output [14:0]\oALUResult_reg[15] ;
  output \oALUResult_reg[7] ;
  output \oALUResult_reg[7]_0 ;
  output \oRegDstResult_reg[0] ;
  output \oRegDstResult_reg[0]_0 ;
  output oRegWriteCtrl_reg;
  output oSAD2RegWrite;
  output [0:0]oSAD2rd;
  input Reset_IBUF;
  input oALUResult_reg_r;
  input Clk_IBUF_BUFG;
  input [15:0]wALUResult;
  input [0:0]\memory_reg[2][7] ;
  input [0:0]\memory_reg[3][7] ;
  input [1:0]woInstruction;
  input oMEMRegWrite;
  input [0:0]oMEMrd;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire mem_n_0;
  wire [0:0]\memory_reg[2][7] ;
  wire [0:0]\memory_reg[3][7] ;
  wire [14:0]\oALUResult_reg[15] ;
  wire \oALUResult_reg[7] ;
  wire \oALUResult_reg[7]_0 ;
  wire oALUResult_reg_r;
  wire oMEMRegWrite;
  wire [0:0]oMEMrd;
  wire \oRegDstResult_reg[0] ;
  wire \oRegDstResult_reg[0]_0 ;
  wire oRegWriteCtrl_reg;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [15:0]wALUResult;
  wire [1:0]woInstruction;
  wire woSAD1RegWrite;
  wire [0:0]woSAD1rd;

  MEM_STAGE_C mem
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .oALUResult_reg_r(mem_n_0),
        .oALUResult_reg_r_0(oALUResult_reg_r),
        .oMEMRegWrite(oMEMRegWrite),
        .oMEMrd(oMEMrd),
        .oRegDstResult(woSAD1rd),
        .oRegWriteCtrl(woSAD1RegWrite));
  MEGA_SAD_COMBO sad
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .RegDstResult(woSAD1rd),
        .RegWriteCtrl(woSAD1RegWrite),
        .Reset_IBUF(Reset_IBUF),
        .\memory_reg[2][7] (\memory_reg[2][7] ),
        .\memory_reg[3][7] (\memory_reg[3][7] ),
        .\oALUResult_reg[15] (\oALUResult_reg[15] ),
        .\oALUResult_reg[7] (\oALUResult_reg[7] ),
        .\oALUResult_reg[7]_0 (\oALUResult_reg[7]_0 ),
        .oALUResult_reg_r(mem_n_0),
        .\oRegDstResult_reg[0] (\oRegDstResult_reg[0] ),
        .\oRegDstResult_reg[0]_0 (\oRegDstResult_reg[0]_0 ),
        .oRegWriteCtrl_reg(oRegWriteCtrl_reg),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .wALUResult(wALUResult),
        .woInstruction(woInstruction));
endmodule

module MEM_STAGE_C
   (oALUResult_reg_r,
    oRegWriteCtrl,
    oRegDstResult,
    Reset_IBUF,
    oALUResult_reg_r_0,
    Clk_IBUF_BUFG,
    oMEMRegWrite,
    oMEMrd);
  output oALUResult_reg_r;
  output oRegWriteCtrl;
  output [0:0]oRegDstResult;
  input Reset_IBUF;
  input oALUResult_reg_r_0;
  input Clk_IBUF_BUFG;
  input oMEMRegWrite;
  input [0:0]oMEMrd;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire oALUResult_reg_r;
  wire oALUResult_reg_r_0;
  wire oMEMRegWrite;
  wire [0:0]oMEMrd;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;

  REG_MEM_SAD1_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .oALUResult_reg_r_0(oALUResult_reg_r),
        .oALUResult_reg_r_1(oALUResult_reg_r_0),
        .oMEMRegWrite(oMEMRegWrite),
        .oMEMrd(oMEMrd),
        .oRegDstResult(oRegDstResult),
        .oRegWriteCtrl(oRegWriteCtrl));
endmodule

module ProgramCounter_C
   (S,
    Q,
    woIFIDWrite,
    D,
    Clk_IBUF_BUFG,
    Reset_IBUF);
  output [0:0]S;
  output [10:0]Q;
  input woIFIDWrite;
  input [10:0]D;
  input Clk_IBUF_BUFG;
  input Reset_IBUF;

  wire Clk_IBUF_BUFG;
  wire [10:0]D;
  wire [10:0]Q;
  wire Reset_IBUF;
  wire [0:0]S;
  wire woIFIDWrite;

  LUT1 #(
    .INIT(2'h1)) 
    Out_carry_i_1
       (.I0(Q[1]),
        .O(S));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \oPCResult_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(woIFIDWrite),
        .CLR(Reset_IBUF),
        .D(D[8]),
        .Q(Q[8]));
endmodule

module REG_EX_MEM_C
   (oALUResult_reg_r_0,
    oRegWriteCtrl,
    oRegDstResult,
    Reset_IBUF,
    Clk_IBUF_BUFG,
    woRegWriteCtrl,
    woSEImm);
  output oALUResult_reg_r_0;
  output oRegWriteCtrl;
  output [0:0]oRegDstResult;
  input Reset_IBUF;
  input Clk_IBUF_BUFG;
  input woRegWriteCtrl;
  input [0:0]woSEImm;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire oALUResult_reg_r_0;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;
  wire woRegWriteCtrl;
  wire [0:0]woSEImm;

  FDRE #(
    .INIT(1'b0)) 
    oALUResult_reg_r
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(oALUResult_reg_r_0),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oRegDstResult_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(woSEImm),
        .Q(oRegDstResult),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    oRegWriteCtrl_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(woRegWriteCtrl),
        .Q(oRegWriteCtrl),
        .R(Reset_IBUF));
endmodule

module REG_ID_EX_C
   (oRegWriteCtrl_reg_0,
    woSEImm,
    oRegWriteCtrl_reg_1,
    wALUResult,
    SR,
    oRegWriteCtrl_reg_2,
    Clk_IBUF_BUFG,
    woReadReg1ToIF,
    \oSEImm_reg[0]_0 ,
    oSAD2RegWrite,
    oSAD2rd,
    D);
  output oRegWriteCtrl_reg_0;
  output [0:0]woSEImm;
  output oRegWriteCtrl_reg_1;
  output [15:0]wALUResult;
  input [0:0]SR;
  input oRegWriteCtrl_reg_2;
  input Clk_IBUF_BUFG;
  input [0:0]woReadReg1ToIF;
  input \oSEImm_reg[0]_0 ;
  input oSAD2RegWrite;
  input [0:0]oSAD2rd;
  input [15:0]D;

  wire Clk_IBUF_BUFG;
  wire [15:0]D;
  wire [0:0]SR;
  wire [15:0]\exstage/ALU/data8 ;
  wire \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ;
  wire \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ;
  wire \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ;
  wire \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ;
  wire \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ;
  wire \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ;
  wire \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ;
  wire \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ;
  wire \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ;
  wire \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ;
  wire \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ;
  wire \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ;
  wire \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ;
  wire \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ;
  wire \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ;
  wire \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ;
  wire \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ;
  wire \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ;
  wire \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ;
  wire oRegWriteCtrl_reg_0;
  wire oRegWriteCtrl_reg_1;
  wire oRegWriteCtrl_reg_2;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire \oSEImm_reg[0]_0 ;
  wire [15:0]wALUResult;
  wire [7:7]woReadReg1;
  wire [0:0]woReadReg1ToIF;
  wire [15:0]woReadReg2;
  wire [0:0]woSEImm;
  wire [2:0]\NLW_oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[0]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [0]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[10]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [10]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [11]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[11]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2 
       (.CI(\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ),
        .CO({\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ,\NLW_oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\exstage/ALU/data8 [11:8]),
        .S({\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ,\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ,\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ,\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[11]),
        .O(\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[10]),
        .O(\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[9]),
        .O(\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[8]),
        .O(\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[12]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [12]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[13]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [13]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[14]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [14]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [15]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[15]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2 
       (.CI(\oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ),
        .CO(\NLW_oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\exstage/ALU/data8 [15:12]),
        .S({\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ,\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ,\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ,\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[15]),
        .O(\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[14]),
        .O(\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[13]),
        .O(\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[12]),
        .O(\oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[1]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [1]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[2]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [2]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [3]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[3]));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2 
       (.CI(1'b0),
        .CO({\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ,\NLW_oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\exstage/ALU/data8 [3:0]),
        .S({\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ,\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ,\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ,\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3 
       (.I0(woReadReg2[3]),
        .I1(oRegWriteCtrl_reg_0),
        .O(\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[2]),
        .O(\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[1]),
        .O(\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6 
       (.I0(woReadReg2[0]),
        .I1(oRegWriteCtrl_reg_0),
        .I2(woSEImm),
        .O(\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[4]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [4]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[5]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [5]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[6]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [6]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [7]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2 
       (.CI(\oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ),
        .CO({\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_n_0 ,\NLW_oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({woReadReg1,1'b0,1'b0,1'b0}),
        .O(\exstage/ALU/data8 [7:4]),
        .S({\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ,\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ,\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ,\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 }));
  LUT3 #(
    .INIT(8'h9A)) 
    \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3 
       (.I0(woReadReg1),
        .I1(oRegWriteCtrl_reg_0),
        .I2(woReadReg2[7]),
        .O(\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[6]),
        .O(\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woReadReg2[5]),
        .O(\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6 
       (.I0(woReadReg2[4]),
        .I1(oRegWriteCtrl_reg_0),
        .O(\oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[8]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [8]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \oALUResult_reg[9]_srl3___memsad_sad_sad1_register_oALUResult_reg_r_i_1 
       (.I0(\exstage/ALU/data8 [9]),
        .I1(oRegWriteCtrl_reg_0),
        .O(wALUResult[9]));
  LUT6 #(
    .INIT(64'hF20082008F008200)) 
    \oPCResult[11]_i_3 
       (.I0(oRegWriteCtrl_reg_0),
        .I1(woSEImm),
        .I2(\oSEImm_reg[0]_0 ),
        .I3(oRegWriteCtrl_reg_2),
        .I4(oSAD2RegWrite),
        .I5(oSAD2rd),
        .O(oRegWriteCtrl_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg1_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(woReadReg1ToIF),
        .Q(woReadReg1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(woReadReg2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(woReadReg2[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(woReadReg2[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(woReadReg2[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(woReadReg2[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(woReadReg2[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(woReadReg2[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(woReadReg2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(woReadReg2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(woReadReg2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(woReadReg2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(woReadReg2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(woReadReg2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(woReadReg2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(woReadReg2[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oReadReg2_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(woReadReg2[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    oRegWriteCtrl_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oRegWriteCtrl_reg_2),
        .Q(oRegWriteCtrl_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \oSEImm_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oSEImm_reg[0]_0 ),
        .Q(woSEImm),
        .R(SR));
endmodule

module REG_IF_ID_C
   (SR,
    woIFIDWrite,
    \oInstruction_reg[16]_0 ,
    \oInstruction_reg[17]_0 ,
    Reset_IBUF,
    \oPCResult_reg[11] ,
    \oPCResult_reg[11]_0 ,
    oRegDstResult,
    oRegWriteCtrl,
    Q,
    \oInstruction_reg[17]_1 ,
    Clk_IBUF_BUFG);
  output [0:0]SR;
  output woIFIDWrite;
  output \oInstruction_reg[16]_0 ;
  output \oInstruction_reg[17]_0 ;
  input Reset_IBUF;
  input \oPCResult_reg[11] ;
  input \oPCResult_reg[11]_0 ;
  input [0:0]oRegDstResult;
  input oRegWriteCtrl;
  input [1:0]Q;
  input \oInstruction_reg[17]_1 ;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire [1:0]Q;
  wire Reset_IBUF;
  wire [0:0]SR;
  wire \oInstruction[16]_i_1_n_0 ;
  wire \oInstruction[17]_i_1_n_0 ;
  wire \oInstruction_reg[16]_0 ;
  wire \oInstruction_reg[17]_0 ;
  wire \oInstruction_reg[17]_1 ;
  wire \oPCResult_reg[11] ;
  wire \oPCResult_reg[11]_0 ;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;
  wire woIFIDWrite;

  LUT5 #(
    .INIT(32'h08FF0800)) 
    \oInstruction[16]_i_1 
       (.I0(Q[0]),
        .I1(\oInstruction_reg[17]_1 ),
        .I2(Q[1]),
        .I3(woIFIDWrite),
        .I4(\oInstruction_reg[16]_0 ),
        .O(\oInstruction[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \oInstruction[17]_i_1 
       (.I0(\oInstruction_reg[17]_1 ),
        .I1(Q[1]),
        .I2(woIFIDWrite),
        .I3(\oInstruction_reg[17]_0 ),
        .O(\oInstruction[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \oInstruction_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oInstruction[16]_i_1_n_0 ),
        .Q(\oInstruction_reg[16]_0 ),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oInstruction_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oInstruction[17]_i_1_n_0 ),
        .Q(\oInstruction_reg[17]_0 ),
        .R(Reset_IBUF));
  LUT6 #(
    .INIT(64'h0220222222222222)) 
    \oPCResult[11]_i_1 
       (.I0(\oPCResult_reg[11] ),
        .I1(\oPCResult_reg[11]_0 ),
        .I2(\oInstruction_reg[16]_0 ),
        .I3(oRegDstResult),
        .I4(\oInstruction_reg[17]_0 ),
        .I5(oRegWriteCtrl),
        .O(woIFIDWrite));
  LUT2 #(
    .INIT(4'hB)) 
    oRegWriteCtrl_i_1
       (.I0(Reset_IBUF),
        .I1(woIFIDWrite),
        .O(SR));
endmodule

module REG_MEM_SAD1_C
   (oALUResult_reg_r_0,
    oRegWriteCtrl,
    oRegDstResult,
    Reset_IBUF,
    oALUResult_reg_r_1,
    Clk_IBUF_BUFG,
    oMEMRegWrite,
    oMEMrd);
  output oALUResult_reg_r_0;
  output oRegWriteCtrl;
  output [0:0]oRegDstResult;
  input Reset_IBUF;
  input oALUResult_reg_r_1;
  input Clk_IBUF_BUFG;
  input oMEMRegWrite;
  input [0:0]oMEMrd;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire oALUResult_reg_r_0;
  wire oALUResult_reg_r_1;
  wire oMEMRegWrite;
  wire [0:0]oMEMrd;
  wire [0:0]oRegDstResult;
  wire oRegWriteCtrl;

  FDRE #(
    .INIT(1'b0)) 
    oALUResult_reg_r
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oALUResult_reg_r_1),
        .Q(oALUResult_reg_r_0),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oRegDstResult_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oMEMrd),
        .Q(oRegDstResult),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    oRegWriteCtrl_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oMEMRegWrite),
        .Q(oRegWriteCtrl),
        .R(Reset_IBUF));
endmodule

module REG_SAD1_SAD2_C
   (oALUResult_reg_r_0,
    oRegWriteCtrl_reg_0,
    oRegWriteCtrl_reg_1,
    oRegWriteCtrl_reg_2,
    oRegWriteCtrl_reg_3,
    oRegWriteCtrl_reg_4,
    oRegWriteCtrl_reg_5,
    oRegWriteCtrl_reg_6,
    oRegWriteCtrl_reg_7,
    oRegWriteCtrl_reg_8,
    oRegWriteCtrl_reg_9,
    oRegWriteCtrl_reg_10,
    oRegWriteCtrl_reg_11,
    oRegWriteCtrl_reg_12,
    oRegWriteCtrl_reg_13,
    oRegWriteCtrl_reg_14,
    oRegWriteCtrl_reg_15,
    oSAD2RegWrite,
    oSAD2rd,
    Reset_IBUF,
    oALUResult_reg_r_1,
    Clk_IBUF_BUFG,
    wALUResult,
    RegWriteCtrl,
    RegDstResult);
  output oALUResult_reg_r_0;
  output oRegWriteCtrl_reg_0;
  output oRegWriteCtrl_reg_1;
  output oRegWriteCtrl_reg_2;
  output oRegWriteCtrl_reg_3;
  output oRegWriteCtrl_reg_4;
  output oRegWriteCtrl_reg_5;
  output oRegWriteCtrl_reg_6;
  output oRegWriteCtrl_reg_7;
  output oRegWriteCtrl_reg_8;
  output oRegWriteCtrl_reg_9;
  output oRegWriteCtrl_reg_10;
  output oRegWriteCtrl_reg_11;
  output oRegWriteCtrl_reg_12;
  output oRegWriteCtrl_reg_13;
  output oRegWriteCtrl_reg_14;
  output oRegWriteCtrl_reg_15;
  output oSAD2RegWrite;
  output [0:0]oSAD2rd;
  input Reset_IBUF;
  input oALUResult_reg_r_1;
  input Clk_IBUF_BUFG;
  input [15:0]wALUResult;
  input RegWriteCtrl;
  input [0:0]RegDstResult;

  wire Clk_IBUF_BUFG;
  wire [0:0]RegDstResult;
  wire RegWriteCtrl;
  wire Reset_IBUF;
  wire oALUResult_reg_r_0;
  wire oALUResult_reg_r_1;
  wire oRegWriteCtrl_reg_0;
  wire oRegWriteCtrl_reg_1;
  wire oRegWriteCtrl_reg_10;
  wire oRegWriteCtrl_reg_11;
  wire oRegWriteCtrl_reg_12;
  wire oRegWriteCtrl_reg_13;
  wire oRegWriteCtrl_reg_14;
  wire oRegWriteCtrl_reg_15;
  wire oRegWriteCtrl_reg_2;
  wire oRegWriteCtrl_reg_3;
  wire oRegWriteCtrl_reg_4;
  wire oRegWriteCtrl_reg_5;
  wire oRegWriteCtrl_reg_6;
  wire oRegWriteCtrl_reg_7;
  wire oRegWriteCtrl_reg_8;
  wire oRegWriteCtrl_reg_9;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [15:0]wALUResult;

  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[0]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[0]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[0]),
        .Q(oRegWriteCtrl_reg_15));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[10]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[10]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[10]),
        .Q(oRegWriteCtrl_reg_5));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[11]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[11]),
        .Q(oRegWriteCtrl_reg_4));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[12]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[12]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[12]),
        .Q(oRegWriteCtrl_reg_3));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[13]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[13]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[13]),
        .Q(oRegWriteCtrl_reg_2));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[14]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[14]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[14]),
        .Q(oRegWriteCtrl_reg_1));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[15]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[15]),
        .Q(oRegWriteCtrl_reg_0));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[1]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[1]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[1]),
        .Q(oRegWriteCtrl_reg_14));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[2]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[2]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[2]),
        .Q(oRegWriteCtrl_reg_13));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[3]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[3]),
        .Q(oRegWriteCtrl_reg_12));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[4]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[4]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[4]),
        .Q(oRegWriteCtrl_reg_11));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[5]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[5]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[5]),
        .Q(oRegWriteCtrl_reg_10));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[6]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[6]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[6]),
        .Q(oRegWriteCtrl_reg_9));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[7]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[7]),
        .Q(oRegWriteCtrl_reg_8));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[8]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[8]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[8]),
        .Q(oRegWriteCtrl_reg_7));
  (* srl_bus_name = "\memsad/sad/sad1/register/oALUResult_reg " *) 
  (* srl_name = "\memsad/sad/sad1/register/oALUResult_reg[9]_srl3___memsad_sad_sad1_register_oALUResult_reg_r " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \oALUResult_reg[9]_srl3___memsad_sad_sad1_register_oALUResult_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(Clk_IBUF_BUFG),
        .D(wALUResult[9]),
        .Q(oRegWriteCtrl_reg_6));
  FDRE #(
    .INIT(1'b0)) 
    oALUResult_reg_r
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oALUResult_reg_r_1),
        .Q(oALUResult_reg_r_0),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oRegDstResult_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(RegDstResult),
        .Q(oSAD2rd),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    oRegWriteCtrl_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(RegWriteCtrl),
        .Q(oSAD2RegWrite),
        .R(Reset_IBUF));
endmodule

module REG_SAD2_SAD3_C
   (\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    woSAD3RegWrite,
    woSAD3rd,
    \oRegDstResult_reg[0]_0 ,
    Reset_IBUF,
    oALUResult_reg_r_0,
    Clk_IBUF_BUFG,
    \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_1 ,
    oSAD2RegWrite,
    oSAD2rd,
    woInstruction,
    RegWriteCtrl,
    RegDstResult);
  output \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  output woSAD3RegWrite;
  output [0:0]woSAD3rd;
  output \oRegDstResult_reg[0]_0 ;
  input Reset_IBUF;
  input oALUResult_reg_r_0;
  input Clk_IBUF_BUFG;
  input \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  input oSAD2RegWrite;
  input [0:0]oSAD2rd;
  input [1:0]woInstruction;
  input RegWriteCtrl;
  input [0:0]RegDstResult;

  wire Clk_IBUF_BUFG;
  wire [0:0]RegDstResult;
  wire RegWriteCtrl;
  wire Reset_IBUF;
  wire \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_1 ;
  wire \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ;
  wire oALUResult_reg_r_0;
  wire oALUResult_reg_r_n_0;
  wire \oRegDstResult_reg[0]_0 ;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [1:0]woInstruction;
  wire woSAD3RegWrite;
  wire [0:0]woSAD3rd;

  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_1 ),
        .Q(\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate
       (.I0(\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__0
       (.I0(\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__1
       (.I0(\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__10
       (.I0(\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__11
       (.I0(\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__12
       (.I0(\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__13
       (.I0(\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__14
       (.I0(\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__2
       (.I0(\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__3
       (.I0(\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__4
       (.I0(\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__5
       (.I0(\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__6
       (.I0(\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__7
       (.I0(\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__8
       (.I0(\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    oALUResult_reg_gate__9
       (.I0(\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_n_0 ),
        .I1(oALUResult_reg_r_n_0),
        .O(\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ));
  FDRE #(
    .INIT(1'b0)) 
    oALUResult_reg_r
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oALUResult_reg_r_0),
        .Q(oALUResult_reg_r_n_0),
        .R(Reset_IBUF));
  LUT6 #(
    .INIT(64'h0BFF7BFF70FF7BFF)) 
    \oPCResult[11]_i_2 
       (.I0(woSAD3rd),
        .I1(woSAD3RegWrite),
        .I2(woInstruction[0]),
        .I3(woInstruction[1]),
        .I4(RegWriteCtrl),
        .I5(RegDstResult),
        .O(\oRegDstResult_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \oRegDstResult_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oSAD2rd),
        .Q(woSAD3rd),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    oRegWriteCtrl_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(oSAD2RegWrite),
        .Q(woSAD3RegWrite),
        .R(Reset_IBUF));
endmodule

module REG_SAD3_WB_C
   (\oALUResult_reg[15]_0 ,
    \oALUResult_reg[7]_0 ,
    \oALUResult_reg[7]_1 ,
    \oRegDstResult_reg[0]_0 ,
    oRegWriteCtrl_reg_0,
    Reset_IBUF,
    \oALUResult_reg[15]_1 ,
    Clk_IBUF_BUFG,
    \oALUResult_reg[14]_0 ,
    \oALUResult_reg[13]_0 ,
    \oALUResult_reg[12]_0 ,
    \oALUResult_reg[11]_0 ,
    \oALUResult_reg[10]_0 ,
    \oALUResult_reg[9]_0 ,
    \oALUResult_reg[8]_0 ,
    \oALUResult_reg[7]_2 ,
    \oALUResult_reg[6]_0 ,
    \oALUResult_reg[5]_0 ,
    \oALUResult_reg[4]_0 ,
    \oALUResult_reg[3]_0 ,
    \oALUResult_reg[2]_0 ,
    \oALUResult_reg[1]_0 ,
    \oALUResult_reg[0]_0 ,
    woSAD3RegWrite,
    woSAD3rd,
    \memory_reg[2][7] ,
    \memory_reg[3][7] );
  output [14:0]\oALUResult_reg[15]_0 ;
  output \oALUResult_reg[7]_0 ;
  output \oALUResult_reg[7]_1 ;
  output \oRegDstResult_reg[0]_0 ;
  output oRegWriteCtrl_reg_0;
  input Reset_IBUF;
  input \oALUResult_reg[15]_1 ;
  input Clk_IBUF_BUFG;
  input \oALUResult_reg[14]_0 ;
  input \oALUResult_reg[13]_0 ;
  input \oALUResult_reg[12]_0 ;
  input \oALUResult_reg[11]_0 ;
  input \oALUResult_reg[10]_0 ;
  input \oALUResult_reg[9]_0 ;
  input \oALUResult_reg[8]_0 ;
  input \oALUResult_reg[7]_2 ;
  input \oALUResult_reg[6]_0 ;
  input \oALUResult_reg[5]_0 ;
  input \oALUResult_reg[4]_0 ;
  input \oALUResult_reg[3]_0 ;
  input \oALUResult_reg[2]_0 ;
  input \oALUResult_reg[1]_0 ;
  input \oALUResult_reg[0]_0 ;
  input woSAD3RegWrite;
  input [0:0]woSAD3rd;
  input [0:0]\memory_reg[2][7] ;
  input [0:0]\memory_reg[3][7] ;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire [0:0]\memory_reg[2][7] ;
  wire [0:0]\memory_reg[3][7] ;
  wire [7:7]oALUResult;
  wire \oALUResult_reg[0]_0 ;
  wire \oALUResult_reg[10]_0 ;
  wire \oALUResult_reg[11]_0 ;
  wire \oALUResult_reg[12]_0 ;
  wire \oALUResult_reg[13]_0 ;
  wire \oALUResult_reg[14]_0 ;
  wire [14:0]\oALUResult_reg[15]_0 ;
  wire \oALUResult_reg[15]_1 ;
  wire \oALUResult_reg[1]_0 ;
  wire \oALUResult_reg[2]_0 ;
  wire \oALUResult_reg[3]_0 ;
  wire \oALUResult_reg[4]_0 ;
  wire \oALUResult_reg[5]_0 ;
  wire \oALUResult_reg[6]_0 ;
  wire \oALUResult_reg[7]_0 ;
  wire \oALUResult_reg[7]_1 ;
  wire \oALUResult_reg[7]_2 ;
  wire \oALUResult_reg[8]_0 ;
  wire \oALUResult_reg[9]_0 ;
  wire \oRegDstResult_reg[0]_0 ;
  wire oRegWriteCtrl_reg_0;
  wire [0:0]wboRegDstResult;
  wire wboRegWrite1;
  wire woSAD3RegWrite;
  wire [0:0]woSAD3rd;

  LUT2 #(
    .INIT(4'h4)) 
    \memory[2][15]_i_1 
       (.I0(wboRegDstResult),
        .I1(wboRegWrite1),
        .O(\oRegDstResult_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEF20)) 
    \memory[2][7]_i_1 
       (.I0(oALUResult),
        .I1(wboRegDstResult),
        .I2(wboRegWrite1),
        .I3(\memory_reg[2][7] ),
        .O(\oALUResult_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory[3][15]_i_1 
       (.I0(wboRegWrite1),
        .I1(wboRegDstResult),
        .O(oRegWriteCtrl_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \memory[3][7]_i_1 
       (.I0(oALUResult),
        .I1(wboRegWrite1),
        .I2(wboRegDstResult),
        .I3(\memory_reg[3][7] ),
        .O(\oALUResult_reg[7]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[0]_0 ),
        .Q(\oALUResult_reg[15]_0 [0]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[10]_0 ),
        .Q(\oALUResult_reg[15]_0 [9]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[11]_0 ),
        .Q(\oALUResult_reg[15]_0 [10]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[12]_0 ),
        .Q(\oALUResult_reg[15]_0 [11]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[13]_0 ),
        .Q(\oALUResult_reg[15]_0 [12]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[14]_0 ),
        .Q(\oALUResult_reg[15]_0 [13]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[15]_1 ),
        .Q(\oALUResult_reg[15]_0 [14]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[1]_0 ),
        .Q(\oALUResult_reg[15]_0 [1]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[2]_0 ),
        .Q(\oALUResult_reg[15]_0 [2]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[3]_0 ),
        .Q(\oALUResult_reg[15]_0 [3]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[4]_0 ),
        .Q(\oALUResult_reg[15]_0 [4]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[5]_0 ),
        .Q(\oALUResult_reg[15]_0 [5]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[6]_0 ),
        .Q(\oALUResult_reg[15]_0 [6]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[7]_2 ),
        .Q(oALUResult),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[8]_0 ),
        .Q(\oALUResult_reg[15]_0 [7]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oALUResult_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\oALUResult_reg[9]_0 ),
        .Q(\oALUResult_reg[15]_0 [8]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \oRegDstResult_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(woSAD3rd),
        .Q(wboRegDstResult),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    oRegWriteCtrl_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(woSAD3RegWrite),
        .Q(wboRegWrite1),
        .R(Reset_IBUF));
endmodule

module RegFile_C
   (\memory_reg[2][7]_0 ,
    \memory_reg[3][7]_0 ,
    out7_OBUF,
    woReadReg1ToIF,
    D,
    \memory_reg[2][7]_1 ,
    Clk_IBUF_BUFG,
    \memory_reg[2][0]_0 ,
    oALUResult,
    \memory_reg[3][7]_1 ,
    \memory_reg[3][0]_0 ,
    sel0,
    \oReadReg2_reg[15] ,
    \oReadReg2_reg[15]_0 );
  output [0:0]\memory_reg[2][7]_0 ;
  output [0:0]\memory_reg[3][7]_0 ;
  output [6:0]out7_OBUF;
  output [0:0]woReadReg1ToIF;
  output [15:0]D;
  input \memory_reg[2][7]_1 ;
  input Clk_IBUF_BUFG;
  input \memory_reg[2][0]_0 ;
  input [14:0]oALUResult;
  input \memory_reg[3][7]_1 ;
  input \memory_reg[3][0]_0 ;
  input [2:0]sel0;
  input \oReadReg2_reg[15] ;
  input \oReadReg2_reg[15]_0 ;

  wire Clk_IBUF_BUFG;
  wire [15:0]D;
  wire [15:0]DISPLAY_V0;
  wire [15:0]DISPLAY_V1;
  wire [3:0]\Display/in4__27 ;
  wire \memory_reg[2][0]_0 ;
  wire [0:0]\memory_reg[2][7]_0 ;
  wire \memory_reg[2][7]_1 ;
  wire \memory_reg[3][0]_0 ;
  wire [0:0]\memory_reg[3][7]_0 ;
  wire \memory_reg[3][7]_1 ;
  wire \memory_reg_n_0_[1][7] ;
  wire [14:0]oALUResult;
  wire \oReadReg2_reg[15] ;
  wire \oReadReg2_reg[15]_0 ;
  wire [6:0]out7_OBUF;
  wire \out7_OBUF[6]_inst_i_10_n_0 ;
  wire \out7_OBUF[6]_inst_i_11_n_0 ;
  wire \out7_OBUF[6]_inst_i_12_n_0 ;
  wire \out7_OBUF[6]_inst_i_13_n_0 ;
  wire \out7_OBUF[6]_inst_i_6_n_0 ;
  wire \out7_OBUF[6]_inst_i_7_n_0 ;
  wire \out7_OBUF[6]_inst_i_8_n_0 ;
  wire \out7_OBUF[6]_inst_i_9_n_0 ;
  wire [2:0]sel0;
  wire [0:0]woReadReg1ToIF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[0][7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(woReadReg1ToIF),
        .Q(woReadReg1ToIF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[1][7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\memory_reg_n_0_[1][7] ),
        .Q(\memory_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[0]),
        .Q(DISPLAY_V0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[9]),
        .Q(DISPLAY_V0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[10]),
        .Q(DISPLAY_V0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[11]),
        .Q(DISPLAY_V0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[12]),
        .Q(DISPLAY_V0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[13]),
        .Q(DISPLAY_V0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[14]),
        .Q(DISPLAY_V0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[1]),
        .Q(DISPLAY_V0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[2]),
        .Q(DISPLAY_V0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[3]),
        .Q(DISPLAY_V0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[4]),
        .Q(DISPLAY_V0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[5]),
        .Q(DISPLAY_V0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[6]),
        .Q(DISPLAY_V0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\memory_reg[2][7]_1 ),
        .Q(\memory_reg[2][7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[7]),
        .Q(DISPLAY_V0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[2][9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[2][0]_0 ),
        .D(oALUResult[8]),
        .Q(DISPLAY_V0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[0]),
        .Q(DISPLAY_V1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[9]),
        .Q(DISPLAY_V1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[10]),
        .Q(DISPLAY_V1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[11]),
        .Q(DISPLAY_V1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[12]),
        .Q(DISPLAY_V1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[13]),
        .Q(DISPLAY_V1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[14]),
        .Q(DISPLAY_V1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[1]),
        .Q(DISPLAY_V1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[2]),
        .Q(DISPLAY_V1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[3]),
        .Q(DISPLAY_V1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[4]),
        .Q(DISPLAY_V1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[5]),
        .Q(DISPLAY_V1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[6]),
        .Q(DISPLAY_V1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\memory_reg[3][7]_1 ),
        .Q(\memory_reg[3][7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[7]),
        .Q(DISPLAY_V1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \memory_reg[3][9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\memory_reg[3][0]_0 ),
        .D(oALUResult[8]),
        .Q(DISPLAY_V1[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[0]_i_1 
       (.I0(DISPLAY_V1[0]),
        .I1(DISPLAY_V0[0]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[10]_i_1 
       (.I0(DISPLAY_V1[10]),
        .I1(DISPLAY_V0[10]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[11]_i_1 
       (.I0(DISPLAY_V1[11]),
        .I1(DISPLAY_V0[11]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[12]_i_1 
       (.I0(DISPLAY_V1[12]),
        .I1(DISPLAY_V0[12]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[13]_i_1 
       (.I0(DISPLAY_V1[13]),
        .I1(DISPLAY_V0[13]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[14]_i_1 
       (.I0(DISPLAY_V1[14]),
        .I1(DISPLAY_V0[14]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[15]_i_1 
       (.I0(DISPLAY_V1[15]),
        .I1(DISPLAY_V0[15]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[1]_i_1 
       (.I0(DISPLAY_V1[1]),
        .I1(DISPLAY_V0[1]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[2]_i_1 
       (.I0(DISPLAY_V1[2]),
        .I1(DISPLAY_V0[2]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[3]_i_1 
       (.I0(DISPLAY_V1[3]),
        .I1(DISPLAY_V0[3]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[4]_i_1 
       (.I0(DISPLAY_V1[4]),
        .I1(DISPLAY_V0[4]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[5]_i_1 
       (.I0(DISPLAY_V1[5]),
        .I1(DISPLAY_V0[5]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[6]_i_1 
       (.I0(DISPLAY_V1[6]),
        .I1(DISPLAY_V0[6]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oReadReg2[7]_i_1 
       (.I0(\memory_reg[3][7]_0 ),
        .I1(\memory_reg[2][7]_0 ),
        .I2(\oReadReg2_reg[15] ),
        .I3(\memory_reg_n_0_[1][7] ),
        .I4(\oReadReg2_reg[15]_0 ),
        .I5(woReadReg1ToIF),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[8]_i_1 
       (.I0(DISPLAY_V1[8]),
        .I1(DISPLAY_V0[8]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oReadReg2[9]_i_1 
       (.I0(DISPLAY_V1[9]),
        .I1(DISPLAY_V0[9]),
        .I2(\oReadReg2_reg[15] ),
        .I3(\oReadReg2_reg[15]_0 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out7_OBUF[0]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [0]),
        .I2(\Display/in4__27 [2]),
        .I3(\Display/in4__27 [1]),
        .O(out7_OBUF[0]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out7_OBUF[1]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [2]),
        .I2(\Display/in4__27 [0]),
        .I3(\Display/in4__27 [1]),
        .O(out7_OBUF[1]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out7_OBUF[2]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [1]),
        .I2(\Display/in4__27 [2]),
        .I3(\Display/in4__27 [0]),
        .O(out7_OBUF[2]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out7_OBUF[3]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [2]),
        .I2(\Display/in4__27 [0]),
        .I3(\Display/in4__27 [1]),
        .O(out7_OBUF[3]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out7_OBUF[4]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [0]),
        .I2(\Display/in4__27 [1]),
        .I3(\Display/in4__27 [2]),
        .O(out7_OBUF[4]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \out7_OBUF[5]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [2]),
        .I2(\Display/in4__27 [0]),
        .I3(\Display/in4__27 [1]),
        .O(out7_OBUF[5]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out7_OBUF[6]_inst_i_1 
       (.I0(\Display/in4__27 [3]),
        .I1(\Display/in4__27 [2]),
        .I2(\Display/in4__27 [0]),
        .I3(\Display/in4__27 [1]),
        .O(out7_OBUF[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_10 
       (.I0(DISPLAY_V0[12]),
        .I1(DISPLAY_V0[8]),
        .I2(sel0[1]),
        .I3(DISPLAY_V0[4]),
        .I4(sel0[0]),
        .I5(DISPLAY_V0[0]),
        .O(\out7_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_11 
       (.I0(DISPLAY_V1[12]),
        .I1(DISPLAY_V1[8]),
        .I2(sel0[1]),
        .I3(DISPLAY_V1[4]),
        .I4(sel0[0]),
        .I5(DISPLAY_V1[0]),
        .O(\out7_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_12 
       (.I0(DISPLAY_V0[13]),
        .I1(DISPLAY_V0[9]),
        .I2(sel0[1]),
        .I3(DISPLAY_V0[5]),
        .I4(sel0[0]),
        .I5(DISPLAY_V0[1]),
        .O(\out7_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_13 
       (.I0(DISPLAY_V1[13]),
        .I1(DISPLAY_V1[9]),
        .I2(sel0[1]),
        .I3(DISPLAY_V1[5]),
        .I4(sel0[0]),
        .I5(DISPLAY_V1[1]),
        .O(\out7_OBUF[6]_inst_i_13_n_0 ));
  MUXF7 \out7_OBUF[6]_inst_i_2 
       (.I0(\out7_OBUF[6]_inst_i_6_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_7_n_0 ),
        .O(\Display/in4__27 [3]),
        .S(sel0[2]));
  MUXF7 \out7_OBUF[6]_inst_i_3 
       (.I0(\out7_OBUF[6]_inst_i_8_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_9_n_0 ),
        .O(\Display/in4__27 [2]),
        .S(sel0[2]));
  MUXF7 \out7_OBUF[6]_inst_i_4 
       (.I0(\out7_OBUF[6]_inst_i_10_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_11_n_0 ),
        .O(\Display/in4__27 [0]),
        .S(sel0[2]));
  MUXF7 \out7_OBUF[6]_inst_i_5 
       (.I0(\out7_OBUF[6]_inst_i_12_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_13_n_0 ),
        .O(\Display/in4__27 [1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_6 
       (.I0(DISPLAY_V0[15]),
        .I1(DISPLAY_V0[11]),
        .I2(sel0[1]),
        .I3(\memory_reg[2][7]_0 ),
        .I4(sel0[0]),
        .I5(DISPLAY_V0[3]),
        .O(\out7_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_7 
       (.I0(DISPLAY_V1[15]),
        .I1(DISPLAY_V1[11]),
        .I2(sel0[1]),
        .I3(\memory_reg[3][7]_0 ),
        .I4(sel0[0]),
        .I5(DISPLAY_V1[3]),
        .O(\out7_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_8 
       (.I0(DISPLAY_V0[14]),
        .I1(DISPLAY_V0[10]),
        .I2(sel0[1]),
        .I3(DISPLAY_V0[6]),
        .I4(sel0[0]),
        .I5(DISPLAY_V0[2]),
        .O(\out7_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_9 
       (.I0(DISPLAY_V1[14]),
        .I1(DISPLAY_V1[10]),
        .I2(sel0[1]),
        .I3(DISPLAY_V1[6]),
        .I4(sel0[0]),
        .I5(DISPLAY_V1[2]),
        .O(\out7_OBUF[6]_inst_i_9_n_0 ));
endmodule

module SAD1_STAGE_C
   (oALUResult_reg_r,
    oRegWriteCtrl_reg,
    oRegWriteCtrl_reg_0,
    oRegWriteCtrl_reg_1,
    oRegWriteCtrl_reg_2,
    oRegWriteCtrl_reg_3,
    oRegWriteCtrl_reg_4,
    oRegWriteCtrl_reg_5,
    oRegWriteCtrl_reg_6,
    oRegWriteCtrl_reg_7,
    oRegWriteCtrl_reg_8,
    oRegWriteCtrl_reg_9,
    oRegWriteCtrl_reg_10,
    oRegWriteCtrl_reg_11,
    oRegWriteCtrl_reg_12,
    oRegWriteCtrl_reg_13,
    oRegWriteCtrl_reg_14,
    oSAD2RegWrite,
    oSAD2rd,
    Reset_IBUF,
    oALUResult_reg_r_0,
    Clk_IBUF_BUFG,
    wALUResult,
    RegWriteCtrl,
    RegDstResult);
  output oALUResult_reg_r;
  output oRegWriteCtrl_reg;
  output oRegWriteCtrl_reg_0;
  output oRegWriteCtrl_reg_1;
  output oRegWriteCtrl_reg_2;
  output oRegWriteCtrl_reg_3;
  output oRegWriteCtrl_reg_4;
  output oRegWriteCtrl_reg_5;
  output oRegWriteCtrl_reg_6;
  output oRegWriteCtrl_reg_7;
  output oRegWriteCtrl_reg_8;
  output oRegWriteCtrl_reg_9;
  output oRegWriteCtrl_reg_10;
  output oRegWriteCtrl_reg_11;
  output oRegWriteCtrl_reg_12;
  output oRegWriteCtrl_reg_13;
  output oRegWriteCtrl_reg_14;
  output oSAD2RegWrite;
  output [0:0]oSAD2rd;
  input Reset_IBUF;
  input oALUResult_reg_r_0;
  input Clk_IBUF_BUFG;
  input [15:0]wALUResult;
  input RegWriteCtrl;
  input [0:0]RegDstResult;

  wire Clk_IBUF_BUFG;
  wire [0:0]RegDstResult;
  wire RegWriteCtrl;
  wire Reset_IBUF;
  wire oALUResult_reg_r;
  wire oALUResult_reg_r_0;
  wire oRegWriteCtrl_reg;
  wire oRegWriteCtrl_reg_0;
  wire oRegWriteCtrl_reg_1;
  wire oRegWriteCtrl_reg_10;
  wire oRegWriteCtrl_reg_11;
  wire oRegWriteCtrl_reg_12;
  wire oRegWriteCtrl_reg_13;
  wire oRegWriteCtrl_reg_14;
  wire oRegWriteCtrl_reg_2;
  wire oRegWriteCtrl_reg_3;
  wire oRegWriteCtrl_reg_4;
  wire oRegWriteCtrl_reg_5;
  wire oRegWriteCtrl_reg_6;
  wire oRegWriteCtrl_reg_7;
  wire oRegWriteCtrl_reg_8;
  wire oRegWriteCtrl_reg_9;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [15:0]wALUResult;

  REG_SAD1_SAD2_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .RegDstResult(RegDstResult),
        .RegWriteCtrl(RegWriteCtrl),
        .Reset_IBUF(Reset_IBUF),
        .oALUResult_reg_r_0(oALUResult_reg_r),
        .oALUResult_reg_r_1(oALUResult_reg_r_0),
        .oRegWriteCtrl_reg_0(oRegWriteCtrl_reg),
        .oRegWriteCtrl_reg_1(oRegWriteCtrl_reg_0),
        .oRegWriteCtrl_reg_10(oRegWriteCtrl_reg_9),
        .oRegWriteCtrl_reg_11(oRegWriteCtrl_reg_10),
        .oRegWriteCtrl_reg_12(oRegWriteCtrl_reg_11),
        .oRegWriteCtrl_reg_13(oRegWriteCtrl_reg_12),
        .oRegWriteCtrl_reg_14(oRegWriteCtrl_reg_13),
        .oRegWriteCtrl_reg_15(oRegWriteCtrl_reg_14),
        .oRegWriteCtrl_reg_2(oRegWriteCtrl_reg_1),
        .oRegWriteCtrl_reg_3(oRegWriteCtrl_reg_2),
        .oRegWriteCtrl_reg_4(oRegWriteCtrl_reg_3),
        .oRegWriteCtrl_reg_5(oRegWriteCtrl_reg_4),
        .oRegWriteCtrl_reg_6(oRegWriteCtrl_reg_5),
        .oRegWriteCtrl_reg_7(oRegWriteCtrl_reg_6),
        .oRegWriteCtrl_reg_8(oRegWriteCtrl_reg_7),
        .oRegWriteCtrl_reg_9(oRegWriteCtrl_reg_8),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .wALUResult(wALUResult));
endmodule

module SAD2_STAGE_C
   (\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r ,
    \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r ,
    woSAD3RegWrite,
    woSAD3rd,
    \oRegDstResult_reg[0] ,
    Reset_IBUF,
    oALUResult_reg_r,
    Clk_IBUF_BUFG,
    \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ,
    oSAD2RegWrite,
    oSAD2rd,
    woInstruction,
    RegWriteCtrl,
    RegDstResult);
  output \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r ;
  output woSAD3RegWrite;
  output [0:0]woSAD3rd;
  output \oRegDstResult_reg[0] ;
  input Reset_IBUF;
  input oALUResult_reg_r;
  input Clk_IBUF_BUFG;
  input \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  input oSAD2RegWrite;
  input [0:0]oSAD2rd;
  input [1:0]woInstruction;
  input RegWriteCtrl;
  input [0:0]RegDstResult;

  wire Clk_IBUF_BUFG;
  wire [0:0]RegDstResult;
  wire RegWriteCtrl;
  wire Reset_IBUF;
  wire \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r ;
  wire \oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ;
  wire oALUResult_reg_r;
  wire \oRegDstResult_reg[0] ;
  wire oSAD2RegWrite;
  wire [0:0]oSAD2rd;
  wire [1:0]woInstruction;
  wire woSAD3RegWrite;
  wire [0:0]woSAD3rd;

  REG_SAD2_SAD3_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .RegDstResult(RegDstResult),
        .RegWriteCtrl(RegWriteCtrl),
        .Reset_IBUF(Reset_IBUF),
        .\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[0]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[10]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[11]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[12]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[13]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[14]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[15]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[1]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[2]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[3]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[4]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[5]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[6]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[7]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[8]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 (\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r ),
        .\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_1 (\oALUResult_reg[9]_memsad_sad_sad2_register_oALUResult_reg_r_0 ),
        .oALUResult_reg_r_0(oALUResult_reg_r),
        .\oRegDstResult_reg[0]_0 (\oRegDstResult_reg[0] ),
        .oSAD2RegWrite(oSAD2RegWrite),
        .oSAD2rd(oSAD2rd),
        .woInstruction(woInstruction),
        .woSAD3RegWrite(woSAD3RegWrite),
        .woSAD3rd(woSAD3rd));
endmodule

module SAD3_STAGE_C
   (\oALUResult_reg[15] ,
    \oALUResult_reg[7] ,
    \oALUResult_reg[7]_0 ,
    \oRegDstResult_reg[0] ,
    oRegWriteCtrl_reg,
    Reset_IBUF,
    \oALUResult_reg[15]_0 ,
    Clk_IBUF_BUFG,
    \oALUResult_reg[14] ,
    \oALUResult_reg[13] ,
    \oALUResult_reg[12] ,
    \oALUResult_reg[11] ,
    \oALUResult_reg[10] ,
    \oALUResult_reg[9] ,
    \oALUResult_reg[8] ,
    \oALUResult_reg[7]_1 ,
    \oALUResult_reg[6] ,
    \oALUResult_reg[5] ,
    \oALUResult_reg[4] ,
    \oALUResult_reg[3] ,
    \oALUResult_reg[2] ,
    \oALUResult_reg[1] ,
    \oALUResult_reg[0] ,
    woSAD3RegWrite,
    woSAD3rd,
    \memory_reg[2][7] ,
    \memory_reg[3][7] );
  output [14:0]\oALUResult_reg[15] ;
  output \oALUResult_reg[7] ;
  output \oALUResult_reg[7]_0 ;
  output \oRegDstResult_reg[0] ;
  output oRegWriteCtrl_reg;
  input Reset_IBUF;
  input \oALUResult_reg[15]_0 ;
  input Clk_IBUF_BUFG;
  input \oALUResult_reg[14] ;
  input \oALUResult_reg[13] ;
  input \oALUResult_reg[12] ;
  input \oALUResult_reg[11] ;
  input \oALUResult_reg[10] ;
  input \oALUResult_reg[9] ;
  input \oALUResult_reg[8] ;
  input \oALUResult_reg[7]_1 ;
  input \oALUResult_reg[6] ;
  input \oALUResult_reg[5] ;
  input \oALUResult_reg[4] ;
  input \oALUResult_reg[3] ;
  input \oALUResult_reg[2] ;
  input \oALUResult_reg[1] ;
  input \oALUResult_reg[0] ;
  input woSAD3RegWrite;
  input [0:0]woSAD3rd;
  input [0:0]\memory_reg[2][7] ;
  input [0:0]\memory_reg[3][7] ;

  wire Clk_IBUF_BUFG;
  wire Reset_IBUF;
  wire [0:0]\memory_reg[2][7] ;
  wire [0:0]\memory_reg[3][7] ;
  wire \oALUResult_reg[0] ;
  wire \oALUResult_reg[10] ;
  wire \oALUResult_reg[11] ;
  wire \oALUResult_reg[12] ;
  wire \oALUResult_reg[13] ;
  wire \oALUResult_reg[14] ;
  wire [14:0]\oALUResult_reg[15] ;
  wire \oALUResult_reg[15]_0 ;
  wire \oALUResult_reg[1] ;
  wire \oALUResult_reg[2] ;
  wire \oALUResult_reg[3] ;
  wire \oALUResult_reg[4] ;
  wire \oALUResult_reg[5] ;
  wire \oALUResult_reg[6] ;
  wire \oALUResult_reg[7] ;
  wire \oALUResult_reg[7]_0 ;
  wire \oALUResult_reg[7]_1 ;
  wire \oALUResult_reg[8] ;
  wire \oALUResult_reg[9] ;
  wire \oRegDstResult_reg[0] ;
  wire oRegWriteCtrl_reg;
  wire woSAD3RegWrite;
  wire [0:0]woSAD3rd;

  REG_SAD3_WB_C register
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .\memory_reg[2][7] (\memory_reg[2][7] ),
        .\memory_reg[3][7] (\memory_reg[3][7] ),
        .\oALUResult_reg[0]_0 (\oALUResult_reg[0] ),
        .\oALUResult_reg[10]_0 (\oALUResult_reg[10] ),
        .\oALUResult_reg[11]_0 (\oALUResult_reg[11] ),
        .\oALUResult_reg[12]_0 (\oALUResult_reg[12] ),
        .\oALUResult_reg[13]_0 (\oALUResult_reg[13] ),
        .\oALUResult_reg[14]_0 (\oALUResult_reg[14] ),
        .\oALUResult_reg[15]_0 (\oALUResult_reg[15] ),
        .\oALUResult_reg[15]_1 (\oALUResult_reg[15]_0 ),
        .\oALUResult_reg[1]_0 (\oALUResult_reg[1] ),
        .\oALUResult_reg[2]_0 (\oALUResult_reg[2] ),
        .\oALUResult_reg[3]_0 (\oALUResult_reg[3] ),
        .\oALUResult_reg[4]_0 (\oALUResult_reg[4] ),
        .\oALUResult_reg[5]_0 (\oALUResult_reg[5] ),
        .\oALUResult_reg[6]_0 (\oALUResult_reg[6] ),
        .\oALUResult_reg[7]_0 (\oALUResult_reg[7] ),
        .\oALUResult_reg[7]_1 (\oALUResult_reg[7]_0 ),
        .\oALUResult_reg[7]_2 (\oALUResult_reg[7]_1 ),
        .\oALUResult_reg[8]_0 (\oALUResult_reg[8] ),
        .\oALUResult_reg[9]_0 (\oALUResult_reg[9] ),
        .\oRegDstResult_reg[0]_0 (\oRegDstResult_reg[0] ),
        .oRegWriteCtrl_reg_0(oRegWriteCtrl_reg),
        .woSAD3RegWrite(woSAD3RegWrite),
        .woSAD3rd(woSAD3rd));
endmodule

module Two4DigitDisplay
   (sel0,
    en_out_OBUF,
    Clk_IBUF_BUFG);
  output [2:0]sel0;
  output [7:0]en_out_OBUF;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [7:0]en_out_OBUF;
  wire [2:0]sel0;
  wire [2:0]\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({sel0,\cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \en_out_OBUF[0]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(en_out_OBUF[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \en_out_OBUF[1]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(en_out_OBUF[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \en_out_OBUF[2]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(en_out_OBUF[2]));
  LUT3 #(
    .INIT(8'hF7)) 
    \en_out_OBUF[3]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(en_out_OBUF[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \en_out_OBUF[4]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(en_out_OBUF[4]));
  LUT3 #(
    .INIT(8'hF7)) 
    \en_out_OBUF[5]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(en_out_OBUF[5]));
  LUT3 #(
    .INIT(8'hF7)) 
    \en_out_OBUF[6]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(en_out_OBUF[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \en_out_OBUF[7]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(en_out_OBUF[7]));
endmodule

(* ECO_CHECKSUM = "24fb42a0" *) 
(* NotValidForBitStream *)
module competition_source
   (Clk,
    Reset,
    out7,
    en_out);
  input Clk;
  input Reset;
  output [6:0]out7;
  output [7:0]en_out;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [7:7]DISPLAY_V0;
  wire [7:7]DISPLAY_V1;
  wire Reset;
  wire Reset_IBUF;
  wire [7:0]en_out;
  wire [7:0]en_out_OBUF;
  wire [15:0]\exstage/wALUResult ;
  wire [17:16]\ifid/woInstruction ;
  wire ifidex_n_4;
  wire memsad_n_15;
  wire memsad_n_16;
  wire memsad_n_17;
  wire memsad_n_18;
  wire memsad_n_19;
  wire [15:0]oALUResult;
  wire [6:0]out7;
  wire [6:0]out7_OBUF;
  wire [2:0]sel0;
  wire [0:0]woRegDstResult;
  wire woRegWriteCtrl;
  wire woSAD2RegWrite;
  wire [0:0]woSAD2rd;

  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  Two4DigitDisplay Display
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .en_out_OBUF(en_out_OBUF),
        .sel0(sel0));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  OBUF \en_out_OBUF[0]_inst 
       (.I(en_out_OBUF[0]),
        .O(en_out[0]));
  OBUF \en_out_OBUF[1]_inst 
       (.I(en_out_OBUF[1]),
        .O(en_out[1]));
  OBUF \en_out_OBUF[2]_inst 
       (.I(en_out_OBUF[2]),
        .O(en_out[2]));
  OBUF \en_out_OBUF[3]_inst 
       (.I(en_out_OBUF[3]),
        .O(en_out[3]));
  OBUF \en_out_OBUF[4]_inst 
       (.I(en_out_OBUF[4]),
        .O(en_out[4]));
  OBUF \en_out_OBUF[5]_inst 
       (.I(en_out_OBUF[5]),
        .O(en_out[5]));
  OBUF \en_out_OBUF[6]_inst 
       (.I(en_out_OBUF[6]),
        .O(en_out[6]));
  OBUF \en_out_OBUF[7]_inst 
       (.I(en_out_OBUF[7]),
        .O(en_out[7]));
  IF_ID_EX_COMBO_C ifidex
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .\memory_reg[2][0] (memsad_n_18),
        .\memory_reg[2][7] (DISPLAY_V0),
        .\memory_reg[2][7]_0 (memsad_n_15),
        .\memory_reg[3][0] (memsad_n_19),
        .\memory_reg[3][7] (DISPLAY_V1),
        .\memory_reg[3][7]_0 (memsad_n_16),
        .oALUResult({oALUResult[15:8],oALUResult[6:0]}),
        .oALUResult_reg_r(ifidex_n_4),
        .\oPCResult_reg[11] (memsad_n_17),
        .oRegDstResult(woRegDstResult),
        .oRegWriteCtrl(woRegWriteCtrl),
        .oSAD2RegWrite(woSAD2RegWrite),
        .oSAD2rd(woSAD2rd),
        .out7_OBUF(out7_OBUF),
        .sel0(sel0),
        .wALUResult(\exstage/wALUResult ),
        .woInstruction(\ifid/woInstruction ));
  MEM_MEGASAD_COMBO memsad
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Reset_IBUF(Reset_IBUF),
        .\memory_reg[2][7] (DISPLAY_V0),
        .\memory_reg[3][7] (DISPLAY_V1),
        .\oALUResult_reg[15] ({oALUResult[15:8],oALUResult[6:0]}),
        .\oALUResult_reg[7] (memsad_n_15),
        .\oALUResult_reg[7]_0 (memsad_n_16),
        .oALUResult_reg_r(ifidex_n_4),
        .oMEMRegWrite(woRegWriteCtrl),
        .oMEMrd(woRegDstResult),
        .\oRegDstResult_reg[0] (memsad_n_17),
        .\oRegDstResult_reg[0]_0 (memsad_n_18),
        .oRegWriteCtrl_reg(memsad_n_19),
        .oSAD2RegWrite(woSAD2RegWrite),
        .oSAD2rd(woSAD2rd),
        .wALUResult(\exstage/wALUResult ),
        .woInstruction(\ifid/woInstruction ));
  OBUF \out7_OBUF[0]_inst 
       (.I(out7_OBUF[0]),
        .O(out7[0]));
  OBUF \out7_OBUF[1]_inst 
       (.I(out7_OBUF[1]),
        .O(out7[1]));
  OBUF \out7_OBUF[2]_inst 
       (.I(out7_OBUF[2]),
        .O(out7[2]));
  OBUF \out7_OBUF[3]_inst 
       (.I(out7_OBUF[3]),
        .O(out7[3]));
  OBUF \out7_OBUF[4]_inst 
       (.I(out7_OBUF[4]),
        .O(out7[4]));
  OBUF \out7_OBUF[5]_inst 
       (.I(out7_OBUF[5]),
        .O(out7[5]));
  OBUF \out7_OBUF[6]_inst 
       (.I(out7_OBUF[6]),
        .O(out7[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
