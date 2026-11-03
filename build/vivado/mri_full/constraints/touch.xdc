# Verified against vendor Navigator_7020 full-board system.xdc.
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports touch_i2c_scl_io]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports touch_i2c_sda_io]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {touch_gpio_tri_io[0]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {touch_gpio_tri_io[1]}]
