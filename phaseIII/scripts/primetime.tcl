####################################################
#           ECE330 System on Chip Design           #
#                                                  #
# Title: Post PnR Timing and Power Analysis        #
#                                                  #
# Authors: Kyritsis Spyridon  AEM: 2697            #
#          Topali Konstantina AEM: 2823            #
####################################################

set search_path "/local/embedded/soc_new_aes"
set nangate_path "$search_path/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS"

set target_library "$search_path/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS"

# Synopsys DesignWare #
set synthetic_library {/opt/synopsys/2016-17/RHELx86/SYN_2016.12/libraries/syn/dw_foundation.sldb}

# Libraries List used upon Synthesis #  
set link_library [ list $target_library $synthetic_library *]

set design_name aes

read_verilog ../innovus/created_files/aes_post_route.v
current_design aes
link

# SDC #
create_clock "clk" -name clk -period 10
set_input_delay 0 -clock clk [all_inputs]
set_output_delay 0 -clock clk [all_outputs]
set_max_fanout 25 [all_inputs]
set_false_path -from reset_n

# Load parasitics #
read_parasitics ../innovus/created_files/aes.spef
report_annotated_parasitics

# Timing Reports #
report_timing -delay_type max -significant_digits 3
report_timing -delay_type max -significant_digits 3

# Power Analysis #
set power_enable_analysis true
report_power



