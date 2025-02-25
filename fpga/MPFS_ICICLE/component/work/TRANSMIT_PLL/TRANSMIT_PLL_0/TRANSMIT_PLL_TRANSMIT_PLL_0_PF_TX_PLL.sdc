set_component TRANSMIT_PLL_TRANSMIT_PLL_0_PF_TX_PLL
# Microchip Technology Inc.
# Date: 2025-Feb-24 13:47:57
#

create_clock -period 10 [ get_pins { txpll_isnt_0/REF_CLK_P } ]
create_clock -period 8 [ get_pins { txpll_isnt_0/DIV_CLK } ]
