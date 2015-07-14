onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /led_cnt_vhd_tst/CLK
add wave -noupdate /led_cnt_vhd_tst/CLKDSP
add wave -noupdate /led_cnt_vhd_tst/DOUT
add wave -noupdate /led_cnt_vhd_tst/RESET
add wave -noupdate /led_cnt_vhd_tst/SEL
add wave -noupdate /led_cnt_vhd_tst/i1/BCD_CNT_MID1
add wave -noupdate /led_cnt_vhd_tst/i1/SCAN_MID2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ps
update
WaveRestoreZoom {499999050 ps} {500000050 ps}
