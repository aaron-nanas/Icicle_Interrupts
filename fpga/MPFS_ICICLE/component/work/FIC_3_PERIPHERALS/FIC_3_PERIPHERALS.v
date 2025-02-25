//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Feb 24 13:50:14 2025
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// FIC_3_PERIPHERALS
module FIC_3_PERIPHERALS(
    // Inputs
    APB_MMASTER_in_paddr,
    APB_MMASTER_in_penable,
    APB_MMASTER_in_psel,
    APB_MMASTER_in_pwdata,
    APB_MMASTER_in_pwrite,
    CoreUARTapb_RX,
    PCLK,
    PLL0_SW_DRI_INTERRUPT,
    PLL0_SW_DRI_RDATA,
    PRESETN,
    PSTRB,
    Q0_LANE0_DRI_INTERRUPT,
    Q0_LANE0_DRI_RDATA,
    Q0_LANE1_DRI_INTERRUPT,
    Q0_LANE1_DRI_RDATA,
    Q0_LANE2_DRI_INTERRUPT,
    Q0_LANE2_DRI_RDATA,
    Q0_LANE3_DRI_INTERRUPT,
    Q0_LANE3_DRI_RDATA,
    // Outputs
    APB_MMASTER_in_prdata,
    APB_MMASTER_in_pready,
    APB_MMASTER_in_pslverr,
    CORE_I2C_C0_INT,
    CoreUARTapb_TX,
    FRAMING_ERR,
    GPIO_OUT_0,
    GPIO_OUT_1,
    GPIO_OUT_2,
    GPIO_OUT_3,
    IHC_SUBSYSTEM_E51_IRQ,
    IHC_SUBSYSTEM_U54_1_IRQ,
    IHC_SUBSYSTEM_U54_2_IRQ,
    IHC_SUBSYSTEM_U54_3_IRQ,
    IHC_SUBSYSTEM_U54_4_IRQ,
    OVERFLOW,
    PARITY_ERR,
    PLL0_SW_DRI_CTRL,
    PWM_0,
    Q0_LANE0_DRI_CTRL,
    Q0_LANE0_DRI_DRI_ARST_N,
    Q0_LANE0_DRI_DRI_CLK,
    Q0_LANE0_DRI_DRI_WDATA,
    Q0_LANE1_DRI_CTRL,
    Q0_LANE2_DRI_CTRL,
    Q0_LANE3_DRI_CTRL,
    RPI_ID_I2C_IRQ,
    RXRDY,
    TXRDY,
    fabric_sd_emmc_demux_select_out,
    // Inouts
    COREI2C_C0_SCL,
    COREI2C_C0_SDA,
    RPi_ID_SC,
    RPi_ID_SD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] APB_MMASTER_in_paddr;
input         APB_MMASTER_in_penable;
input         APB_MMASTER_in_psel;
input  [31:0] APB_MMASTER_in_pwdata;
input         APB_MMASTER_in_pwrite;
input         CoreUARTapb_RX;
input         PCLK;
input         PLL0_SW_DRI_INTERRUPT;
input  [32:0] PLL0_SW_DRI_RDATA;
input         PRESETN;
input  [3:0]  PSTRB;
input         Q0_LANE0_DRI_INTERRUPT;
input  [32:0] Q0_LANE0_DRI_RDATA;
input         Q0_LANE1_DRI_INTERRUPT;
input  [32:0] Q0_LANE1_DRI_RDATA;
input         Q0_LANE2_DRI_INTERRUPT;
input  [32:0] Q0_LANE2_DRI_RDATA;
input         Q0_LANE3_DRI_INTERRUPT;
input  [32:0] Q0_LANE3_DRI_RDATA;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] APB_MMASTER_in_prdata;
output        APB_MMASTER_in_pready;
output        APB_MMASTER_in_pslverr;
output        CORE_I2C_C0_INT;
output        CoreUARTapb_TX;
output        FRAMING_ERR;
output        GPIO_OUT_0;
output        GPIO_OUT_1;
output        GPIO_OUT_2;
output        GPIO_OUT_3;
output        IHC_SUBSYSTEM_E51_IRQ;
output        IHC_SUBSYSTEM_U54_1_IRQ;
output        IHC_SUBSYSTEM_U54_2_IRQ;
output        IHC_SUBSYSTEM_U54_3_IRQ;
output        IHC_SUBSYSTEM_U54_4_IRQ;
output        OVERFLOW;
output        PARITY_ERR;
output [10:0] PLL0_SW_DRI_CTRL;
output        PWM_0;
output [10:0] Q0_LANE0_DRI_CTRL;
output        Q0_LANE0_DRI_DRI_ARST_N;
output        Q0_LANE0_DRI_DRI_CLK;
output [32:0] Q0_LANE0_DRI_DRI_WDATA;
output [10:0] Q0_LANE1_DRI_CTRL;
output [10:0] Q0_LANE2_DRI_CTRL;
output [10:0] Q0_LANE3_DRI_CTRL;
output        RPI_ID_I2C_IRQ;
output        RXRDY;
output        TXRDY;
output        fabric_sd_emmc_demux_select_out;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         COREI2C_C0_SCL;
inout         COREI2C_C0_SDA;
inout         RPi_ID_SC;
inout         RPi_ID_SD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] APB_MMASTER_in_paddr;
wire          APB_MMASTER_in_penable;
wire   [31:0] APB_MMASTER_PRDATA;
wire          APB_MMASTER_PREADY;
wire          APB_MMASTER_in_psel;
wire          APB_MMASTER_PSLVERR;
wire   [31:0] APB_MMASTER_in_pwdata;
wire          APB_MMASTER_in_pwrite;
wire          CORE_I2C_C0_INT_net_0;
wire          COREI2C_C0_SCL;
wire          COREI2C_C0_SDA;
wire          CoreUARTapb_RX;
wire          CoreUARTapb_TX_net_0;
wire          fabric_sd_emmc_demux_select_out_net_0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx;
wire          FRAMING_ERR_net_0;
wire   [0:0]  GPIO_OUT_0_net_0;
wire   [1:1]  GPIO_OUT_1_net_0;
wire   [2:2]  GPIO_OUT_2_net_0;
wire   [3:3]  GPIO_OUT_3_net_0;
wire          IHC_SUBSYSTEM_E51_IRQ_net_0;
wire          IHC_SUBSYSTEM_U54_1_IRQ_net_0;
wire          IHC_SUBSYSTEM_U54_2_IRQ_net_0;
wire          IHC_SUBSYSTEM_U54_3_IRQ_net_0;
wire          IHC_SUBSYSTEM_U54_4_IRQ_net_0;
wire          OVERFLOW_net_0;
wire          PARITY_ERR_net_0;
wire          PCLK;
wire          PLL0_SW_DRI_DRI_ARST_N;
wire          PLL0_SW_DRI_DRI_CLK;
wire   [10:0] PLL0_SW_DRI_DRI_CTRL;
wire          PLL0_SW_DRI_INTERRUPT;
wire   [32:0] PLL0_SW_DRI_RDATA;
wire   [32:0] PLL0_SW_DRI_DRI_WDATA;
wire          PRESETN;
wire   [3:0]  PSTRB;
wire   [0:0]  PWM_0_net_0;
wire   [10:0] Q0_LANE0_DRI_DRI_CTRL;
wire          Q0_LANE0_DRI_INTERRUPT;
wire   [32:0] Q0_LANE0_DRI_RDATA;
wire   [10:0] Q0_LANE1_DRI_DRI_CTRL;
wire          Q0_LANE1_DRI_INTERRUPT;
wire   [32:0] Q0_LANE1_DRI_RDATA;
wire   [10:0] Q0_LANE2_DRI_DRI_CTRL;
wire          Q0_LANE2_DRI_INTERRUPT;
wire   [32:0] Q0_LANE2_DRI_RDATA;
wire   [10:0] Q0_LANE3_DRI_DRI_CTRL;
wire          Q0_LANE3_DRI_INTERRUPT;
wire   [32:0] Q0_LANE3_DRI_RDATA;
wire          RPI_ID_I2C_IRQ_net_0;
wire          RPi_ID_SC;
wire          RPi_ID_SD;
wire          RXRDY_net_0;
wire          TXRDY_net_0;
wire          APB_MMASTER_PREADY_net_0;
wire          APB_MMASTER_PSLVERR_net_0;
wire          CORE_I2C_C0_INT_net_1;
wire          CoreUARTapb_TX_net_1;
wire          FRAMING_ERR_net_1;
wire          OVERFLOW_net_1;
wire          PARITY_ERR_net_1;
wire          RXRDY_net_1;
wire          TXRDY_net_1;
wire          GPIO_OUT_0_net_1;
wire          GPIO_OUT_1_net_1;
wire          GPIO_OUT_2_net_1;
wire          GPIO_OUT_3_net_1;
wire          IHC_SUBSYSTEM_E51_IRQ_net_1;
wire          IHC_SUBSYSTEM_U54_1_IRQ_net_1;
wire          IHC_SUBSYSTEM_U54_2_IRQ_net_1;
wire          IHC_SUBSYSTEM_U54_3_IRQ_net_1;
wire          IHC_SUBSYSTEM_U54_4_IRQ_net_1;
wire          PWM_0_net_1;
wire          PLL0_SW_DRI_DRI_ARST_N_net_0;
wire          PLL0_SW_DRI_DRI_CLK_net_0;
wire          RPI_ID_I2C_IRQ_net_1;
wire          fabric_sd_emmc_demux_select_out_net_1;
wire   [31:0] APB_MMASTER_PRDATA_net_0;
wire   [10:0] PLL0_SW_DRI_DRI_CTRL_net_0;
wire   [10:0] Q0_LANE0_DRI_DRI_CTRL_net_0;
wire   [32:0] PLL0_SW_DRI_DRI_WDATA_net_0;
wire   [10:0] Q0_LANE1_DRI_DRI_CTRL_net_0;
wire   [10:0] Q0_LANE2_DRI_DRI_CTRL_net_0;
wire   [10:0] Q0_LANE3_DRI_DRI_CTRL_net_0;
wire   [3:0]  GPIO_OUT_net_0;
wire   [0:0]  PWM_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [3:0]  GPIO_IN_const_net_0;
wire          VCC_net;
wire          GND_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR;
wire   [28:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_0;
wire   [28:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_0_28to0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1_7to0;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2_8to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3_4to0;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4_8to0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0 = 4'h0;
assign VCC_net             = 1'b1;
assign GND_net             = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign APB_MMASTER_PREADY_net_0              = APB_MMASTER_PREADY;
assign APB_MMASTER_in_pready                 = APB_MMASTER_PREADY_net_0;
assign APB_MMASTER_PSLVERR_net_0             = APB_MMASTER_PSLVERR;
assign APB_MMASTER_in_pslverr                = APB_MMASTER_PSLVERR_net_0;
assign CORE_I2C_C0_INT_net_1                 = CORE_I2C_C0_INT_net_0;
assign CORE_I2C_C0_INT                       = CORE_I2C_C0_INT_net_1;
assign CoreUARTapb_TX_net_1                  = CoreUARTapb_TX_net_0;
assign CoreUARTapb_TX                        = CoreUARTapb_TX_net_1;
assign FRAMING_ERR_net_1                     = FRAMING_ERR_net_0;
assign FRAMING_ERR                           = FRAMING_ERR_net_1;
assign OVERFLOW_net_1                        = OVERFLOW_net_0;
assign OVERFLOW                              = OVERFLOW_net_1;
assign PARITY_ERR_net_1                      = PARITY_ERR_net_0;
assign PARITY_ERR                            = PARITY_ERR_net_1;
assign RXRDY_net_1                           = RXRDY_net_0;
assign RXRDY                                 = RXRDY_net_1;
assign TXRDY_net_1                           = TXRDY_net_0;
assign TXRDY                                 = TXRDY_net_1;
assign GPIO_OUT_0_net_1                      = GPIO_OUT_0_net_0[0];
assign GPIO_OUT_0                            = GPIO_OUT_0_net_1;
assign GPIO_OUT_1_net_1                      = GPIO_OUT_1_net_0[1];
assign GPIO_OUT_1                            = GPIO_OUT_1_net_1;
assign GPIO_OUT_2_net_1                      = GPIO_OUT_2_net_0[2];
assign GPIO_OUT_2                            = GPIO_OUT_2_net_1;
assign GPIO_OUT_3_net_1                      = GPIO_OUT_3_net_0[3];
assign GPIO_OUT_3                            = GPIO_OUT_3_net_1;
assign IHC_SUBSYSTEM_E51_IRQ_net_1           = IHC_SUBSYSTEM_E51_IRQ_net_0;
assign IHC_SUBSYSTEM_E51_IRQ                 = IHC_SUBSYSTEM_E51_IRQ_net_1;
assign IHC_SUBSYSTEM_U54_1_IRQ_net_1         = IHC_SUBSYSTEM_U54_1_IRQ_net_0;
assign IHC_SUBSYSTEM_U54_1_IRQ               = IHC_SUBSYSTEM_U54_1_IRQ_net_1;
assign IHC_SUBSYSTEM_U54_2_IRQ_net_1         = IHC_SUBSYSTEM_U54_2_IRQ_net_0;
assign IHC_SUBSYSTEM_U54_2_IRQ               = IHC_SUBSYSTEM_U54_2_IRQ_net_1;
assign IHC_SUBSYSTEM_U54_3_IRQ_net_1         = IHC_SUBSYSTEM_U54_3_IRQ_net_0;
assign IHC_SUBSYSTEM_U54_3_IRQ               = IHC_SUBSYSTEM_U54_3_IRQ_net_1;
assign IHC_SUBSYSTEM_U54_4_IRQ_net_1         = IHC_SUBSYSTEM_U54_4_IRQ_net_0;
assign IHC_SUBSYSTEM_U54_4_IRQ               = IHC_SUBSYSTEM_U54_4_IRQ_net_1;
assign PWM_0_net_1                           = PWM_0_net_0[0];
assign PWM_0                                 = PWM_0_net_1;
assign PLL0_SW_DRI_DRI_ARST_N_net_0          = PLL0_SW_DRI_DRI_ARST_N;
assign Q0_LANE0_DRI_DRI_ARST_N               = PLL0_SW_DRI_DRI_ARST_N_net_0;
assign PLL0_SW_DRI_DRI_CLK_net_0             = PLL0_SW_DRI_DRI_CLK;
assign Q0_LANE0_DRI_DRI_CLK                  = PLL0_SW_DRI_DRI_CLK_net_0;
assign RPI_ID_I2C_IRQ_net_1                  = RPI_ID_I2C_IRQ_net_0;
assign RPI_ID_I2C_IRQ                        = RPI_ID_I2C_IRQ_net_1;
assign fabric_sd_emmc_demux_select_out_net_1 = fabric_sd_emmc_demux_select_out_net_0;
assign fabric_sd_emmc_demux_select_out       = fabric_sd_emmc_demux_select_out_net_1;
assign APB_MMASTER_PRDATA_net_0              = APB_MMASTER_PRDATA;
assign APB_MMASTER_in_prdata[31:0]           = APB_MMASTER_PRDATA_net_0;
assign PLL0_SW_DRI_DRI_CTRL_net_0            = PLL0_SW_DRI_DRI_CTRL;
assign PLL0_SW_DRI_CTRL[10:0]                = PLL0_SW_DRI_DRI_CTRL_net_0;
assign Q0_LANE0_DRI_DRI_CTRL_net_0           = Q0_LANE0_DRI_DRI_CTRL;
assign Q0_LANE0_DRI_CTRL[10:0]               = Q0_LANE0_DRI_DRI_CTRL_net_0;
assign PLL0_SW_DRI_DRI_WDATA_net_0           = PLL0_SW_DRI_DRI_WDATA;
assign Q0_LANE0_DRI_DRI_WDATA[32:0]          = PLL0_SW_DRI_DRI_WDATA_net_0;
assign Q0_LANE1_DRI_DRI_CTRL_net_0           = Q0_LANE1_DRI_DRI_CTRL;
assign Q0_LANE1_DRI_CTRL[10:0]               = Q0_LANE1_DRI_DRI_CTRL_net_0;
assign Q0_LANE2_DRI_DRI_CTRL_net_0           = Q0_LANE2_DRI_DRI_CTRL;
assign Q0_LANE2_DRI_CTRL[10:0]               = Q0_LANE2_DRI_DRI_CTRL_net_0;
assign Q0_LANE3_DRI_DRI_CTRL_net_0           = Q0_LANE3_DRI_DRI_CTRL;
assign Q0_LANE3_DRI_CTRL[10:0]               = Q0_LANE3_DRI_DRI_CTRL_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign GPIO_OUT_0_net_0[0] = GPIO_OUT_net_0[0:0];
assign GPIO_OUT_1_net_0[1] = GPIO_OUT_net_0[1:1];
assign GPIO_OUT_2_net_0[2] = GPIO_OUT_net_0[2:2];
assign GPIO_OUT_3_net_0[3] = GPIO_OUT_net_0[3:3];
assign PWM_0_net_0[0]      = PWM_net_0[0];
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_0_28to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_0_28to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR[28:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2_8to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2_8to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[8:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4_8to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4_8to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[8:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORE_I2C_C0_0_WRAPPER
CORE_I2C_C0_0_WRAPPER CORE_I2C_C0_0_WRAPPER_1(
        // Inputs
        .APBslave_PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .APBslave_PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx ),
        .APBslave_PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2 ),
        .APBslave_PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0 ),
        // Outputs
        .INT              ( CORE_I2C_C0_INT_net_0 ),
        .APBslave_PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA ),
        // Inouts
        .COREI2C_C0_SCL   ( COREI2C_C0_SCL ),
        .COREI2C_C0_SDA   ( COREI2C_C0_SDA ) 
        );

//--------GPIO
GPIO COREGPIO_C0(
        // Inputs
        .PRESETN  ( PRESETN ),
        .PCLK     ( PCLK ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        .PADDR    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1 ),
        .PSEL     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx ),
        .PENABLE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PWRITE   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PWDATA   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA ),
        // Outputs
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .PRDATA   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA ),
        .PREADY   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY ),
        .PSLVERR  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR ) 
        );

//--------CoreUARTapb_C0
CoreUARTapb_C0 CoreUARTapb_C0_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3 ),
        .PSEL        ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1 ),
        // Outputs
        .TXRDY       ( TXRDY_net_0 ),
        .RXRDY       ( RXRDY_net_0 ),
        .PARITY_ERR  ( PARITY_ERR_net_0 ),
        .OVERFLOW    ( OVERFLOW_net_0 ),
        .TX          ( CoreUARTapb_TX_net_0 ),
        .FRAMING_ERR ( FRAMING_ERR_net_0 ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR ) 
        );

//--------fabric_sd_emmc_demux_select
fabric_sd_emmc_demux_select fabric_sd_emmc_demux_select_0(
        // Inputs
        .pclk                            ( PCLK ),
        .presetn                         ( PRESETN ),
        .penable                         ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE ),
        .psel                            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx ),
        .paddr                           ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR ),
        .pwrite                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE ),
        .pwdata                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA ),
        // Outputs
        .prdata                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA ),
        .pready                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY ),
        .pslverr                         ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR ),
        .fabric_sd_emmc_demux_select_out ( fabric_sd_emmc_demux_select_out_net_0 ) 
        );

//--------FIC_3_ADDRESS_GENERATION
FIC_3_ADDRESS_GENERATION FIC_3_ADDRESS_GENERATION_1(
        // Inputs
        .APB_MASTER_high_out_high_pready  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY ),
        .APB_MASTER_high_out_high_pslverr ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR ),
        .APB_MMASTER_in_penable           ( APB_MMASTER_in_penable ),
        .APB_MMASTER_in_psel              ( APB_MMASTER_in_psel ),
        .APB_MMASTER_in_pwrite            ( APB_MMASTER_in_pwrite ),
        .APBmslave0_PREADYS0              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY ),
        .APBmslave0_PSLVERRS0             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR ),
        .APBmslave15_PREADYS15            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY ),
        .APBmslave15_PSLVERRS15           ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR ),
        .APBmslave16_PREADYS16            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PREADY ),
        .APBmslave16_PSLVERRS16           ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSLVERR ),
        .APBmslave1_PREADYS1              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY ),
        .APBmslave1_PSLVERRS1             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR ),
        .APBmslave2_PREADYS2              ( VCC_net ), // tied to 1'b1 from definition
        .APBmslave2_PSLVERRS2             ( GND_net ), // tied to 1'b0 from definition
        .APBmslave3_PREADYS3              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY ),
        .APBmslave3_PSLVERRS3             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4       ( VCC_net ), // tied to 1'b1 from definition
        .FIC_3_0x4000_04xx_PSLVERRS4      ( GND_net ), // tied to 1'b0 from definition
        .APB_MASTER_high_out_high_prdata  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA ),
        .APB_MMASTER_in_paddr             ( APB_MMASTER_in_paddr ),
        .APB_MMASTER_in_pwdata            ( APB_MMASTER_in_pwdata ),
        .APBmslave0_PRDATAS0              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA ),
        .APBmslave15_PRDATAS15            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA ),
        .APBmslave16_PRDATAS16            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PRDATA ),
        .APBmslave1_PRDATAS1              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA ),
        .APBmslave2_PRDATAS2              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0 ),
        .APBmslave3_PRDATAS3              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0 ),
        // Outputs
        .APB_MASTER_high_out_high_penable ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE ),
        .APB_MASTER_high_out_high_psel    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx ),
        .APB_MASTER_high_out_high_pwrite  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE ),
        .APB_MMASTER_in_pready            ( APB_MMASTER_PREADY ),
        .APB_MMASTER_in_pslverr           ( APB_MMASTER_PSLVERR ),
        .APBmslave0_PENABLES              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .APBmslave0_PSELS0                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx ),
        .APBmslave0_PWRITES               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .APBmslave15_PENABLES             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE ),
        .APBmslave15_PSELS15              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx ),
        .APBmslave15_PWRITES              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE ),
        .APBmslave16_PENABLES             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE ),
        .APBmslave16_PSELS16              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx ),
        .APBmslave16_PWRITES              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE ),
        .APBmslave1_PSELS1                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx ),
        .APBmslave2_PSELS2                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx ),
        .APBmslave3_PSELS3                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx ),
        .FIC_3_0x4000_04xx_PSELS4         ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx ),
        .APB_MASTER_high_out_high_paddr   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR ),
        .APB_MASTER_high_out_high_pwdata  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA ),
        .APB_MMASTER_in_prdata            ( APB_MMASTER_PRDATA ),
        .APBmslave0_PADDRS                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR ),
        .APBmslave0_PWDATAS               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA ),
        .APBmslave15_PADDRS               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR ),
        .APBmslave15_PWDATAS              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA ),
        .APBmslave16_PADDRS               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR ),
        .APBmslave16_PWDATAS              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA ) 
        );

//--------IHC_SUBSYSTEM
IHC_SUBSYSTEM IHC_SUBSYSTEM_0(
        // Inputs
        .PENABLE   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE ),
        .PSEL      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx ),
        .PWRITE    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE ),
        .pclk      ( PCLK ),
        .presetn   ( PRESETN ),
        .PADDR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR ),
        .PWDATA    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA ),
        // Outputs
        .E51_IRQ   ( IHC_SUBSYSTEM_E51_IRQ_net_0 ),
        .PREADY    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY ),
        .PSLVERR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR ),
        .U54_1_IRQ ( IHC_SUBSYSTEM_U54_1_IRQ_net_0 ),
        .U54_2_IRQ ( IHC_SUBSYSTEM_U54_2_IRQ_net_0 ),
        .U54_3_IRQ ( IHC_SUBSYSTEM_U54_3_IRQ_net_0 ),
        .U54_4_IRQ ( IHC_SUBSYSTEM_U54_4_IRQ_net_0 ),
        .PRDATA    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA ) 
        );

//--------corepwm_C0
corepwm_C0 PWM(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETN ( PRESETN ),
        .PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0 ),
        .PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx ),
        .PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA ),
        .PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        // Outputs
        .PWM     ( PWM_net_0 ),
        .PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA ),
        .PREADY  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY ),
        .PSLVERR ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR ) 
        );

//--------RECONFIGURATION_INTERFACE
RECONFIGURATION_INTERFACE RECONFIGURATION_INTERFACE_0(
        // Inputs
        .PCLK                   ( PCLK ),
        .PSTRB                  ( PSTRB ),
        .PRESETN                ( PRESETN ),
        .Q0_LANE0_DRI_RDATA     ( Q0_LANE0_DRI_RDATA ),
        .Q0_LANE0_DRI_INTERRUPT ( Q0_LANE0_DRI_INTERRUPT ),
        .Q0_LANE1_DRI_RDATA     ( Q0_LANE1_DRI_RDATA ),
        .Q0_LANE1_DRI_INTERRUPT ( Q0_LANE1_DRI_INTERRUPT ),
        .Q0_LANE2_DRI_RDATA     ( Q0_LANE2_DRI_RDATA ),
        .Q0_LANE2_DRI_INTERRUPT ( Q0_LANE2_DRI_INTERRUPT ),
        .Q0_LANE3_DRI_RDATA     ( Q0_LANE3_DRI_RDATA ),
        .Q0_LANE3_DRI_INTERRUPT ( Q0_LANE3_DRI_INTERRUPT ),
        .PLL0_SW_DRI_RDATA      ( PLL0_SW_DRI_RDATA ),
        .PLL0_SW_DRI_INTERRUPT  ( PLL0_SW_DRI_INTERRUPT ),
        .PSEL                   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx ),
        .PENABLE                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE ),
        .PWRITE                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE ),
        .PADDR                  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_0 ),
        .PWDATA                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA ),
        // Outputs
        .PINTERRUPT             (  ),
        .PTIMEOUT               (  ),
        .BUSERROR               (  ),
        .DRI_CLK                ( PLL0_SW_DRI_DRI_CLK ),
        .DRI_WDATA              ( PLL0_SW_DRI_DRI_WDATA ),
        .DRI_ARST_N             ( PLL0_SW_DRI_DRI_ARST_N ),
        .Q0_LANE0_DRI_CTRL      ( Q0_LANE0_DRI_DRI_CTRL ),
        .Q0_LANE1_DRI_CTRL      ( Q0_LANE1_DRI_DRI_CTRL ),
        .Q0_LANE2_DRI_CTRL      ( Q0_LANE2_DRI_DRI_CTRL ),
        .Q0_LANE3_DRI_CTRL      ( Q0_LANE3_DRI_DRI_CTRL ),
        .PLL0_SW_DRI_CTRL       ( PLL0_SW_DRI_DRI_CTRL ),
        .PRDATA                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PRDATA ),
        .PREADY                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PREADY ),
        .PSLVERR                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSLVERR ) 
        );

//--------CORE_I2C_C0_0_WRAPPER
CORE_I2C_C0_0_WRAPPER RPi_ID_I2C(
        // Inputs
        .APBslave_PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .APBslave_PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx ),
        .APBslave_PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4 ),
        .APBslave_PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2 ),
        // Outputs
        .INT              ( RPI_ID_I2C_IRQ_net_0 ),
        .APBslave_PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA ),
        // Inouts
        .COREI2C_C0_SCL   ( RPi_ID_SD ),
        .COREI2C_C0_SDA   ( RPi_ID_SC ) 
        );


endmodule
