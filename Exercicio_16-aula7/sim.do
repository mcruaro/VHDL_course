vlib work
vmap work work

vcom -work work exe_16.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench

do wave.do

force -freeze sim:/testbench/first_clock/cinco 1 0
