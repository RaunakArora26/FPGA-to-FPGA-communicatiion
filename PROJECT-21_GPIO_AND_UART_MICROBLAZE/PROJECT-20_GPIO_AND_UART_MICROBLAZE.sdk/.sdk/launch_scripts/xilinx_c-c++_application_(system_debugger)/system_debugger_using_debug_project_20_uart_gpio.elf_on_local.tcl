connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "RealDigital Boo 887222440570A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "RealDigital Boo 887222440570A"} -index 0
dow C:/Users/lenovo/PROJECT-20_GPIO_AND_UART_MICROBLAZE/PROJECT-20_GPIO_AND_UART_MICROBLAZE.sdk/PROJECT_20_UART_GPIO/Debug/PROJECT_20_UART_GPIO.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "RealDigital Boo 887222440570A"} -index 0
con
