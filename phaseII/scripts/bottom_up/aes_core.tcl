####################################################
#           ECE330 System on Chip Design           #
#                                                  #
# Title: Logic Synthesis and Pareto Curve creation #
#                                                  #
# Authors: Kyritsis Spyridon  AEM: 2697            #
#          Topali Konstantina AEM: 2823            #
####################################################

set search_path "/local/embedded/soc_new_aes"
set nangate_path "$search_path/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS"
set rtl_path "$search_path/aes-master/src/rtl"

set bottom_up_results_path "$search_path/bottom_up_results/clk_$clk_period"

# Technology Library #
set target_library "$nangate_path/NangateOpenCellLibrary_worst_low_ccs.db"

# Synopsys DesignWare #
set synthetic_library {/opt/synopsys/2016-17/RHELx86/SYN_2016.12/libraries/syn/dw_foundation.sldb}

# Libraries List used upon Synthesis #  
set link_library [ list $target_library $synthetic_library $bottom_up_results_path/aes_encipher_block.ddc $bottom_up_results_path/aes_decipher_block.ddc $bottom_up_results_path/aes_key_mem.ddc $bottom_up_results_path/aes_sbox.ddc $bottom_up_results_path/aes_compare.ddc ]
# set link_library [ list $target_library $synthetic_library $bottom_up_results_path/aes_inv_sbox.ddc $bottom_up_results_path/aes_key_mem.ddc $bottom_up_results_path/aes_sbox.ddc $bottom_up_results_path/aes_compare.ddc $bottom_up_results_path/aes_encipher_block.ddc $bottom_up_results_path/aes_decipher_block.ddc]


set design_name aes_core
analyze -f verilog $rtl_path/aes_core_enc_dec.v
elaborate aes_core
current_design aes_core

# SDC #
# set clk_period 10
create_clock "clk" -name clk -period $clk_period
set auto_wire_load_selection true

set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]

set_max_fanout 25 [all_inputs]
set_false_path -from reset_n


# Link Design #
link

# Check Warnings and Errors #
check_design 


# Synthesize #
# compile_ultra -no_autoungroup -exact_map -gate_clock
compile -map_effort high 
# remove_unconnected_ports [find -hierarchy cell "*"]

check_design

# Write DDC File - Synopsys Design AND Library binary format #
write -h -f ddc -output $bottom_up_results_path/$design_name.ddc

quit
