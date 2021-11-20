vlib work
vmap work work

vcom -work work portao.vhd
vcom -work work testbench.vhd

#Simula o arquivo
vsim -t 1ns +notimingchecks work.testbench

do wave.do

run 650 ns