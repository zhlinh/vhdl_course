transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/CHOOSE.vhd}
vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/MYTYPE.vhd}
vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/YUV2RGB.vhd}
vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/RGB2YUV.vhd}
vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/LSB_INSERT.vhd}
vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/LSB_DETECT.vhd}
vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/IMG_LSB.vhd}

vcom -93 -work work {E:/Project/VHDL/StateMachine/IMG_LSB/simulation/modelsim/TB_IMG_LSB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  IMG_LSB_vhd_tst

add wave *
view structure
view signals
run -all
