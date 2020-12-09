vlib work
vmap work work

vcom -work work recognizer.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench
