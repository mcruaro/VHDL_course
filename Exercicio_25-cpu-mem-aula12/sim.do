vlib work
vmap work work

vcom -work work ram.vhd
vcom -work work cpu.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench

do wave.do

run 300 ns