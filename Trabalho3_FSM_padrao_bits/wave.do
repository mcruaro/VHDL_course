onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/trab3/clock
add wave -noupdate /testbench/trab3/reset
add wave -noupdate -color Gold /testbench/trab3/my_bit
add wave -noupdate /testbench/trab3/FSM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {188 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 143
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
WaveRestoreZoom {99 ns} {214 ns}
