# 
# Synthesis run script generated by Vivado
# 

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
create_project -in_memory -part xc7s50csga324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.cache/wt [current_project]
set_property parent.project_path C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/Seven_segment.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/SlowClock.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/UART_RX_V_TWO/UART_RX_V_TWO.srcs/sources_1/new/UART_Rx.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/UART_RX_V_TWO/UART_RX_V_TWO.srcs/sources_1/new/UART_Tx.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/binarytoSevenSeg.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/decoder.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/fourXone_mux.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/top_base.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/twobitcounter.v
  C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/sources_1/imports/lenovo/Binary_to_BCD_sevensegment_to_counter/Binary_to_BCD_sevensegment_to_counter.srcs/sources_1/new/MainTopModule.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/constrs_1/new/UART.xdc
set_property used_in_implementation false [get_files C:/Users/lenovo/PROJECT-19_UART_RX_TX/PROJECT-19_UART_RX_TX.srcs/constrs_1/new/UART.xdc]


synth_design -top MainTopModule -part xc7s50csga324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef MainTopModule.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file MainTopModule_utilization_synth.rpt -pb MainTopModule_utilization_synth.pb"
