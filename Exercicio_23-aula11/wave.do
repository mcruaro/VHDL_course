onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/semaforo1/clock
add wave -noupdate /testbench/semaforo1/reset
add wave -noupdate -expand -group SEMAFORO1 /testbench/semaforo1/sync_in
add wave -noupdate -expand -group SEMAFORO1 /testbench/semaforo1/sync_out
add wave -noupdate -expand -group SEMAFORO1 /testbench/semaforo1/FSM
add wave -noupdate -expand -group SEMAFORO1 -radix unsigned -radixshowbase 0 /testbench/semaforo1/counter
add wave -noupdate -expand -group SEMAFORO2 /testbench/semaforo2/sync_in
add wave -noupdate -expand -group SEMAFORO2 /testbench/semaforo2/sync_out
add wave -noupdate -expand -group SEMAFORO2 /testbench/semaforo2/FSM
add wave -noupdate -expand -group SEMAFORO2 -radix unsigned -radixshowbase 0 /testbench/semaforo2/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44 ns} 0}
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
WaveRestoreZoom {0 ns} {479 ns}
