set_property SRC_FILE_INFO {cfile:c:/Users/lenovo/PROJECT-20_GPIO_AND_UART_MICROBLAZE/PROJECT-20_GPIO_AND_UART_MICROBLAZE.srcs/sources_1/bd/GPIO_UART/ip/GPIO_UART_clk_wiz_0_0/GPIO_UART_clk_wiz_0_0.xdc rfile:../../../PROJECT-20_GPIO_AND_UART_MICROBLAZE.srcs/sources_1/bd/GPIO_UART/ip/GPIO_UART_clk_wiz_0_0/GPIO_UART_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
