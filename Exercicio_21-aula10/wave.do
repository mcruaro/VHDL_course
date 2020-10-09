onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/seq_bits/T
add wave -noupdate /testbench/seq_bits/clock
add wave -noupdate /testbench/seq_bits/reset
add wave -noupdate -expand -group LOGICA -color White /testbench/seq_bits/A
add wave -noupdate -expand -group LOGICA /testbench/seq_bits/FSM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1151 ns} 0}
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
WaveRestoreZoom {958 ns} {1346 ns}
