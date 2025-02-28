# Microchip Technology Inc.
# Date: 2025-Feb-24 14:27:26
# This file was generated based on the following SDC source files:
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/constraint/MPFS_ICICLE_KIT_BASE_DESIGN_derived_constraints.sdc
#   C:/Users/anana/Documents/JPL/Interrupts/icicle-kit-reference-design-master/MPFS_ICICLE/constraint/fic_clocks.sdc
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
set_false_path -through [ get_pins { FIC_0_PERIPHERALS_1/DMA_INITIATOR_inst_0/DMA_INITIATOR_0/arst_aclk_sync/sysReset/ALn FIC_0_PERIPHERALS_1/DMA_INITIATOR_inst_0/DMA_INITIATOR_0/arst_aclk_sync/sysReset_f1/ALn } ]
set_false_path -through [ get_pins { FIC_0_PERIPHERALS_1/FIC0_INITIATOR_inst_0/FIC0_INITIATOR_0/arst_aclk_sync/sysReset/ALn FIC_0_PERIPHERALS_1/FIC0_INITIATOR_inst_0/FIC0_INITIATOR_0/arst_aclk_sync/sysReset_f1/ALn } ]
set_false_path -through [ get_pins { FIC_1_PERIPHERALS_1/FIC_1_INITIATOR_0/FIC_1_INITIATOR_0/arst_aclk_sync/sysReset/ALn FIC_1_PERIPHERALS_1/FIC_1_INITIATOR_0/FIC_1_INITIATOR_0/arst_aclk_sync/sysReset_f1/ALn } ]
set_false_path -to [ get_pins { FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[0] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[1] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[2] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[3] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[4] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[5] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[6] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/INTERRUPT[7] FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/WAKEREQ FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/MPERST_N } ]
set_false_path -from [ get_pins { FIC_1_PERIPHERALS_1/PCIE/PF_PCIE_C0_0/PCIE_1/TL_CLK } ]
set_false_path -through [ get_pins { FIC_1_PERIPHERALS_1/PCIE_INITIATOR_inst_0/PCIE_INITIATOR_0/arst_aclk_sync/sysReset/ALn FIC_1_PERIPHERALS_1/PCIE_INITIATOR_inst_0/PCIE_INITIATOR_0/arst_aclk_sync/sysReset_f1/ALn } ]
set_clock_uncertainty 0.135 [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -rise_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -fall_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty 0.135 [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ] -rise_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ] -fall_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
set_clock_uncertainty 0.135 [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ] -rise_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ] -fall_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ]
set_clock_uncertainty 0.135 [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ] -rise_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ] -fall_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ]
set_clock_uncertainty 0.6 [ get_clocks { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV } ] -rise_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV } ] -fall_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/CLK_160MHz_to_CLK_80MHz/CLK_DIV_0/I_CD/Y_DIV } ]
set_clock_uncertainty 0.135 [ get_clocks { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ] -rise_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ] -fall_to [ get_clocks { CLOCKS_AND_RESETS_inst_0/TRANSMIT_PLL_0/TRANSMIT_PLL_0/txpll_isnt_0/DIV_CLK } ]
set_clock_uncertainty 0.0128531 [ get_clocks { REF_CLK_50MHz } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { REF_CLK_50MHz } ] -rise_to [ get_clocks { REF_CLK_50MHz } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { REF_CLK_50MHz } ] -fall_to [ get_clocks { REF_CLK_50MHz } ]
set_clock_uncertainty 0.0128531 [ get_clocks { REF_CLK_PAD_P } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { REF_CLK_PAD_P } ] -rise_to [ get_clocks { REF_CLK_PAD_P } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { REF_CLK_PAD_P } ] -fall_to [ get_clocks { REF_CLK_PAD_P } ]
set_clock_uncertainty 0.6 [ get_clocks { osc_rc160mhz } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { osc_rc160mhz } ] -rise_to [ get_clocks { osc_rc160mhz } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { osc_rc160mhz } ] -fall_to [ get_clocks { osc_rc160mhz } ]
set_clock_groups -name {FIC0_clks} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_groups -name {FIC1_clks} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT1 } ]
set_clock_groups -name {FIC2_clks} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT2 } ]
set_clock_groups -name {FIC3_clks} -asynchronous -group [ get_clocks { CLOCKS_AND_RESETS_inst_0/CCC_FIC_x_CLK/PF_CCC_C0_0/pll_inst_0/OUT3 } ]
