# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element ClkInt_reg was removed.  [C:/Users/nbut9/Downloads/Resources/Resources/4-ClockDivider/ClkDiv.v:14]}}  -suppress 
set_msg_config  -id {Synth 8-567}  -string {{WARNING: [Synth 8-567] referenced signal 'firstdigitA' should be on the sensitivity list [C:/Users/nbut9/Downloads/Resources/Resources/5-Two4DigitDisplay/Two4DigitDisplay.v:106]}}  -suppress 
set_msg_config  -id {Synth 8-567}  -suppress 
set_msg_config  -id {Synth 8-311}  -suppress 
set_msg_config  -id {Synth 8-689}  -suppress 
set_msg_config  -id {Synth 8-3331}  -suppress 
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.cache/wt [current_project]
set_property parent.project_path C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem {
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/instruction_memory.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/data_memory.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/window_memory.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_2.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_4.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_3.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_7.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_5.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_1.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_0.mem
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/big_memory_6.mem
}
read_verilog -library xil_defaultlib {
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/ALU32Bit_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/ANDgate.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/Adder32Bit.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/Resources/Resources/4-ClockDivider/ClkDiv.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/Controller.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/DatapathComponents/DataMemory/DataMemory.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/EX_MEM_COMBO_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/EX_MEM_REG_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/EX_STAGE_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/HazardUnit.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/HiLoALU.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/ID_EX_REG_V3.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/ID_STAGE_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/IF_ID_COMBO_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/IF_ID_EX_MEM_COMBO_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/IF_ID_REG_V3.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/IF_STAGE_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/Resources/Resources/1-InstructionFetchUnit/InstructionMemory.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/MEM_STAGE_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/MEM_WB_REG_V2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/DatapathComponents/Mux32Bit2To1/Mux32Bit2To1.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/Mux32Bit4To1.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/Mux32Bit8To1.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/ORgate.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/Resources/Resources/1-InstructionFetchUnit/PCAdder.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/Resources/Resources/1-InstructionFetchUnit/ProgramCounter.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/DatapathComponents/RegisterFile/RegisterFile.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/Resources/Resources/5-Two4DigitDisplay/SevenSegment.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/ShiftLeft16.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/DatapathComponents/ShiftLeft2/ShiftLeft2.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/SignExtend16.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/SignExtend26.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/VivadoFiles/Lab4_BertButEt/Lab4_BertButEt.srcs/sources_1/new/SignExtend8.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/imports/nbut9/Downloads/Resources/Resources/5-Two4DigitDisplay/Two4DigitDisplay.v
  C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/sources_1/new/WB_STAGE_V2.v
  C:/Users/nbut9/VivadoFiles/Lab5_BertButEt/Lab5_BertButEt.srcs/sources_1/new/lab5_source.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/constrs_1/imports/5-Two4DigitDisplay/Two4DigitDisplay.xdc
set_property used_in_implementation false [get_files C:/Users/nbut9/VivadoFiles/Competition_BertButEt/Competition_BertButEt.srcs/constrs_1/imports/5-Two4DigitDisplay/Two4DigitDisplay.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top lab5_source -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef lab5_source.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file lab5_source_utilization_synth.rpt -pb lab5_source_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
