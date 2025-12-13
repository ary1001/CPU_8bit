onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu_test/rst_
add wave -noupdate /cpu_test/topcode
add wave -noupdate -radix unsigned /cpu_test/test_number
add wave -noupdate /cpu_test/clk
add wave -noupdate /cpu_test/alu_clk
add wave -noupdate /cpu_test/cntrl_clk
add wave -noupdate /cpu_test/fetch
add wave -noupdate /cpu_test/halt
add wave -noupdate /cpu_test/load_ir
add wave -noupdate /cpu_test/master_clk
add wave -noupdate -radix unsigned /cpu_test/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1627000 ps} 0} {{Cursor 2} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2865100 ps}
