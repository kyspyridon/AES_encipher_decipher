####################################################
#           ECE330 System on Chip Design           #
#                                                  #
# Title: Logic Synthesis and Pareto Curve creation #
#                                                  #
# Authors: Kyritsis Spyridon  AEM: 2697            #
#          Topali Konstantina AEM: 2823            #
####################################################

# This is a TCL code for top_down DC analysis in aes_master verilog code 

set search_path "/local/embedded/soc_new_aes"
set nangate_path "$search_path/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS"
set rtl_path "$search_path/aes-master/src/rtl"
set results_path "$search_path/postsynthesis"

# exec mkdir $results_path


# Technology Library #
set target_library "$nangate_path/NangateOpenCellLibrary_worst_low_ccs.db"

# Synopsys DesignWare #
set synthetic_library {/opt/synopsys/2016-17/RHELx86/SYN_2016.12/libraries/syn/dw_foundation.sldb}

# Libraries List used upon Synthesis #  
set link_library [ list $target_library $synthetic_library ]


# HDL In #
# analyze -f verilog {$rtl_path/aes_top_level.v $rtl_path/aes_core_enc_dec.v $rtl_path/aes_encipher_block.v $rtl_path/aes_decipher_block.v $rtl_path/aes_key_mem.v $rtl_path/aes_sbox.v $rtl_path/aes_compare.v $rtl_path/aes_inv_sbox.v}
analyze -f verilog [list $rtl_path/aes_top_level.v $rtl_path/aes_core_enc_dec.v $rtl_path/aes_encipher_block.v $rtl_path/aes_decipher_block.v $rtl_path/aes_key_mem.v $rtl_path/aes_sbox.v $rtl_path/aes_compare.v $rtl_path/aes_inv_sbox.v]


# Elaborate Design #
elaborate aes

# Set Top Module #
current_design aes

# SDC #
create_clock "clk" -name clk -period 1
set auto_wire_load_selection true

set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]

set_max_fanout 25 [all_inputs]
set_false_path -from reset_n

# set_max_area 0 
# set_max_dynamic_power 0 mW
# set_max_leakage_power 0 mW

# Link Design #
link

# Check Warnings and Errors #
check_design 

# Synthesize #
compile -map_effort high 

check_design 

report_timing > $results_path/aes_timing.txt
report_area > $results_path/aes_area.txt
report_power -analysis_effort high > $results_path/aes_power.txt

# Write DDC File - Synopsys Design AND Library binary format #
write -h -f ddc -output $results_path/aes_postsynthesis.ddc

# Write Verilog Netlist #
write -h -f verilog -output $results_path/aes_postsynthesis.v

# Write SDC #
write_sdc $results_path/aes_postsynthesis.sdc

# Write SDF #
write_sdf $results_path/aes_postsynthesis.sdf

quit
