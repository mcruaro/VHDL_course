onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/first_clock/clock
add wave -noupdate /testbench/first_clock/reset
add wave -noupdate -radix unsigned -radixshowbase 0 /testbench/first_clock/tick_counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {115 ns} 0}
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
WaveRestoreZoom {87 ns} {161 ns}
