# AES_encipher_decipher

This project was developed in collaboration with Konstantina Topali, as our semester project for the ECE330 - System on Chip Design course in the University of Thessaly.

Brief Project Implementation Phases Description
------------------------------------------------
The project's goal is, given an RTL design, to execute the ASIC flow and produce all the necessary files, for the design to function properly, meet timing, and be DRC clean after the Place and Route phase. The original RTL code is modify to first encipher the given message, decipher it and compare the results to the original to verify correctness.

This project consists of 3 distinct phases.

# Phase I
In Phase I, we examined the original [RTL code](https://github.com/secworks/aes) provided from Joachim Strömbergson, and made the necessary modifications, to transform it to an Encoder/Decoder system with error detection capabilities. The modified code was tested with an automated testbench for functional correctness using the industrial simulator Incisive™ from Cadence© and was also tested against a golden software model.

This Phase's deliverables are the original RTL code, the modified RTL code as well as the automated testbench and golden software model.

# Phase II
In Phase II, we performed Logic Synthesis on the modified RTL to create the Gate-Level netlist. Logic Synthesis was performed by using the Design Compiler™ tool from Synopsys©.

We used 2 different approaches to synthesize our design. The first approach is a top-down approach that involves synthesizing our designby synthesizing our designs all at once starting with the higher levels of hierarchy and moving down.

The second approach is to synthesize our design by starting from the lower levels of hierarchy and synthesizing one module at a time. The produced .ddc files for the lower levels are then used when synthesizing the higher levels.

For both approaches, we created Bash scripts to run Logic Synthesis for different clock frequencies, by sweeping the clock period at a specified increment. This was done to adequately explore the solution space of our design and provide Pareto Curves for Power, Performance and Area for quality analysis at a later phase, and it includes power, timing and area reports as well as .sdf files for post-synthesis functional verification.

Functional verification of the now Gate-Level netlist was performed once again by using the industrial simulator Incisive™ from Cadence©.

This Phase's deliverables include all produced logs and reports across all clock frequencies and synthesis approaches as well as the Bash scripts to do so.

# Phase III
In Phase III, we present the back-end of the ASIC flow performed on our design. From the Gate-Level netlist produced at Phase II we perform Power planning, as well as Place and Route for our design using the PnR tool Innovus™ from Cadence©.

We placed power rings, rails and stripes to sufficiently provide power for our design, performed standard cell placement and Clock Tree Synthesis and routed our design to minimize power consumption and meet timing for different sets of conditions. We then extracted parasitics, in .spef format, and path delays, in .sdf format, from the Routed design and used them to more accurately time our design. This was accomplished by giving this information to the state-of-the-art timer PrimeTime™ by Synopsys©.We also used the PrimePower™ tool from Synopsys© to now accurately measure power consumption post-PnR by using the .spef file. After we verified that the timing is met for both setup and hold and finally performed a final simulation using the industrial simulator Incisive™ from Cadence© to ensure our design works correctly.

This Phase's deliverables include the final Gate-Level netlist as produced by Cadence© Innovus™, .def and .enc files for future editing of the design, the .spef file with the design's parasitics, the .sdf files with the path delays for the post-PnR simulation, as well as the command log for Cadence© Innovus™, and the .tcl script used for Synopsys© PrimeTime™/PrimePower™.

# Directory Structure

```
final_deliverable
├── ECE330_SoC-Final_Presentation.pptx
├── ECE330_SoC-Final_Report.docx
├── README.txt
├── phaseI
│   ├── aes_modified_code
|   |   └── src
|   │       ├── model
|   │       ├── rtl
|   │       └── tb
│   └── aes_original_code
│       └── src
├── phaseII
│   ├── bottom_up_results
│   │   ├── clk_1
│   │   │   ├── aes_area.txt
│   │   │   ├── aes_compare.ddc
│   │   │   ├── aes_core.ddc
│   │   │   ├── aes_decipher_block.ddc
│   │   │   ├── aes_encipher_block.ddc
│   │   │   ├── aes_inv_sbox.ddc
│   │   │   ├── aes_key_mem.ddc
│   │   │   ├── aes_postsynthesis.ddc
│   │   │   ├── aes_postsynthesis.sdc
│   │   │   ├── aes_postsynthesis.sdf
│   │   │   ├── aes_postsynthesis.v
│   │   │   ├── aes_power.txt
│   │   │   ├── aes_sbox.ddc
│   │   │   └── aes_timing.txt
|   |   |
|   |   |         (All clk_* directories have the same directory structure as the one above)
│   │   ├── clk_10
│   │   ├── clk_2
│   │   ├── clk_3
│   │   ├── clk_4
│   │   ├── clk_5
│   │   ├── clk_6
│   │   ├── clk_7
│   │   ├── clk_8
│   │   └── clk_9
│   ├── scripts
│   │   ├── bottom_up
│   │   │   ├── aes_compare.tcl
│   │   │   ├── aes_core.tcl
│   │   │   ├── aes_decipher_block.tcl
│   │   │   ├── aes_encipher_block.tcl
│   │   │   ├── aes_inv_sbox.tcl
│   │   │   ├── aes_key_mem.tcl
│   │   │   ├── aes_sbox.tcl
│   │   │   └── aes_top_level.tcl
│   │   ├── run_bottom_up_pareto.sh
│   │   ├── run_top_down_pareto.tcl
│   │   └── top_down
│   │       └── top_down_dc_analysis.tcl
│   └── top_down_results
│       ├── clk_1
│       ├── clk_10
│       ├── clk_2
│       ├── clk_3
│       ├── clk_4
│       ├── clk_5
│       ├── clk_6
│       ├── clk_7
│       ├── clk_8
│       └── clk_9
└── phaseIII
    ├── created_files
    │   ├── aes.def
    │   ├── aes.enc
    │   ├── aes.enc.dat
    │   ├── aes_post_route.sdf
    │   ├── aes_post_route.v
    │   ├── aes_postsynthesis.sdc
    │   ├── aes.spef
    │   └── mmmc.view
    └── scripts
        ├── innovus.tcl
        └── primetime.tcl
```
