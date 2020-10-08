vlib work
vmap work work

vcom -work work standards.vhd
vcom -work work troca_bits_v2.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench

do wave.do

run 350 ns