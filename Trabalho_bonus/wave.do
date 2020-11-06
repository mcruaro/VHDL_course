onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/my_senha/clock
add wave -noupdate /testbench/my_senha/reset
add wave -noupdate /testbench/my_senha/FSM
add wave -noupdate /testbench/my_senha/botao_on
add wave -noupdate /testbench/my_senha/print
add wave -noupdate -radix unsigned /testbench/my_senha/valor
add wave -noupdate /testbench/my_senha/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {300 ns} 0}
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
WaveRestoreZoom {257 ns} {724 ns}
