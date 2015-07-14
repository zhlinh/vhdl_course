transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Project/VHDL/StateMachine/CHK_3BIT/CHK_3BIT.vhd}

vcom -93 -work work {E:/Project/VHDL/StateMachine/CHK_3BIT/simulation/modelsim/TB_CHK_3BIT.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  TB_CHK_3BIT

add wave *
view structure
view signals
run 400 ns
