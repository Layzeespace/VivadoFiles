// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Sep  8 08:53:06 2021
// Host        : DESKTOP-B5RP88R running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/nbut9/VivadoFiles/Lab1_BertButEt/Lab1_BertButEt.sim/sim_1/impl/func/xsim/ProgramCounter_tb_func_impl.v
// Design      : lab1source
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClkDiv
   (I1,
    SR,
    Clk_IBUF_BUFG);
  output I1;
  input [0:0]SR;
  input Clk_IBUF_BUFG;

  wire ClkOut_i_1_n_0;
  wire Clk_IBUF_BUFG;
  wire [25:0]DivCnt;
  wire DivCnt0_carry__0_n_0;
  wire DivCnt0_carry__1_n_0;
  wire DivCnt0_carry__2_n_0;
  wire DivCnt0_carry__3_n_0;
  wire DivCnt0_carry__4_n_0;
  wire DivCnt0_carry_n_0;
  wire \DivCnt[25]_i_2_n_0 ;
  wire \DivCnt[25]_i_3_n_0 ;
  wire \DivCnt[25]_i_4_n_0 ;
  wire \DivCnt[25]_i_5_n_0 ;
  wire \DivCnt[25]_i_6_n_0 ;
  wire \DivCnt[25]_i_7_n_0 ;
  wire \DivCnt[25]_i_8_n_0 ;
  wire [25:0]DivCnt_0;
  wire I1;
  wire [0:0]SR;
  wire [25:1]data0;
  wire [2:0]NLW_DivCnt0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_DivCnt0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_DivCnt0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_DivCnt0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_DivCnt0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_DivCnt0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_DivCnt0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_DivCnt0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    ClkOut_i_1
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(I1),
        .O(ClkOut_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ClkOut_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ClkOut_i_1_n_0),
        .Q(I1),
        .R(SR));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 DivCnt0_carry
       (.CI(1'b0),
        .CO({DivCnt0_carry_n_0,NLW_DivCnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(DivCnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(DivCnt[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 DivCnt0_carry__0
       (.CI(DivCnt0_carry_n_0),
        .CO({DivCnt0_carry__0_n_0,NLW_DivCnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(DivCnt[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 DivCnt0_carry__1
       (.CI(DivCnt0_carry__0_n_0),
        .CO({DivCnt0_carry__1_n_0,NLW_DivCnt0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(DivCnt[12:9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 DivCnt0_carry__2
       (.CI(DivCnt0_carry__1_n_0),
        .CO({DivCnt0_carry__2_n_0,NLW_DivCnt0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(DivCnt[16:13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 DivCnt0_carry__3
       (.CI(DivCnt0_carry__2_n_0),
        .CO({DivCnt0_carry__3_n_0,NLW_DivCnt0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(DivCnt[20:17]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 DivCnt0_carry__4
       (.CI(DivCnt0_carry__3_n_0),
        .CO({DivCnt0_carry__4_n_0,NLW_DivCnt0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(DivCnt[24:21]));
  CARRY4 DivCnt0_carry__5
       (.CI(DivCnt0_carry__4_n_0),
        .CO(NLW_DivCnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_DivCnt0_carry__5_O_UNCONNECTED[3:1],data0[25]}),
        .S({1'b0,1'b0,1'b0,DivCnt[25]}));
  LUT2 #(
    .INIT(4'h2)) 
    \DivCnt[0]_i_1 
       (.I0(\DivCnt[25]_i_2_n_0 ),
        .I1(DivCnt[0]),
        .O(DivCnt_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[10]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[10]),
        .O(DivCnt_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[11]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[11]),
        .O(DivCnt_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[12]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[12]),
        .O(DivCnt_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[13]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[13]),
        .O(DivCnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[14]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[14]),
        .O(DivCnt_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[15]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[15]),
        .O(DivCnt_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[16]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[16]),
        .O(DivCnt_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[17]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[17]),
        .O(DivCnt_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[18]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[18]),
        .O(DivCnt_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[19]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[19]),
        .O(DivCnt_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[1]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[1]),
        .O(DivCnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[20]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[20]),
        .O(DivCnt_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[21]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[21]),
        .O(DivCnt_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[22]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[22]),
        .O(DivCnt_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[23]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[23]),
        .O(DivCnt_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[24]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[24]),
        .O(DivCnt_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[25]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[25]),
        .O(DivCnt_0[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DivCnt[25]_i_2 
       (.I0(\DivCnt[25]_i_3_n_0 ),
        .I1(\DivCnt[25]_i_4_n_0 ),
        .I2(\DivCnt[25]_i_5_n_0 ),
        .I3(\DivCnt[25]_i_6_n_0 ),
        .I4(\DivCnt[25]_i_7_n_0 ),
        .I5(\DivCnt[25]_i_8_n_0 ),
        .O(\DivCnt[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \DivCnt[25]_i_3 
       (.I0(DivCnt[17]),
        .I1(DivCnt[16]),
        .I2(DivCnt[19]),
        .I3(DivCnt[18]),
        .O(\DivCnt[25]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \DivCnt[25]_i_4 
       (.I0(DivCnt[21]),
        .I1(DivCnt[20]),
        .I2(DivCnt[23]),
        .I3(DivCnt[22]),
        .O(\DivCnt[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DivCnt[25]_i_5 
       (.I0(DivCnt[9]),
        .I1(DivCnt[8]),
        .I2(DivCnt[11]),
        .I3(DivCnt[10]),
        .O(\DivCnt[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \DivCnt[25]_i_6 
       (.I0(DivCnt[13]),
        .I1(DivCnt[12]),
        .I2(DivCnt[15]),
        .I3(DivCnt[14]),
        .O(\DivCnt[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \DivCnt[25]_i_7 
       (.I0(DivCnt[5]),
        .I1(DivCnt[4]),
        .I2(DivCnt[7]),
        .I3(DivCnt[6]),
        .O(\DivCnt[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \DivCnt[25]_i_8 
       (.I0(DivCnt[1]),
        .I1(DivCnt[24]),
        .I2(DivCnt[25]),
        .I3(DivCnt[3]),
        .I4(DivCnt[2]),
        .O(\DivCnt[25]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[2]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[2]),
        .O(DivCnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[3]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[3]),
        .O(DivCnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[4]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[4]),
        .O(DivCnt_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[5]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[5]),
        .O(DivCnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[6]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[6]),
        .O(DivCnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[7]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[7]),
        .O(DivCnt_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[8]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[8]),
        .O(DivCnt_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \DivCnt[9]_i_1 
       (.I0(DivCnt[0]),
        .I1(\DivCnt[25]_i_2_n_0 ),
        .I2(data0[9]),
        .O(DivCnt_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[0]),
        .Q(DivCnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[10]),
        .Q(DivCnt[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[11]),
        .Q(DivCnt[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[12]),
        .Q(DivCnt[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[13]),
        .Q(DivCnt[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[14]),
        .Q(DivCnt[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[15]),
        .Q(DivCnt[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[16]),
        .Q(DivCnt[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[17]),
        .Q(DivCnt[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[18]),
        .Q(DivCnt[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[19]),
        .Q(DivCnt[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[1]),
        .Q(DivCnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[20]),
        .Q(DivCnt[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[21]),
        .Q(DivCnt[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[22]),
        .Q(DivCnt[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[23]),
        .Q(DivCnt[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[24]),
        .Q(DivCnt[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[25]),
        .Q(DivCnt[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[2]),
        .Q(DivCnt[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[3]),
        .Q(DivCnt[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[4]),
        .Q(DivCnt[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[5]),
        .Q(DivCnt[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[6]),
        .Q(DivCnt[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[7]),
        .Q(DivCnt[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[8]),
        .Q(DivCnt[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \DivCnt_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(DivCnt_0[9]),
        .Q(DivCnt[9]),
        .R(SR));
endmodule

module InstructionFetchUnit
   (out7_OBUF,
    I1,
    SR,
    sel0);
  output [6:0]out7_OBUF;
  input I1;
  input [0:0]SR;
  input [2:0]sel0;

  wire I1;
  wire [8:2]Instruction;
  wire Memory_n_4;
  wire Memory_n_5;
  wire Memory_n_6;
  wire Memory_n_7;
  wire [8:2]PCResult;
  wire [0:0]SR;
  wire [6:0]out7_OBUF;
  wire [2:0]sel0;

  ProgramCounter Counter
       (.I1(I1),
        .Instruction({Instruction[8],Instruction[5],Instruction[3:2]}),
        .PCResult(PCResult),
        .S(Memory_n_7),
        .SR(SR),
        .out7_OBUF(out7_OBUF),
        .\out7_OBUF[6]_inst_i_2_0 (Memory_n_6),
        .\out7_OBUF[6]_inst_i_3_0 (Memory_n_4),
        .\out7_OBUF[6]_inst_i_3_1 (Memory_n_5),
        .sel0(sel0));
  InstructionMemory Memory
       (.Instruction({Instruction[8],Instruction[5],Instruction[3:2]}),
        .PCResult(PCResult),
        .\PCResult_reg[2] (Memory_n_4),
        .\PCResult_reg[2]_0 (Memory_n_5),
        .\PCResult_reg[7] (Memory_n_6),
        .S(Memory_n_7));
endmodule

module InstructionMemory
   (Instruction,
    \PCResult_reg[2] ,
    \PCResult_reg[2]_0 ,
    \PCResult_reg[7] ,
    S,
    PCResult);
  output [3:0]Instruction;
  output \PCResult_reg[2] ;
  output \PCResult_reg[2]_0 ;
  output \PCResult_reg[7] ;
  output [0:0]S;
  input [6:0]PCResult;

  wire [3:0]Instruction;
  wire [6:0]PCResult;
  wire \PCResult_reg[2] ;
  wire \PCResult_reg[2]_0 ;
  wire \PCResult_reg[7] ;
  wire [0:0]S;

  LUT1 #(
    .INIT(2'h1)) 
    \i_/PCResult[2]_i_2 
       (.I0(PCResult[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888000)) 
    \i_/out7_OBUF[6]_inst_i_11 
       (.I0(PCResult[6]),
        .I1(PCResult[4]),
        .I2(PCResult[1]),
        .I3(PCResult[2]),
        .I4(PCResult[3]),
        .I5(PCResult[5]),
        .O(Instruction[3]));
  LUT4 #(
    .INIT(16'h96A6)) 
    \i_/out7_OBUF[6]_inst_i_15 
       (.I0(PCResult[3]),
        .I1(PCResult[2]),
        .I2(PCResult[1]),
        .I3(PCResult[0]),
        .O(Instruction[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888000)) 
    \i_/out7_OBUF[6]_inst_i_16 
       (.I0(PCResult[5]),
        .I1(PCResult[3]),
        .I2(PCResult[1]),
        .I3(PCResult[0]),
        .I4(PCResult[2]),
        .I5(PCResult[4]),
        .O(\PCResult_reg[7] ));
  LUT3 #(
    .INIT(8'h9A)) 
    \i_/out7_OBUF[6]_inst_i_18 
       (.I0(PCResult[2]),
        .I1(PCResult[0]),
        .I2(PCResult[1]),
        .O(Instruction[0]));
  LUT6 #(
    .INIT(64'h3030343C3C0C0C0C)) 
    \i_/out7_OBUF[6]_inst_i_19 
       (.I0(PCResult[0]),
        .I1(PCResult[5]),
        .I2(PCResult[4]),
        .I3(PCResult[1]),
        .I4(PCResult[2]),
        .I5(PCResult[3]),
        .O(\PCResult_reg[2] ));
  LUT6 #(
    .INIT(64'hCCCFCFCFF3B3F333)) 
    \i_/out7_OBUF[6]_inst_i_20 
       (.I0(PCResult[0]),
        .I1(PCResult[5]),
        .I2(PCResult[3]),
        .I3(PCResult[2]),
        .I4(PCResult[1]),
        .I5(PCResult[4]),
        .O(\PCResult_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h9A969A9696A6A6A6)) 
    \i_/out7_OBUF[6]_inst_i_21 
       (.I0(PCResult[5]),
        .I1(PCResult[4]),
        .I2(PCResult[3]),
        .I3(PCResult[1]),
        .I4(PCResult[0]),
        .I5(PCResult[2]),
        .O(Instruction[2]));
endmodule

module ProgramCounter
   (PCResult,
    out7_OBUF,
    I1,
    SR,
    sel0,
    Instruction,
    S,
    \out7_OBUF[6]_inst_i_2_0 ,
    \out7_OBUF[6]_inst_i_3_0 ,
    \out7_OBUF[6]_inst_i_3_1 );
  output [6:0]PCResult;
  output [6:0]out7_OBUF;
  input I1;
  input [0:0]SR;
  input [2:0]sel0;
  input [3:0]Instruction;
  input [0:0]S;
  input \out7_OBUF[6]_inst_i_2_0 ;
  input \out7_OBUF[6]_inst_i_3_0 ;
  input \out7_OBUF[6]_inst_i_3_1 ;

  wire [3:0]\Display/in4__26 ;
  wire I1;
  wire [3:0]Instruction;
  wire [6:0]PCResult;
  wire [15:9]PCResult__0;
  wire \PCResult_reg[10]_i_1_n_0 ;
  wire \PCResult_reg[10]_i_1_n_4 ;
  wire \PCResult_reg[10]_i_1_n_5 ;
  wire \PCResult_reg[10]_i_1_n_6 ;
  wire \PCResult_reg[10]_i_1_n_7 ;
  wire \PCResult_reg[14]_i_1_n_6 ;
  wire \PCResult_reg[14]_i_1_n_7 ;
  wire \PCResult_reg[2]_i_1_n_0 ;
  wire \PCResult_reg[2]_i_1_n_4 ;
  wire \PCResult_reg[2]_i_1_n_5 ;
  wire \PCResult_reg[2]_i_1_n_6 ;
  wire \PCResult_reg[2]_i_1_n_7 ;
  wire \PCResult_reg[6]_i_1_n_0 ;
  wire \PCResult_reg[6]_i_1_n_4 ;
  wire \PCResult_reg[6]_i_1_n_5 ;
  wire \PCResult_reg[6]_i_1_n_6 ;
  wire \PCResult_reg[6]_i_1_n_7 ;
  wire [0:0]S;
  wire [0:0]SR;
  wire [6:0]out7_OBUF;
  wire \out7_OBUF[6]_inst_i_10_n_0 ;
  wire \out7_OBUF[6]_inst_i_12_n_0 ;
  wire \out7_OBUF[6]_inst_i_13_n_0 ;
  wire \out7_OBUF[6]_inst_i_14_n_0 ;
  wire \out7_OBUF[6]_inst_i_17_n_0 ;
  wire \out7_OBUF[6]_inst_i_2_0 ;
  wire \out7_OBUF[6]_inst_i_3_0 ;
  wire \out7_OBUF[6]_inst_i_3_1 ;
  wire \out7_OBUF[6]_inst_i_6_n_0 ;
  wire \out7_OBUF[6]_inst_i_7_n_0 ;
  wire \out7_OBUF[6]_inst_i_8_n_0 ;
  wire \out7_OBUF[6]_inst_i_9_n_0 ;
  wire [2:0]sel0;
  wire [2:0]\NLW_PCResult_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_PCResult_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_PCResult_reg[14]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_PCResult_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PCResult_reg[6]_i_1_CO_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[10] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[10]_i_1_n_7 ),
        .Q(PCResult__0[10]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PCResult_reg[10]_i_1 
       (.CI(\PCResult_reg[6]_i_1_n_0 ),
        .CO({\PCResult_reg[10]_i_1_n_0 ,\NLW_PCResult_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PCResult_reg[10]_i_1_n_4 ,\PCResult_reg[10]_i_1_n_5 ,\PCResult_reg[10]_i_1_n_6 ,\PCResult_reg[10]_i_1_n_7 }),
        .S(PCResult__0[13:10]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[11] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[10]_i_1_n_6 ),
        .Q(PCResult__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[12] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[10]_i_1_n_5 ),
        .Q(PCResult__0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[13] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[10]_i_1_n_4 ),
        .Q(PCResult__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[14] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[14]_i_1_n_7 ),
        .Q(PCResult__0[14]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PCResult_reg[14]_i_1 
       (.CI(\PCResult_reg[10]_i_1_n_0 ),
        .CO(\NLW_PCResult_reg[14]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PCResult_reg[14]_i_1_O_UNCONNECTED [3:2],\PCResult_reg[14]_i_1_n_6 ,\PCResult_reg[14]_i_1_n_7 }),
        .S({1'b0,1'b0,PCResult__0[15:14]}));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[15] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[14]_i_1_n_6 ),
        .Q(PCResult__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[2]_i_1_n_7 ),
        .Q(PCResult[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PCResult_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\PCResult_reg[2]_i_1_n_0 ,\NLW_PCResult_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\PCResult_reg[2]_i_1_n_4 ,\PCResult_reg[2]_i_1_n_5 ,\PCResult_reg[2]_i_1_n_6 ,\PCResult_reg[2]_i_1_n_7 }),
        .S({PCResult[3:1],S}));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[2]_i_1_n_6 ),
        .Q(PCResult[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[4] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[2]_i_1_n_5 ),
        .Q(PCResult[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[5] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[2]_i_1_n_4 ),
        .Q(PCResult[3]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[6] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[6]_i_1_n_7 ),
        .Q(PCResult[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PCResult_reg[6]_i_1 
       (.CI(\PCResult_reg[2]_i_1_n_0 ),
        .CO({\PCResult_reg[6]_i_1_n_0 ,\NLW_PCResult_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PCResult_reg[6]_i_1_n_4 ,\PCResult_reg[6]_i_1_n_5 ,\PCResult_reg[6]_i_1_n_6 ,\PCResult_reg[6]_i_1_n_7 }),
        .S({PCResult__0[9],PCResult[6:4]}));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[7] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[6]_i_1_n_6 ),
        .Q(PCResult[5]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[8] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[6]_i_1_n_5 ),
        .Q(PCResult[6]));
  FDCE #(
    .INIT(1'b0)) 
    \PCResult_reg[9] 
       (.C(I1),
        .CE(1'b1),
        .CLR(SR),
        .D(\PCResult_reg[6]_i_1_n_4 ),
        .Q(PCResult__0[9]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out7_OBUF[0]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [0]),
        .I2(\Display/in4__26 [2]),
        .I3(\Display/in4__26 [1]),
        .O(out7_OBUF[0]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out7_OBUF[1]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [2]),
        .I2(\Display/in4__26 [0]),
        .I3(\Display/in4__26 [1]),
        .O(out7_OBUF[1]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out7_OBUF[2]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [1]),
        .I2(\Display/in4__26 [2]),
        .I3(\Display/in4__26 [0]),
        .O(out7_OBUF[2]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out7_OBUF[3]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [2]),
        .I2(\Display/in4__26 [0]),
        .I3(\Display/in4__26 [1]),
        .O(out7_OBUF[3]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out7_OBUF[4]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [0]),
        .I2(\Display/in4__26 [1]),
        .I3(\Display/in4__26 [2]),
        .O(out7_OBUF[4]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \out7_OBUF[5]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [2]),
        .I2(\Display/in4__26 [0]),
        .I3(\Display/in4__26 [1]),
        .O(out7_OBUF[5]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out7_OBUF[6]_inst_i_1 
       (.I0(\Display/in4__26 [3]),
        .I1(\Display/in4__26 [2]),
        .I2(\Display/in4__26 [0]),
        .I3(\Display/in4__26 [1]),
        .O(out7_OBUF[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \out7_OBUF[6]_inst_i_10 
       (.I0(PCResult__0[12]),
        .I1(PCResult[6]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(PCResult[2]),
        .O(\out7_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9AA6FFFF9A660000)) 
    \out7_OBUF[6]_inst_i_12 
       (.I0(PCResult[4]),
        .I1(PCResult[3]),
        .I2(PCResult[1]),
        .I3(PCResult[2]),
        .I4(sel0[0]),
        .I5(PCResult[0]),
        .O(\out7_OBUF[6]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000F606)) 
    \out7_OBUF[6]_inst_i_13 
       (.I0(PCResult[0]),
        .I1(PCResult[1]),
        .I2(sel0[0]),
        .I3(Instruction[2]),
        .I4(sel0[1]),
        .O(\out7_OBUF[6]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \out7_OBUF[6]_inst_i_14 
       (.I0(PCResult__0[13]),
        .I1(PCResult__0[9]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(PCResult[3]),
        .O(\out7_OBUF[6]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000557F)) 
    \out7_OBUF[6]_inst_i_17 
       (.I0(PCResult[4]),
        .I1(PCResult[1]),
        .I2(PCResult[2]),
        .I3(PCResult[3]),
        .I4(PCResult[5]),
        .O(\out7_OBUF[6]_inst_i_17_n_0 ));
  MUXF7 \out7_OBUF[6]_inst_i_2 
       (.I0(\out7_OBUF[6]_inst_i_6_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_7_n_0 ),
        .O(\Display/in4__26 [3]),
        .S(sel0[2]));
  MUXF7 \out7_OBUF[6]_inst_i_3 
       (.I0(\out7_OBUF[6]_inst_i_8_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_9_n_0 ),
        .O(\Display/in4__26 [2]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \out7_OBUF[6]_inst_i_4 
       (.I0(\out7_OBUF[6]_inst_i_10_n_0 ),
        .I1(sel0[2]),
        .I2(Instruction[3]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\out7_OBUF[6]_inst_i_12_n_0 ),
        .O(\Display/in4__26 [0]));
  MUXF7 \out7_OBUF[6]_inst_i_5 
       (.I0(\out7_OBUF[6]_inst_i_13_n_0 ),
        .I1(\out7_OBUF[6]_inst_i_14_n_0 ),
        .O(\Display/in4__26 [1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out7_OBUF[6]_inst_i_6 
       (.I0(Instruction[1]),
        .I1(sel0[0]),
        .I2(\out7_OBUF[6]_inst_i_2_0 ),
        .I3(PCResult[6]),
        .I4(\out7_OBUF[6]_inst_i_17_n_0 ),
        .I5(sel0[1]),
        .O(\out7_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_7 
       (.I0(PCResult__0[15]),
        .I1(PCResult__0[11]),
        .I2(sel0[1]),
        .I3(PCResult[5]),
        .I4(sel0[0]),
        .I5(PCResult[1]),
        .O(\out7_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out7_OBUF[6]_inst_i_8 
       (.I0(Instruction[0]),
        .I1(sel0[0]),
        .I2(\out7_OBUF[6]_inst_i_3_0 ),
        .I3(PCResult[6]),
        .I4(\out7_OBUF[6]_inst_i_3_1 ),
        .I5(sel0[1]),
        .O(\out7_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out7_OBUF[6]_inst_i_9 
       (.I0(PCResult__0[14]),
        .I1(PCResult__0[10]),
        .I2(sel0[1]),
        .I3(PCResult[4]),
        .I4(sel0[0]),
        .I5(PCResult[0]),
        .O(\out7_OBUF[6]_inst_i_9_n_0 ));
endmodule

module Two4DigitDisplay
   (sel0,
    en_out_OBUF,
    Clk);
  output [2:0]sel0;
  output [7:0]en_out_OBUF;
  input Clk;

  wire Clk;
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
       (.C(Clk),
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
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(Clk),
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
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(Clk),
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
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(Clk),
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
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(Clk),
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
       (.C(Clk),
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

(* ECO_CHECKSUM = "c67a09c9" *) 
(* NotValidForBitStream *)
module lab1source
   (out7,
    en_out,
    Reset,
    Clk);
  output [6:0]out7;
  output [7:0]en_out;
  input Reset;
  input Clk;

  wire CD_n_0;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Reset;
  wire Reset_IBUF;
  wire [7:0]en_out;
  wire [7:0]en_out_OBUF;
  wire [6:0]out7;
  wire [6:0]out7_OBUF;
  wire [2:0]sel0;

  ClkDiv CD
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .I1(CD_n_0),
        .SR(Reset_IBUF));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  Two4DigitDisplay Display
       (.Clk(Clk_IBUF_BUFG),
        .en_out_OBUF(en_out_OBUF),
        .sel0(sel0));
  InstructionFetchUnit IFU
       (.I1(CD_n_0),
        .SR(Reset_IBUF),
        .out7_OBUF(out7_OBUF),
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
