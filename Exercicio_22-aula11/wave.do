onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/seq_bits/clock
add wave -noupdate /testbench/seq_bits/reset
add wave -noupdate /testbench/seq_bits/ena
add wave -noupdate -expand -group LOGICA /testbench/seq_bits/FSM
add wave -noupdate /testbench/seq_bits/light
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
WaveRestoreZoom {1132 ns} {1520 ns}
