@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Sep 08 11:32:41 -0700 2021
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim lab1source_tb_func_impl -key {Post-Implementation:sim_1:Functional:lab1source_tb} -tclbatch lab1source_tb.tcl -view C:/Users/nbut9/VivadoFiles/Lab1_BertButEt/InstructionFetchUnit_tb_behav.wcfg -log simulate.log"
call xsim  lab1source_tb_func_impl -key {Post-Implementation:sim_1:Functional:lab1source_tb} -tclbatch lab1source_tb.tcl -view C:/Users/nbut9/VivadoFiles/Lab1_BertButEt/InstructionFetchUnit_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
