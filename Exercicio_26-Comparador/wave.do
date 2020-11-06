onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/cpu/clock
add wave -noupdate /testbench/cpu/reset
add wave -noupdate -expand -group CPU -divider Comparacao
add wave -noupdate -expand -group CPU -radix binary /testbench/cpu/v1
add wave -noupdate -expand -group CPU -radix binary /testbench/cpu/v2
add wave -noupdate -expand -group CPU /testbench/cpu/addr
add wave -noupdate -expand -group CPU /testbench/cpu/valid
add wave -noupdate -expand -group CPU /testbench/cpu/end_operation
add wave -noupdate -expand -group CPU /testbench/cpu/result
add wave -noupdate -expand -group CPU -divider Interface_mem
add wave -noupdate -expand -group CPU -radix unsigned -radixshowbase 0 /testbench/cpu/data_out
add wave -noupdate -expand -group CPU -radix unsigned -radixshowbase 0 /testbench/cpu/write_addr
add wave -noupdate -expand -group CPU -radix unsigned /testbench/cpu/we
add wave -noupdate -expand -group CPU -radix unsigned /testbench/cpu/FSM
add wave -noupdate -height 19 -radix unsigned -radixshowbase 0 /testbench/mem/memoria(2)
add wave -noupdate -group RAM -divider WRITE
add wave -noupdate -group RAM -radix unsigned /testbench/mem/we
add wave -noupdate -group RAM -radix unsigned -radixshowbase 0 /testbench/mem/write_addr
add wave -noupdate -group RAM -radix unsigned -radixshowbase 0 /testbench/mem/data_in
add wave -noupdate -group RAM -divider READ
add wave -noupdate -group RAM -radix unsigned -radixshowbase 0 /testbench/mem/read_addr
add wave -noupdate -group RAM -radix unsigned -radixshowbase 0 /testbench/mem/data_out
add wave -noupdate -group RAM -divider MEMORY
add wave -noupdate -group RAM -radix unsigned -childformat {{/testbench/mem/memoria(7) -radix unsigned} {/testbench/mem/memoria(6) -radix unsigned} {/testbench/mem/memoria(5) -radix unsigned} {/testbench/mem/memoria(4) -radix unsigned} {/testbench/mem/memoria(3) -radix unsigned} {/testbench/mem/memoria(2) -radix unsigned} {/testbench/mem/memoria(1) -radix unsigned} {/testbench/mem/memoria(0) -radix unsigned}} -radixshowbase 0 -expand -subitemconfig {/testbench/mem/memoria(7) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(6) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(5) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(4) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(3) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(2) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(1) {-height 19 -radix unsigned -radixshowbase 0} /testbench/mem/memoria(0) {-height 19 -radix unsigned -radixshowbase 0}} /testbench/mem/memoria
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
WaveRestoreZoom {0 ns} {368 ns}
