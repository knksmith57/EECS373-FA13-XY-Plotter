//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Mon Dec 09 05:25:04 2013
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 100; // 10MHz

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// 10MHz Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  TOP
//////////////////////////////////////////////////////////////////////
TOP TOP_0 (
    // Inputs
    .UART_0_RXD({1{1'b0}}),
    .MAC_CRSDV({1{1'b0}}),
    .MAC_RXER({1{1'b0}}),
    .MSS_RESET_N(NSYSRESET),
    .MAINXIN({1{1'b0}}),
    .F2M_GPI_9({1{1'b0}}),
    .SPI_0_DI({1{1'b0}}),
    .global_reset(NSYSRESET),
    .RX({1{1'b0}}),
    .MAC_RXD({2{1'b0}}),

    // Outputs
    .UART_0_TXD( ),
    .MAC_MDC( ),
    .MAC_TXEN( ),
    .GLC( ),
    .M2F_GPO_10( ),
    .SPI_0_DO( ),
    .pwm_output( ),
    .TX( ),
    .int( ),
    .edge_detected( ),
    .MAC_TXD( ),
    .motor_output( ),
    .motor_output_0( ),

    // Inouts
    .MAC_MDIO( ),
    .SPI_0_CLK( ),
    .SPI_0_SS( ),
    .I2C_1_SCL( ),
    .I2C_1_SDA( )

);

endmodule

