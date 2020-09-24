onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Testbench /testbench/clock
add wave -noupdate -expand -group Testbench /testbench/reset
add wave -noupdate -expand -group Testbench -radix binary -radixshowbase 0 /testbench/tb_in1
add wave -noupdate -expand -group Main -radix binary /testbench/first_clock/in1_high
add wave -noupdate -expand -group Main -radix binary -childformat {{/testbench/first_clock/in1_low(1) -radix binary} {/testbench/first_clock/in1_low(0) -radix binary}} -subitemconfig {/testbench/first_clock/in1_low(1) {-radix binary} /testbench/first_clock/in1_low(0) {-radix binary}} /testbench/first_clock/in1_low
add wave -noupdate -expand -group Main -radix decimal -radixshowbase 0 /testbench/first_clock/test_equal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {112 ns} 0}
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
WaveRestoreZoom {0 ns} {250 ns}
