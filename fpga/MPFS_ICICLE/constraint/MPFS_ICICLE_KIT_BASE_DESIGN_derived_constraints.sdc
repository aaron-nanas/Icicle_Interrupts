# Microchip Technology Inc.
# Date: 2025-Feb-24 14:11:13
# This file was generated based on the following SDC source files:
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/CLK_DIV/CLK_DIV_0/CLK_DIV_CLK_DIV_0_PF_CLK_DIV.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/TRANSMIT_PLL/TRANSMIT_PLL_0/TRANSMIT_PLL_TRANSMIT_PLL_0_PF_TX_PLL.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/DMA_INITIATOR/DMA_INITIATOR_0/DMA_INITIATOR.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/FIC0_INITIATOR/FIC0_INITIATOR_0/FIC0_INITIATOR.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/FIC_1_INITIATOR/FIC_1_INITIATOR_0/FIC_1_INITIATOR.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/PF_PCIE_C0/PF_PCIE_C0_0/PF_PCIE_C0_PF_PCIE_C0_0_PF_PCIE.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/PCIE_INITIATOR/PCIE_INITIATOR_0/PCIE_INITIATOR.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/component/work/ICICLE_MSS/ICICLE_MSS.sdc
#   D:/Microchip/Libero_SoC_v2024.1/Designer/data/aPA5M/cores/constraints/EXT/osc_rc160mhz.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {REF_CLK_50MHz} -period 20 [ get_ports { REF_CLK_50MHz } ]
create_clock -name {REF_CLK_PAD_P} -period 10 [ get_ports { REF_CLK_PAD_P } ]
create_clock -name {CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK} -period 8 [ get_pins { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ]
create_clock -name {osc_rc160mhz} -period 5.86854 [ get_pins { CLOCKS_AND_RESETS_inst_0/OSCILLATOR_160MHz_inst_0/OSCILLATOR_160MHz_0/I_OSC_160/CLK } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 2 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1} -multiply_by 5 -divide_by 2 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2} -multiply_by 5 -divide_by 2 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3} -divide_by 1 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ]
create_generated_clock -name {CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV} -divide_by 2 -source [ get_pins { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/A } ] [ get_pins { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV } ]
set_false_path -through [ get_nets { FIC_0_PERIPHERALS_1/DMA_INITIATOR_inst_0/ARESETN* } ]
set_false_path -through [ get_nets { FIC_0_PERIPHERALS_1/FIC0_INITIATOR_inst_0/ARESETN* } ]
set_false_path -through [ get_nets { FIC_1_PERIPHERALS_1/FIC_1_INITIATOR_0/ARESETN* } ]
set_false_path -to [ get_pins { FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[0] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[1] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[2] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[3] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[4] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[5] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[6] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[7] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/WAKEREQ FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/MPERST_N } ]
set_false_path -from [ get_pins { FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/TL_CLK } ]
set_false_path -through [ get_nets { FIC_1_PERIPHERALS_1/PCIE_INITIATOR_inst_0/ARESETN* } ]
