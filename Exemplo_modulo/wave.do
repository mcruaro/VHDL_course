onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Principal -color Gold -expand -subitemconfig {/testbench/principal/in1(1) {-color Gold} /testbench/principal/in1(0) {-color Gold}} /testbench/principal/in1
add wave -noupdate -expand -group Principal /testbench/principal/out1
add wave -noupdate -expand -group Modulo /testbench/principal/modulo1/A
add wave -noupdate -expand -group Modulo /testbench/principal/modulo1/B
add wave -noupdate -expand -group Modulo -divider AND(A,B)
add wave -noupdate -expand -group Modulo -color Red /testbench/principal/modulo1/s1
add wave -noupdate -expand -group Modulo -divider NOT(B)
add wave -noupdate -expand -group Modulo -color Blue /testbench/principal/modulo1/s2
add wave -noupdate -divider SAIDA
add wave -noupdate /testbench/principal/modulo1/C
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ns} 0}
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
WaveRestoreZoom {0 ns} {100 ns}
