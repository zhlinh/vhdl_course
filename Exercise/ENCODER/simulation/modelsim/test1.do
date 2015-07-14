# Reading D:/altera/14.0/modelsim_ase/tcl/vsim/pref.tcl 
# do ENCODER_run_msim_rtl_vhdl.do 
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Copying D:\altera\14.0\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied D:\altera\14.0\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
# vcom -93 -work work {E:/Project/VHDL/ENCODER/ENCODER.vhd}
# Model Technology ModelSim ALTERA vcom 10.1e Compiler 2013.06 Jun 12 2013
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package std_logic_arith
# -- Compiling entity ENCODER
# -- Compiling architecture ART1 of ENCODER
# -- Compiling architecture ART2 of ENCODER
# -- Loading entity ENCODER
# -- Compiling architecture ART3 of ENCODER
# -- Loading entity ENCODER
# 
vsim work.encoder
# vsim work.encoder 
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.std_logic_arith(body)
# Loading work.encoder(art3)
add wave -r /*
force A 1
force B 0
force C 0
force D 0
force E 0
froce F 0
# invalid command name "froce"
force F 0
force G 0
force H 0
run 40ns
force B 1
run 40ns
force G 1
run 40ns
force H 1
run -continue 40ns
# ** Error: (vsim-4001) Incorrect number of arguments.
# Usage: run [<timesteps> [<time_units>]] | -all | -continue | -next | -step | -over | -out | -init | -final
run -continue
run -continue 40ns
# ** Error: (vsim-4001) Incorrect number of arguments.
# Usage: run [<timesteps> [<time_units>]] | -all | -continue | -next | -step | -over | -out | -init | -final
run 40ns
