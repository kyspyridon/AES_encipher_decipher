###################################################################

# Created by write_sdc on Sun May 15 22:46:27 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_max_fanout 25 [get_ports clk]
set_max_fanout 25 [get_ports reset_n]
set_max_fanout 25 [get_ports cs]
set_max_fanout 25 [get_ports we]
set_max_fanout 25 [get_ports {address[7]}]
set_max_fanout 25 [get_ports {address[6]}]
set_max_fanout 25 [get_ports {address[5]}]
set_max_fanout 25 [get_ports {address[4]}]
set_max_fanout 25 [get_ports {address[3]}]
set_max_fanout 25 [get_ports {address[2]}]
set_max_fanout 25 [get_ports {address[1]}]
set_max_fanout 25 [get_ports {address[0]}]
set_max_fanout 25 [get_ports {write_data[31]}]
set_max_fanout 25 [get_ports {write_data[30]}]
set_max_fanout 25 [get_ports {write_data[29]}]
set_max_fanout 25 [get_ports {write_data[28]}]
set_max_fanout 25 [get_ports {write_data[27]}]
set_max_fanout 25 [get_ports {write_data[26]}]
set_max_fanout 25 [get_ports {write_data[25]}]
set_max_fanout 25 [get_ports {write_data[24]}]
set_max_fanout 25 [get_ports {write_data[23]}]
set_max_fanout 25 [get_ports {write_data[22]}]
set_max_fanout 25 [get_ports {write_data[21]}]
set_max_fanout 25 [get_ports {write_data[20]}]
set_max_fanout 25 [get_ports {write_data[19]}]
set_max_fanout 25 [get_ports {write_data[18]}]
set_max_fanout 25 [get_ports {write_data[17]}]
set_max_fanout 25 [get_ports {write_data[16]}]
set_max_fanout 25 [get_ports {write_data[15]}]
set_max_fanout 25 [get_ports {write_data[14]}]
set_max_fanout 25 [get_ports {write_data[13]}]
set_max_fanout 25 [get_ports {write_data[12]}]
set_max_fanout 25 [get_ports {write_data[11]}]
set_max_fanout 25 [get_ports {write_data[10]}]
set_max_fanout 25 [get_ports {write_data[9]}]
set_max_fanout 25 [get_ports {write_data[8]}]
set_max_fanout 25 [get_ports {write_data[7]}]
set_max_fanout 25 [get_ports {write_data[6]}]
set_max_fanout 25 [get_ports {write_data[5]}]
set_max_fanout 25 [get_ports {write_data[4]}]
set_max_fanout 25 [get_ports {write_data[3]}]
set_max_fanout 25 [get_ports {write_data[2]}]
set_max_fanout 25 [get_ports {write_data[1]}]
set_max_fanout 25 [get_ports {write_data[0]}]
create_clock [get_ports clk]  -period 9  -waveform {0 4.5}
set_false_path   -from [get_ports reset_n]
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports reset_n]
set_input_delay -clock clk  0  [get_ports cs]
set_input_delay -clock clk  0  [get_ports we]
set_input_delay -clock clk  0  [get_ports {address[7]}]
set_input_delay -clock clk  0  [get_ports {address[6]}]
set_input_delay -clock clk  0  [get_ports {address[5]}]
set_input_delay -clock clk  0  [get_ports {address[4]}]
set_input_delay -clock clk  0  [get_ports {address[3]}]
set_input_delay -clock clk  0  [get_ports {address[2]}]
set_input_delay -clock clk  0  [get_ports {address[1]}]
set_input_delay -clock clk  0  [get_ports {address[0]}]
set_input_delay -clock clk  0  [get_ports {write_data[31]}]
set_input_delay -clock clk  0  [get_ports {write_data[30]}]
set_input_delay -clock clk  0  [get_ports {write_data[29]}]
set_input_delay -clock clk  0  [get_ports {write_data[28]}]
set_input_delay -clock clk  0  [get_ports {write_data[27]}]
set_input_delay -clock clk  0  [get_ports {write_data[26]}]
set_input_delay -clock clk  0  [get_ports {write_data[25]}]
set_input_delay -clock clk  0  [get_ports {write_data[24]}]
set_input_delay -clock clk  0  [get_ports {write_data[23]}]
set_input_delay -clock clk  0  [get_ports {write_data[22]}]
set_input_delay -clock clk  0  [get_ports {write_data[21]}]
set_input_delay -clock clk  0  [get_ports {write_data[20]}]
set_input_delay -clock clk  0  [get_ports {write_data[19]}]
set_input_delay -clock clk  0  [get_ports {write_data[18]}]
set_input_delay -clock clk  0  [get_ports {write_data[17]}]
set_input_delay -clock clk  0  [get_ports {write_data[16]}]
set_input_delay -clock clk  0  [get_ports {write_data[15]}]
set_input_delay -clock clk  0  [get_ports {write_data[14]}]
set_input_delay -clock clk  0  [get_ports {write_data[13]}]
set_input_delay -clock clk  0  [get_ports {write_data[12]}]
set_input_delay -clock clk  0  [get_ports {write_data[11]}]
set_input_delay -clock clk  0  [get_ports {write_data[10]}]
set_input_delay -clock clk  0  [get_ports {write_data[9]}]
set_input_delay -clock clk  0  [get_ports {write_data[8]}]
set_input_delay -clock clk  0  [get_ports {write_data[7]}]
set_input_delay -clock clk  0  [get_ports {write_data[6]}]
set_input_delay -clock clk  0  [get_ports {write_data[5]}]
set_input_delay -clock clk  0  [get_ports {write_data[4]}]
set_input_delay -clock clk  0  [get_ports {write_data[3]}]
set_input_delay -clock clk  0  [get_ports {write_data[2]}]
set_input_delay -clock clk  0  [get_ports {write_data[1]}]
set_input_delay -clock clk  0  [get_ports {write_data[0]}]
set_output_delay -clock clk  0  [get_ports {read_data[31]}]
set_output_delay -clock clk  0  [get_ports {read_data[30]}]
set_output_delay -clock clk  0  [get_ports {read_data[29]}]
set_output_delay -clock clk  0  [get_ports {read_data[28]}]
set_output_delay -clock clk  0  [get_ports {read_data[27]}]
set_output_delay -clock clk  0  [get_ports {read_data[26]}]
set_output_delay -clock clk  0  [get_ports {read_data[25]}]
set_output_delay -clock clk  0  [get_ports {read_data[24]}]
set_output_delay -clock clk  0  [get_ports {read_data[23]}]
set_output_delay -clock clk  0  [get_ports {read_data[22]}]
set_output_delay -clock clk  0  [get_ports {read_data[21]}]
set_output_delay -clock clk  0  [get_ports {read_data[20]}]
set_output_delay -clock clk  0  [get_ports {read_data[19]}]
set_output_delay -clock clk  0  [get_ports {read_data[18]}]
set_output_delay -clock clk  0  [get_ports {read_data[17]}]
set_output_delay -clock clk  0  [get_ports {read_data[16]}]
set_output_delay -clock clk  0  [get_ports {read_data[15]}]
set_output_delay -clock clk  0  [get_ports {read_data[14]}]
set_output_delay -clock clk  0  [get_ports {read_data[13]}]
set_output_delay -clock clk  0  [get_ports {read_data[12]}]
set_output_delay -clock clk  0  [get_ports {read_data[11]}]
set_output_delay -clock clk  0  [get_ports {read_data[10]}]
set_output_delay -clock clk  0  [get_ports {read_data[9]}]
set_output_delay -clock clk  0  [get_ports {read_data[8]}]
set_output_delay -clock clk  0  [get_ports {read_data[7]}]
set_output_delay -clock clk  0  [get_ports {read_data[6]}]
set_output_delay -clock clk  0  [get_ports {read_data[5]}]
set_output_delay -clock clk  0  [get_ports {read_data[4]}]
set_output_delay -clock clk  0  [get_ports {read_data[3]}]
set_output_delay -clock clk  0  [get_ports {read_data[2]}]
set_output_delay -clock clk  0  [get_ports {read_data[1]}]
set_output_delay -clock clk  0  [get_ports {read_data[0]}]
set_output_delay -clock clk  0  [get_ports outputs_comp_result]
set_output_delay -clock clk  0  [get_ports core_finished]
