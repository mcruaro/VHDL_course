onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clock
add wave -noupdate /testbench/reset
add wave -noupdate -childformat {{/testbench/d_in(3) -radix binary} {/testbench/d_in(2) -radix binary} {/testbench/d_in(1) -radix binary} {/testbench/d_in(0) -radix binary}} -expand -subitemconfig {/testbench/d_in(3) {-radix binary} /testbench/d_in(2) {-radix binary} /testbench/d_in(1) {-radix binary} /testbench/d_in(0) {-radix binary}} /testbench/d_in
add wave -noupdate /testbench/FSM
add wave -noupdate /testbench/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {129 ns} 0}
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
WaveRestoreZoom {79 ns} {177 ns}
