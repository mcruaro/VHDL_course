vlib work
vmap work work

vcom -work work testbench_write.vhd

#Simula o arquivo
vsim -novopt -t 1ns +notimingchecks work.testbench_write

do wave.do

run 300 ns