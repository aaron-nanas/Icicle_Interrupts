/*******************************************************************************
 * Copyright 2019-2022 Microchip FPGA Embedded Systems Solutions.
 *
 * SPDX-License-Identifier: MIT
 *
 * Application code running on U54_1
 *
 * PolarFire SoC MSS GPIO interrupt example project
 */

#include <stdio.h>
#include <string.h>
#include "mpfs_hal/mss_hal.h"
#include "drivers/mss/mss_gpio/mss_gpio.h"
#include "drivers/mss/mss_mmuart/mss_uart.h"
#include "inc/uart_mapping.h"
extern struct mss_uart_instance* p_uartmap_u54_1;
/******************************************************************************
 * Instruction message. These message will be displayed on the UART terminal 
   when the program starts.
 *****************************************************************************/


uint8_t g_message2[] =
"\r\n\r\n\r\n **** PolarFire SoC MSS GPIO example ****\r\n\r\n\r\n\
This program is running on u54_1.\r\n\r\n\
Observe the LEDs blinking. LEDs toggle every time the SYSTICK timer expires\r\n\
\r\n\
Press 1 to generate interrupt on GPIO2 pin 30.\r\n\
Press 2 to generate interrupt on GPIO2 pin 31.\r\n\
Press 3 to generate interrupt on F2M_0 signal.\r\n";

#define RX_BUFF_SIZE    64U

uint8_t g_rx_buff[RX_BUFF_SIZE] = {0};
volatile uint8_t g_rx_size = 0U;

#define BUFFER_SIZE (1024)

void Write_to_Register(uint32_t register_address, uint32_t register_value)
{
    uint32_t* addr = (uint32_t*)(register_address);
    *addr = register_value;
}

uint32_t Read_from_Register(uint32_t register_address)
{
    uint32_t* value = (uint32_t*)register_address;
    return *value;
}

/* Main function for the hart1(U54 processor).
 * Application code running on hart1 is placed here.
 * On Icicle kit, apart from the UART menu, you can also use push button
 * switches to generate GPIO interrupts. The mapping is as follows
 * push button SW1 - MSS_INT_F2M[0]
 * push button SW2 - GPIO2_30
 * push button SW3 - GPIO2_31
 */

void u54_1(void)
{
    uint64_t mcycle_start = 0U;
    uint64_t mcycle_end = 0U;
    uint64_t delta_mcycle = 0U;
    uint64_t hartid = read_csr(mhartid);
    uint8_t cnt = 16U, int_num = 0U;

    /* Clear pending software interrupt in case there was any.
     * Enable only the software interrupt so that the E51 core can bring this
     * core out of WFI by raising a software interrupt In case of external,
     * bootloader not present
     */

    clear_soft_interrupt();
    set_csr(mie, MIP_MSIP);

#if (IMAGE_LOADED_BY_BOOTLOADER == 0)

    /*Put this hart into WFI.*/

    do
    {
        __asm("wfi");
    }while(0 == (read_csr(mip) & MIP_MSIP));

    /* The hart is out of WFI, clear the SW interrupt. Hear onwards Application
     * can enable and use any interrupts as required */
    clear_soft_interrupt();
#endif

    PLIC_init();
    __enable_irq();

    /* Reset the peripherals turn on the clocks */

    (void)mss_config_clk_rst(MSS_PERIPH_MMUART_U54_1, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);
    (void)mss_config_clk_rst(MSS_PERIPH_MMUART_U54_2, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);
    (void)mss_config_clk_rst(MSS_PERIPH_MMUART_U54_3, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);
    (void)mss_config_clk_rst(MSS_PERIPH_GPIO0, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);
    (void)mss_config_clk_rst(MSS_PERIPH_GPIO1, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);
    (void)mss_config_clk_rst(MSS_PERIPH_GPIO2, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);
    (void)mss_config_clk_rst(MSS_PERIPH_CFM, (uint8_t) MPFS_HAL_FIRST_HART, PERIPHERAL_ON);

   /* mmuart1 initialization */

    MSS_UART_init( p_uartmap_u54_1, MSS_UART_115200_BAUD, (MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT));

    MSS_UART_polled_tx_string(p_uartmap_u54_1, g_message2);

    mcycle_start = readmcycle();

    /* Configure Systick. The tick rate is configured in mss_sw_config.h */

    SysTick_Config();

    /* Making sure that the GPIO2 interrupts are routed to the PLIC instead of
     * GPIO0 and GPIO1.
     * Please see the mss_gpio.h for more description on how GPIO interrupts
     * are routed to the PLIC */

    SYSREG->GPIO_INTERRUPT_FAB_CR = 0xFFFFFFFFUL;

    PLIC_SetPriority_Threshold(0);

    for (int_num = 0u; int_num <= GPIO2_NON_DIRECT_PLIC; int_num++)
    {
        PLIC_SetPriority(GPIO0_BIT0_or_GPIO2_BIT0_PLIC_0 + int_num, 2u);
    }

    MSS_GPIO_init(GPIO2_LO);

    for (cnt = 16u; cnt< 20u; cnt++)
    {
        MSS_GPIO_config(GPIO2_LO, cnt, MSS_GPIO_OUTPUT_MODE);
    }

    MSS_GPIO_config(GPIO2_LO, MSS_GPIO_26, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(GPIO2_LO, MSS_GPIO_27, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(GPIO2_LO, MSS_GPIO_28, MSS_GPIO_OUTPUT_MODE);

    //MSS_GPIO_config(GPIO2_LO, MSS_GPIO_30, MSS_GPIO_INPUT_MODE | MSS_GPIO_IRQ_LEVEL_HIGH);

    MSS_GPIO_config(GPIO2_LO, MSS_GPIO_30, MSS_GPIO_INPUT_MODE | MSS_GPIO_IRQ_EDGE_POSITIVE);

    MSS_GPIO_config(GPIO2_LO, MSS_GPIO_31, MSS_GPIO_INPUT_MODE | MSS_GPIO_IRQ_EDGE_POSITIVE);

    MSS_GPIO_set_outputs(GPIO2_LO, 0);

    MSS_GPIO_enable_irq(GPIO2_LO, MSS_GPIO_30);
    MSS_GPIO_enable_irq(GPIO2_LO, MSS_GPIO_31);

    PLIC_SetPriority(FABRIC_F2H_0_PLIC, 2);
    PLIC_EnableIRQ(FABRIC_F2H_0_PLIC);

    uint8_t str_buffer[BUFFER_SIZE] = {0};

    uint8_t gpio_16_value = 0;
    uint8_t gpio_17_value = 0;
    uint8_t gpio_18_value = 0;
    uint8_t gpio_19_value = 0;

    while (1u)
    {
        g_rx_size = MSS_UART_get_rx(p_uartmap_u54_1, g_rx_buff, sizeof(g_rx_buff));

        if (g_rx_size > 0)
        {
            switch (g_rx_buff[0])
            {
            case '1':
            {
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_26, 1u);

                uint8_t gpio_16_config = Read_from_Register(0x20122040);
                snprintf(str_buffer, 256, "GPIO_16 Config: 0x%08X\r\n", gpio_16_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                gpio_16_value = gpio_16_value ^ 0x01;
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_16, gpio_16_value);

                uint8_t gpio_26_config = Read_from_Register(0x20122068);
                snprintf(str_buffer, 256, "GPIO_26 Config: 0x%08X\r\n", gpio_26_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                uint8_t gpio_30_config = Read_from_Register(0x20122078);
                snprintf(str_buffer, 256, "GPIO_30 Config: 0x%08X\r\n", gpio_30_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                break;
            }

            case '2':
            {
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_27, 1u);

                uint8_t gpio_17_config = Read_from_Register(0x20122044);
                snprintf(str_buffer, 256, "GPIO_17 Config: 0x%08X\r\n", gpio_17_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                gpio_17_value = gpio_17_value ^ 0x01;
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_17, gpio_17_value);

                uint8_t gpio_27_config = Read_from_Register(0x2012206C);
                snprintf(str_buffer, 256, "GPIO_27 Config: 0x%08X\r\n", gpio_27_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                uint8_t gpio_31_config = Read_from_Register(0x2012207C);
                snprintf(str_buffer, 256, "GPIO_31 Config: 0x%08X\r\n", gpio_31_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                break;
            }

            case '3':
            {
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_28, 1);

                uint8_t gpio_18_config = Read_from_Register(0x20122048);
                snprintf(str_buffer, 256, "GPIO_18 Config: 0x%08X\r\n", gpio_18_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                gpio_18_value = gpio_18_value ^ 0x01;
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_18, gpio_18_value);
                break;
            }

            case '4':
            {
                uint8_t gpio_19_config = Read_from_Register(0x2012204C);
                snprintf(str_buffer, 256, "GPIO_19 Config: 0x%08X\r\n", gpio_19_config);
                MSS_UART_polled_tx_string(p_uartmap_u54_1, str_buffer);

                gpio_19_value = gpio_19_value ^ 0x01;
                MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_19, gpio_19_value);

                break;
            }

            default:

                /* Echo the characters received from the terminal */

                MSS_UART_polled_tx_string(p_uartmap_u54_1, g_rx_buff);
            }

            g_rx_size = 0;
        }
    }
}

/* GPIO interrupt handlers */

uint8_t  gpio1_bit16_or_gpio2_bit30_plic_30_IRQHandler(void)
{
    MSS_UART_polled_tx_string(p_uartmap_u54_1, "gpio2_pin 30 Interrupt\r\n");
    MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_26, 0);
    MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_30, 0);
    MSS_GPIO_clear_irq(GPIO2_LO, MSS_GPIO_30);
    return EXT_IRQ_KEEP_ENABLED;
}

uint8_t gpio1_bit17_or_gpio2_bit31_plic_31_IRQHandler(void)
{
    MSS_UART_polled_tx_string(p_uartmap_u54_1, "gpio2_pin 31 Interrupt\r\n" );
    MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_27, 0);
    MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_31, 0);
    MSS_GPIO_clear_irq(GPIO2_LO, MSS_GPIO_31);
    return EXT_IRQ_KEEP_ENABLED;
}

uint8_t fabric_f2h_0_plic_IRQHandler(void)
{
    MSS_UART_polled_tx_string(p_uartmap_u54_1, "f2h_0 interrupt\r\n" );
    MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_28, 0);
    return EXT_IRQ_KEEP_ENABLED;
}

void SysTick_Handler_h1_IRQHandler(void)
{
    uint32_t hart_id = read_csr(mhartid);
    static volatile uint8_t value = 0u;

    if (1u == hart_id)
    {
        if(0u == value)
        {
            value = 0x01u;
        }
        else
        {
            value = 0x00u;
        }

        //MSS_GPIO_set_output(GPIO2_LO, MSS_GPIO_19, value);
    }
}
