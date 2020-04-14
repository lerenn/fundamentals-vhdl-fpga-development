transcript off
vcom Shift_Register.vhdl
vcom Shift_Register_Testbench.vhdl

vsim test_shift_reg
add wave sim:/test_shift_reg/dev_to_test/*

run 350 ns