vlib work
vmap work work

vcom -work work fsm.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench

do wave.do