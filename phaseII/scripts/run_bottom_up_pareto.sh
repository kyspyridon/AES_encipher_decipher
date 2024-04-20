####################################################
#           ECE330 System on Chip Design           #
#                                                  #
# Title: Logic Synthesis and Pareto Curve creation #
#                                                  #
# Authors: Kyritsis Spyridon AEM: 2697             #
#          Topali Konstantina AEM: 2823            #
####################################################


for clk in $(seq 1 1 10)
  do
    echo -e "Running bottom-up synthesis for clock period $clk! \n"

    mkdir /local/embedded/soc_new_aes/bottom_up_results/clk_$clk

    echo "Synthesizing aes_inv_sbox for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_inv_sbox.tcl -x "set clk_period $clk"

    echo "Synthesizing aes_sbox for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_sbox.tcl -x "set clk_period $clk"
    
    echo "Synthesizing aes_key_mem for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_key_mem.tcl -x "set clk_period $clk"
    
    echo "Synthesizing aes_compare for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_compare.tcl -x "set clk_period $clk"
    
    echo "Synthesizing aes_encipher_block for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_encipher_block.tcl -x "set clk_period $clk"
    
    echo "Synthesizing aes_decipher_block for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_decipher_block.tcl -x "set clk_period $clk"
    
    echo "Synthesizing aes_core for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_core.tcl -x "set clk_period $clk"
    
    echo "Synthesizing aes_top_level for clock period $clk"
    dc_shell -f /local/embedded/soc_new_aes/scripts/DC/bottom_up/aes_top_level.tcl -x "set clk_period $clk"

    echo -e "Finished running bottom-up synthesis for clock period $clk! \n"
  done

