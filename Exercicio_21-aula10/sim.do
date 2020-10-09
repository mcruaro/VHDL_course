vlib work
vmap work work

vcom -work work exe_21.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench

do wave.do

run 1500 ns