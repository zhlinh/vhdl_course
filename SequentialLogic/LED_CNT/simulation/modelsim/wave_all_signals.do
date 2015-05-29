transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Project/VHDL/SequentialLogic/LED_CNT/LED_CNT.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/LED_CNT/BCD_CNT.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/LED_CNT/SCANNER.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/LED_CNT/LED_DEC.vhd}

vcom -93 -work work {E:/Project/VHDL/SequentialLogic/LED_CNT/simulation/modelsim/LED_CNT.vht}

vsim -novopt -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work   LED_CNT_vhd_tst

add wave *
add wave -noupdate /led_cnt_vhd_tst/i1/BCD_CNT_MID1
add wave -noupdate /led_cnt_vhd_tst/i1/SCAN_MID2
view structure
view signals
run 500 us
