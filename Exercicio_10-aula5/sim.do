vlib work
vmap work work

vcom -work work teclado.vhd

vsim -novopt -t 1ns +notimingchecks work.teclado

do wave.do

force -freeze sim:/teclado/a_en 1 0
force -freeze sim:/teclado/b_en 0 0
force -freeze sim:/teclado/c_en 0 0
force -freeze sim:/teclado/d_en 0 0

run 100ns
