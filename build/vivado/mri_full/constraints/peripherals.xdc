# Navigator 7020 vendor system.xdc: shared RTC IIC and active-high buzzer.
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports board_i2c_scl_io]
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS33} [get_ports board_i2c_sda_io]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports {touch_gpio_tri_io[2]}]
