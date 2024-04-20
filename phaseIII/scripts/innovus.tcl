#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Jul  2 21:26:18 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.11-s128_1 (64bit) 08/20/2019 20:54 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.11-s128_1 NR190815-2055/19_11-UB (database version 18.20, 469.7.1) {superthreading v1.51}
#@(#)CDS: AAE 19.11-s034 (64bit) 08/20/2019 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.11-s040_1 () Aug  1 2019 08:53:57 ( )
#@(#)CDS: SYNTECH 19.11-e010_1 () Jul 15 2019 20:31:02 ( )
#@(#)CDS: CPE v19.11-s006
#@(#)CDS: IQuantus/TQuantus 19.1.2-s245 (64bit) Thu Aug 1 10:22:01 PDT 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_gnd_net VSS
set init_lef_file ../../NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.lef
set init_design_settop 0
set init_verilog ../clk_10/aes_postsynthesis.v
set init_mmmc_file created_files/mmmc.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.996370834708 0.5 5 5 5 5
uiSetTool select
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.988379010828 0.499699 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 1 bottom 1 left 1 right 1} -spacing {top 1 bottom 1 left 1 right 1} -offset {top 1 bottom 1 left 1 right 1} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer metal2 -direction vertical -width 1.8 -spacing 1.8 -number_of_sets 3 -start_from left -start_offset 40 -stop_offset 40 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
setSrouteMode -viaConnectToShape { noshape }
set sprCreateIeStripeThreshold 1.0
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {CLKBUF_X3 CLKBUF_X2 CLKBUF_X1 BUF_X32 BUF_X16 BUF_X8 BUF_X4 BUF_X2 BUF_X1 INV_X32 INV_X16 INV_X8 INV_X4 INV_X2 INV_X1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
violationBrowser -all -no_display_false -displayByLayer
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report aes.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
optDesign -preCTS
setLayerPreference node_layer -isVisible 0
uiSetTool obstruct
createPlaceBlockage -box 129.44550 4.58750 134.18650 253.12250 -type hard
setLayerPreference metal2 -isVisible 1
createPlaceBlockage -box 44.83450 5.38500 50.41900 253.49600 -type hard
createPlaceBlockage -box 44.51250 5.18500 51.52400 253.19450 -type hard
createPlaceBlockage -box 128.27750 5.38500 134.58550 253.99700 -type hard
createPlaceBlockage -box 211.32000 5.38500 218.35300 253.58050 -type hard
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
optDesign -preCTS
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report aes.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_ccopt_property [get_property [get_lib_cells *CLKBUF*] name]
set_ccopt_property buffer_cells [get_property [get_lib_cells *CLKBUF*] name]
ccopt_design
optDesign -postCTS
createPlaceBlockage -box -7.81900 75.59000 273.40000 122.26050 -type hard
setNanoRouteMode -quiet -routeWithTimingDriven 0
setNanoRouteMode -quiet -routeTdrEffort 10
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
violationBrowser -all -no_display_false -displayByLayer
optDesign -postRoute
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix aes_signOff -outDir timingReports
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix aes_signOff -outDir timingReports
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report aes.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -error 1000 -warning 50
verifyProcessAntenna -report aes.antenna.rpt -error 1000
verifyACLimit -report aes.aclimit.rpt -toggle 1.0 -error 1000
verifyEndCap
setMetalFill -layer metal1 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal2 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal3 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal4 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal5 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal6 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal7 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal8 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal9 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
setMetalFill -layer metal10 -windowSize 100.000 100.000 -windowStep 50.000 50.000 -minDensity 20.000 -maxDensity 80.000
verifyMetalDensity -report aes.density.rpt
setViaFill -layer via1 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via2 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via3 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via4 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via5 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via6 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via7 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via8 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
setViaFill -layer via9 -windowSize 10.000 10.000 -windowStep 5.000 5.000 -minDensity 0.00 -maxDensity 30.00
verifyCutDensity
verifyPowerVia
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
uiSetTool select
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -routeWithEco true
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUF_X1 BUF_X2 BUF_X4 BUF_X8 BUF_X16 BUF_X32 CLKBUF_X1 CLKBUF_X2 CLKBUF_X3 INV_X1 INV_X2 INV_X4 INV_X8 INV_X16 INV_X32} -maxAllowedDelay 1
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report aes.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
violationBrowserClose
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -spef -floorplan -place -outdir checkDesign
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false
getCTSMode -engine -quiet
getNanoRouteMode -quiet -routeWithTimingDriven
selectMarker 54.5300 121.2400 55.4800 122.6400 -1 12 92
setLayerPreference node_layer -isVisible 0
deselectAll
selectObstruct 5.13 75.04 257.26 122.64 defScreenName
deleteFPObject LayerShape (10260,150080,514520,245280)
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report aes.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
selectMarker 105.6400 94.6400 108.8700 96.0400 -1 12 92
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
violationBrowserClose
setDelayCalMode -reset -siMode
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
::Rda_Browser::VB::violationBrowserSetObjs
setLayerPreference node_layer -isVisible 1
selectMarker 128.4950 254.1550 130.2950 254.3250 2 3 101
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
report_power
man report_power
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -spef -floorplan -place -outdir checkDesign
getCTSMode -engine -quiet
deselectAll
selectObstruct 211.28 5.04 218.5 254.24 defScreenName
getCTSMode -engine -quiet
addViaFill -layer { via1 via2 via3 via4 via5 via6 via7 via8 via9 } -mode { connectToPG }
violationBrowserClose
setSrouteMode -viaConnectToShape { stripe }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
deselectAll
selectVia 211.8600 235.0000 212.8600 235.4000 3 VDD
deselectAll
selectVia 211.8600 235.0000 212.8600 235.4000 3 VDD
deselectAll
selectVia 211.8600 235.0000 212.8600 235.4000 3 VDD
deselectAll
selectWire 211.8600 3.0400 213.6600 256.2400 2 VDD
deselectAll
selectVia 212.3250 243.0000 212.7250 244.0000 3 VDD
gui_select -rect {210.59150 243.45300 210.68650 243.43250}
deselectAll
undo
selectVia 212.3250 243.0000 212.7250 244.0000 3 VDD
undo
deselectAll
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
::Rda_Browser::VB::violationBrowserSetObjs
selectMarker 211.8600 254.1550 213.6600 254.3250 2 3 101
uiSetTool addVia
editAddVia 212.788 254.224
undo
editAddVia 211.8965 254.2755
undo
editAddVia 211.9345 254.236
editAddVia 212.3955 254.2425
editAddVia 212.168 254.223
editAddVia 212.168 254.234
editAddVia 216.3695 252.7945
editAddVia 212.8235 251.4555
editAddVia 216.461 250.0705
editAddVia 212.793 248.64
editPowerVia -skip_via_on_pin Standardcell -bottom_layer metal1 -add_vias 1 -top_layer metal10
set sprEpvLayers {}
uiSetTool select
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -use_min_spacing_on_block_obs auto -report aes.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyConnectivity -type all -error 1000 -warning 50
getCTSMode -engine -quiet
getCTSMode -engine -quiet
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {CLKBUF_X3 CLKBUF_X2 CLKBUF_X1 BUF_X32 BUF_X16 BUF_X8 BUF_X4 BUF_X2 BUF_X1 INV_X32 INV_X16 INV_X8 INV_X4 INV_X2 INV_X1} -maxAllowedDelay 1
setOptMode -effort high -powerEffort high -leakageToDynamicRatio 1 -reclaimArea true -simplifyNetlist true -allEndPoints false -setupTargetSlack 0 -holdTargetSlack 0 -maxDensity 0.95 -drcMargin 0 -usefulSkew true
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
reset_parasitics
extractRC
rcOut -spef aes.spef -rc_corner rccorner
saveDesign aes.final
selectWire 148.5150 72.8000 184.4950 72.9400 5 n519
setLayerPreference node_layer -isVisible 0
deselectAll
setLayerPreference metal10 -isVisible 1
setLayerPreference metal10 -isVisible 0
setLayerPreference metal10 -isVisible 1
setLayerPreference metal9 -isVisible 1
setLayerPreference metal8 -isVisible 1
selectPhyPin 146.1450 0.0000 146.5450 0.4000 8 {write_data[9]}
setLayerPreference node_layer -isVisible 1
deselectAll
setLayerPreference node_layer -isVisible 0
setLayerPreference metal7 -isVisible 1
setLayerPreference via6 -isVisible 1
setLayerPreference metal6 -isVisible 1
setLayerPreference metal8 -isVisible 1
setLayerPreference metal5 -isVisible 1
setLayerPreference metal4 -isVisible 1
setLayerPreference metal3 -isVisible 1
selectWire 87.7550 151.9000 87.8950 157.0800 4 FE_OFN74_n545
deselectAll
saveDesign created_files/aes.enc
violationBrowserClose
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
reset_parasitics
extractRC
rcOut -spef aes.spef -rc_corner rccorner
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix aes_postRoute -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUF_X1 BUF_X2 BUF_X4 BUF_X8 BUF_X16 BUF_X32 CLKBUF_X1 CLKBUF_X2 CLKBUF_X3 INV_X1 INV_X2 INV_X4 INV_X8 INV_X16 INV_X32} -maxAllowedDelay 1
setOptMode -effort high -powerEffort none -leakageToDynamicRatio 1 -reclaimArea true -simplifyNetlist true -allEndPoints true -setupTargetSlack 0 -holdTargetSlack 0 -maxDensity 0.95 -drcMargin 0 -usefulSkew true
getNanoRouteMode -quiet -routeWithTimingDriven
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeWithSiPostRouteFix true
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail -viaOpt -wireOpt
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {CLKBUF_X3 CLKBUF_X2 CLKBUF_X1 BUF_X32 BUF_X16 BUF_X8 BUF_X4 BUF_X2 BUF_X1 INV_X32 INV_X16 INV_X8 INV_X4 INV_X2 INV_X1} -maxAllowedDelay 1
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold -incr
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix aes_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -expandReg2Reg -pathReports -drvReports -slackReports -numPaths 50 -prefix aes_signOff -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -expandReg2Reg -pathReports -slackReports -numPaths 50 -prefix aes_signOff -outDir timingReports
getIoFlowFlag
reset_parasitics
extractRC
rcOut -spef aes.spef -rc_corner rccorner
gui_select -rect {488.88700 212.31750 483.93650 208.85200}
saveNetlist created_files/aes_post_route
set dbgLefDefOutVersion 5.8
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing created_files/aes.def
set dbgLefDefOutVersion 5.8
set dbgLefDefOutVersion 5.8
saveDesign created_files/aes.enc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix aes_signOff -outDir timingReports
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUF_X1 BUF_X2 BUF_X4 BUF_X8 BUF_X16 BUF_X32 CLKBUF_X1 CLKBUF_X2 CLKBUF_X3 INV_X1 INV_X2 INV_X4 INV_X8 INV_X16 INV_X32} -maxAllowedDelay 1
setOptMode -fixCap false -fixTran false -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
setDelayCalMode -reset -siMode
getCTSMode -engine -quiet
getNanoRouteMode -quiet -routeWithTimingDriven
setOptMode -fixCap false -fixTran false -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf -view setup_view  -ideal_clock_network created_files/aes_post_route.sdf
reset_parasitics
extractRC
rcOut -spef created_files/aes.spef -rc_corner rccorner
write_sdf -view setup_view  -ideal_clock_network created_files/aes_post_route.sdf
saveNetlist created_files/aes_post_route.v
getIoFlowFlag