transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/SEL_SIGNAL.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/LED_DISP.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/FREQ_CNT.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/DIV_FREQ.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/D_LATCH.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/COUNT.vhd}
vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/ALERT.vhd}

vcom -93 -work work {E:/Project/VHDL/SequentialLogic/FREQ_CNT/simulation/modelsim/FREQ_CNT.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  FREQ_CNT_vhd_tst

add wave *
view structure
view signals
run 10 sec
