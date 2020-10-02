onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group CLOCK /testbench/my_troca_bits/clock
add wave -noupdate -expand -group CLOCK /testbench/my_troca_bits/reset
add wave -noupdate -expand -group ENTRADA -radix binary -childformat {{/testbench/my_troca_bits/in1(7) -radix binary} {/testbench/my_troca_bits/in1(6) -radix binary} {/testbench/my_troca_bits/in1(5) -radix binary} {/testbench/my_troca_bits/in1(4) -radix binary} {/testbench/my_troca_bits/in1(3) -radix binary} {/testbench/my_troca_bits/in1(2) -radix binary} {/testbench/my_troca_bits/in1(1) -radix binary} {/testbench/my_troca_bits/in1(0) -radix binary}} -radixshowbase 0 -subitemconfig {/testbench/my_troca_bits/in1(7) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(6) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(5) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(4) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(3) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(2) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(1) {-height 15 -radix binary -radixshowbase 0} /testbench/my_troca_bits/in1(0) {-height 15 -radix binary -radixshowbase 0}} /testbench/my_troca_bits/in1
add wave -noupdate -expand -group ENTRADA /testbench/my_troca_bits/ready_in
add wave -noupdate -expand -group CONTROLE /testbench/my_troca_bits/FTB
add wave -noupdate -expand -group CONTROLE -radix unsigned -radixshowbase 0 /testbench/my_troca_bits/counter
add wave -noupdate -expand -group SAIDA -color Red -radix binary -radixshowbase 0 /testbench/my_troca_bits/out1
add wave -noupdate -expand -group SAIDA /testbench/my_troca_bits/ready_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {285 ns} 0}
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
WaveRestoreZoom {165 ns} {310 ns}
