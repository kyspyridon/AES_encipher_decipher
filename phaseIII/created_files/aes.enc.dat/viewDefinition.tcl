if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name hold_libset\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_fast_ccs.lib]
create_library_set -name setup_libset\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_worst_low_ccs.lib]
create_op_cond -name setup_opcond -library_file ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_worst_low_ccs.lib -P 1 -V 0.95 -T -40
create_op_cond -name hold_opcond -library_file ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_fast_ccs.lib -P 1 -V 1.25 -T 0
create_rc_corner -name rccorner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name setup_corner\
   -library_set setup_libset\
   -rc_corner rccorner
create_delay_corner -name hold_corner\
   -library_set hold_libset\
   -rc_corner rccorner
create_constraint_mode -name constraint_mode\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/constraint_mode/constraint_mode.sdc]
create_analysis_view -name setup_view -constraint_mode constraint_mode -delay_corner setup_corner -latency_file ${::IMEX::dataVar}/mmmc/views/setup_view/latency.sdc
create_analysis_view -name hold_view -constraint_mode constraint_mode -delay_corner hold_corner -latency_file ${::IMEX::dataVar}/mmmc/views/hold_view/latency.sdc
set_analysis_view -setup [list setup_view] -hold [list hold_view]
