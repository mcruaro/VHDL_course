vlib work
vmap work work

vcom -work work decodificador.vhd

vsim -novopt -t 1ns +notimingchecks work.decodificador

do wave.do

force -freeze sim:/decodificador/p0 0 0
force -freeze sim:/decodificador/p1 0 0
force -freeze sim:/decodificador/p2 0 0
force -freeze sim:/decodificador/p3 0 0