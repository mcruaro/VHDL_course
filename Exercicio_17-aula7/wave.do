onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/first_clock/clock
add wave -noupdate /testbench/first_clock/reset
add wave -noupdate /testbench/first_clock/zero
add wave -noupdate /testbench/first_clock/um
add wave -noupdate /testbench/first_clock/dois
add wave -noupdate /testbench/first_clock/tres
add wave -noupdate /testbench/first_clock/quatro
add wave -noupdate /testbench/first_clock/cinco
add wave -noupdate /testbench/first_clock/seis
add wave -noupdate /testbench/first_clock/sete
add wave -noupdate /testbench/first_clock/oito
add wave -noupdate /testbench/first_clock/nove
add wave -noupdate -radix decimal -radixshowbase 0 /testbench/first_clock/display
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {105 ns}
