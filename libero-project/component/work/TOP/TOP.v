//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Dec 09 05:25:04 2013
// Version: v11.0 11.0.0.23
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// TOP
module TOP(
    // Inputs
    F2M_GPI_9,
    MAC_CRSDV,
    MAC_RXD,
    MAC_RXER,
    MAINXIN,
    MSS_RESET_N,
    RX,
    SPI_0_DI,
    UART_0_RXD,
    global_reset,
    // Outputs
    GLC,
    M2F_GPO_10,
    MAC_MDC,
    MAC_TXD,
    MAC_TXEN,
    SPI_0_DO,
    TX,
    UART_0_TXD,
    edge_detected,
    int,
    motor_output,
    motor_output_0,
    pwm_output,
    // Inouts
    I2C_1_SCL,
    I2C_1_SDA,
    MAC_MDIO,
    SPI_0_CLK,
    SPI_0_SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        F2M_GPI_9;
input        MAC_CRSDV;
input  [1:0] MAC_RXD;
input        MAC_RXER;
input        MAINXIN;
input        MSS_RESET_N;
input        RX;
input        SPI_0_DI;
input        UART_0_RXD;
input        global_reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       GLC;
output       M2F_GPO_10;
output       MAC_MDC;
output [1:0] MAC_TXD;
output       MAC_TXEN;
output       SPI_0_DO;
output       TX;
output       UART_0_TXD;
output       edge_detected;
output       int;
output [3:0] motor_output;
output [3:0] motor_output_0;
output       pwm_output;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        I2C_1_SCL;
inout        I2C_1_SDA;
inout        MAC_MDIO;
inout        SPI_0_CLK;
inout        SPI_0_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreAPB3_1_APBmslave0_PENABLE;
wire          CoreAPB3_1_APBmslave0_PREADY;
wire          CoreAPB3_1_APBmslave0_PSELx;
wire          CoreAPB3_1_APBmslave0_PSLVERR;
wire          CoreAPB3_1_APBmslave0_PWRITE;
wire          CoreAPB3_1_APBmslave1_PREADY;
wire          CoreAPB3_1_APBmslave1_PSELx;
wire          CoreAPB3_1_APBmslave1_PSLVERR;
wire   [31:0] CoreAPB3_1_APBmslave2_PRDATA;
wire          CoreAPB3_1_APBmslave2_PREADY;
wire          CoreAPB3_1_APBmslave2_PSELx;
wire          CoreAPB3_1_APBmslave2_PSLVERR;
wire          edge_detected_net_0;
wire          F2M_GPI_9;
wire          GLC_net_0;
wire          global_reset;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire          int_net_0;
wire          M2F_GPO_10_net_0;
wire          MAC_CRSDV;
wire          MAC_MDC_net_0;
wire          MAC_MDIO;
wire   [1:0]  MAC_RXD;
wire          MAC_RXER;
wire   [1:0]  MAC_TXD_net_0;
wire          MAC_TXEN_net_0;
wire          MAINXIN;
wire          motor_apb_interface_0_FAB_INT;
wire   [15:0] motor_apb_interface_0_global_position_x_0;
wire   [15:0] motor_apb_interface_0_global_position_y_0;
wire          motor_apb_interface_0_GO;
wire   [15:0] motor_apb_interface_0_num_step_movement_x_0;
wire   [15:0] motor_apb_interface_0_num_step_movement_y_0;
wire   [17:0] motor_apb_interface_0_pen_write_1;
wire   [31:0] motor_apb_interface_0_step_movement_period_x;
wire   [31:0] motor_apb_interface_0_step_movement_period_y;
wire   [3:0]  motor_output_net_0;
wire   [3:0]  motor_output_0_net_0;
wire          MSS_RESET_N;
wire          pwm_output_net_0;
wire          RX;
wire          SPI_0_CLK;
wire          SPI_0_DI;
wire          SPI_0_DO_net_0;
wire          SPI_0_SS;
wire   [15:0] stepper_motor_control_0_updated_global_position_0;
wire   [15:0] stepper_motor_control_0_updated_num_step_movements_0;
wire   [15:0] stepper_motor_control_1_updated_global_position_0;
wire   [15:0] stepper_motor_control_1_updated_num_step_movements_0;
wire          TX_net_0;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          Webserver_0_FAB_CLK;
wire          Webserver_0_M2F_RESET_N;
wire          Webserver_0_MSS_MASTER_APB_PENABLE;
wire   [31:0] Webserver_0_MSS_MASTER_APB_PRDATA;
wire          Webserver_0_MSS_MASTER_APB_PREADY;
wire          Webserver_0_MSS_MASTER_APB_PSELx;
wire          Webserver_0_MSS_MASTER_APB_PSLVERR;
wire   [31:0] Webserver_0_MSS_MASTER_APB_PWDATA;
wire          Webserver_0_MSS_MASTER_APB_PWRITE;
wire          UART_0_TXD_net_1;
wire          MAC_MDC_net_1;
wire          MAC_TXEN_net_1;
wire          GLC_net_1;
wire          M2F_GPO_10_net_1;
wire          SPI_0_DO_net_1;
wire          pwm_output_net_1;
wire          TX_net_1;
wire          int_net_1;
wire          edge_detected_net_1;
wire   [1:0]  MAC_TXD_net_1;
wire   [3:0]  motor_output_net_1;
wire   [3:0]  motor_output_0_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_1_APBmslave0_PADDR;
wire   [7:0]  CoreAPB3_1_APBmslave0_PADDR_2_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave0_PADDR_2;
wire   [4:0]  CoreAPB3_1_APBmslave0_PADDR_1_4to0;
wire   [4:0]  CoreAPB3_1_APBmslave0_PADDR_1;
wire   [4:0]  CoreAPB3_1_APBmslave0_PADDR_0_4to0;
wire   [4:0]  CoreAPB3_1_APBmslave0_PADDR_0;
wire   [31:8] CoreAPB3_1_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_1_APBmslave0_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_1_APBmslave0_PRDATA_0;
wire   [7:0]  CoreAPB3_1_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_1_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_1_APBmslave0_PWDATA_1_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave0_PWDATA_1;
wire   [7:0]  CoreAPB3_1_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave0_PWDATA_0;
wire   [31:8] CoreAPB3_1_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_1_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_1_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_1_APBmslave1_PRDATA;
wire   [31:20]Webserver_0_MSS_MASTER_APB_PADDR_0_31to20;
wire   [19:0] Webserver_0_MSS_MASTER_APB_PADDR_0_19to0;
wire   [31:0] Webserver_0_MSS_MASTER_APB_PADDR_0;
wire   [19:0] Webserver_0_MSS_MASTER_APB_PADDR;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net               = 1'b1;
assign GND_net               = 1'b0;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UART_0_TXD_net_1     = UART_0_TXD_net_0;
assign UART_0_TXD           = UART_0_TXD_net_1;
assign MAC_MDC_net_1        = MAC_MDC_net_0;
assign MAC_MDC              = MAC_MDC_net_1;
assign MAC_TXEN_net_1       = MAC_TXEN_net_0;
assign MAC_TXEN             = MAC_TXEN_net_1;
assign GLC_net_1            = GLC_net_0;
assign GLC                  = GLC_net_1;
assign M2F_GPO_10_net_1     = M2F_GPO_10_net_0;
assign M2F_GPO_10           = M2F_GPO_10_net_1;
assign SPI_0_DO_net_1       = SPI_0_DO_net_0;
assign SPI_0_DO             = SPI_0_DO_net_1;
assign pwm_output_net_1     = pwm_output_net_0;
assign pwm_output           = pwm_output_net_1;
assign TX_net_1             = TX_net_0;
assign TX                   = TX_net_1;
assign int_net_1            = int_net_0;
assign int                  = int_net_1;
assign edge_detected_net_1  = edge_detected_net_0;
assign edge_detected        = edge_detected_net_1;
assign MAC_TXD_net_1        = MAC_TXD_net_0;
assign MAC_TXD[1:0]         = MAC_TXD_net_1;
assign motor_output_net_1   = motor_output_net_0;
assign motor_output[3:0]    = motor_output_net_1;
assign motor_output_0_net_1 = motor_output_0_net_0;
assign motor_output_0[3:0]  = motor_output_0_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_1_APBmslave0_PADDR_2_7to0 = CoreAPB3_1_APBmslave0_PADDR[7:0];
assign CoreAPB3_1_APBmslave0_PADDR_2 = { CoreAPB3_1_APBmslave0_PADDR_2_7to0 };
assign CoreAPB3_1_APBmslave0_PADDR_1_4to0 = CoreAPB3_1_APBmslave0_PADDR[4:0];
assign CoreAPB3_1_APBmslave0_PADDR_1 = { CoreAPB3_1_APBmslave0_PADDR_1_4to0 };
assign CoreAPB3_1_APBmslave0_PADDR_0_4to0 = CoreAPB3_1_APBmslave0_PADDR[4:0];
assign CoreAPB3_1_APBmslave0_PADDR_0 = { CoreAPB3_1_APBmslave0_PADDR_0_4to0 };

assign CoreAPB3_1_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_1_APBmslave0_PRDATA_0_7to0 = CoreAPB3_1_APBmslave0_PRDATA[7:0];
assign CoreAPB3_1_APBmslave0_PRDATA_0 = { CoreAPB3_1_APBmslave0_PRDATA_0_31to8, CoreAPB3_1_APBmslave0_PRDATA_0_7to0 };

assign CoreAPB3_1_APBmslave0_PWDATA_1_7to0 = CoreAPB3_1_APBmslave0_PWDATA[7:0];
assign CoreAPB3_1_APBmslave0_PWDATA_1 = { CoreAPB3_1_APBmslave0_PWDATA_1_7to0 };
assign CoreAPB3_1_APBmslave0_PWDATA_0_7to0 = CoreAPB3_1_APBmslave0_PWDATA[7:0];
assign CoreAPB3_1_APBmslave0_PWDATA_0 = { CoreAPB3_1_APBmslave0_PWDATA_0_7to0 };

assign CoreAPB3_1_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_1_APBmslave1_PRDATA_0_7to0 = CoreAPB3_1_APBmslave1_PRDATA[7:0];
assign CoreAPB3_1_APBmslave1_PRDATA_0 = { CoreAPB3_1_APBmslave1_PRDATA_0_31to8, CoreAPB3_1_APBmslave1_PRDATA_0_7to0 };

assign Webserver_0_MSS_MASTER_APB_PADDR_0_31to20 = 12'h0;
assign Webserver_0_MSS_MASTER_APB_PADDR_0_19to0 = Webserver_0_MSS_MASTER_APB_PADDR[19:0];
assign Webserver_0_MSS_MASTER_APB_PADDR_0 = { Webserver_0_MSS_MASTER_APB_PADDR_0_31to20, Webserver_0_MSS_MASTER_APB_PADDR_0_19to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.0.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 12 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 2 ) )
CoreAPB3_1(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( Webserver_0_MSS_MASTER_APB_PWRITE ),
        .PENABLE    ( Webserver_0_MSS_MASTER_APB_PENABLE ),
        .PSEL       ( Webserver_0_MSS_MASTER_APB_PSELx ),
        .PREADYS0   ( CoreAPB3_1_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_1_APBmslave0_PSLVERR ),
        .PREADYS1   ( CoreAPB3_1_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_1_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_1_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_1_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( Webserver_0_MSS_MASTER_APB_PADDR_0 ),
        .PWDATA     ( Webserver_0_MSS_MASTER_APB_PWDATA ),
        .PRDATAS0   ( CoreAPB3_1_APBmslave0_PRDATA_0 ),
        .PRDATAS1   ( CoreAPB3_1_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( CoreAPB3_1_APBmslave2_PRDATA ),
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( Webserver_0_MSS_MASTER_APB_PREADY ),
        .PSLVERR    ( Webserver_0_MSS_MASTER_APB_PSLVERR ),
        .PWRITES    ( CoreAPB3_1_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_1_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_1_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_1_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_1_APBmslave2_PSELx ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( Webserver_0_MSS_MASTER_APB_PRDATA ),
        .PADDRS     ( CoreAPB3_1_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_1_APBmslave0_PWDATA ) 
        );

//--------TOP_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
TOP_CoreUARTapb_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 18 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 0 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 0 ) )
CoreUARTapb_0(
        // Inputs
        .PCLK        ( Webserver_0_FAB_CLK ),
        .PRESETN     ( Webserver_0_M2F_RESET_N ),
        .PSEL        ( CoreAPB3_1_APBmslave0_PSELx ),
        .PENABLE     ( CoreAPB3_1_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_1_APBmslave0_PWRITE ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_1_APBmslave0_PADDR_0 ),
        .PWDATA      ( CoreAPB3_1_APBmslave0_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          (  ),
        .PREADY      ( CoreAPB3_1_APBmslave0_PREADY ),
        .PSLVERR     ( CoreAPB3_1_APBmslave0_PSLVERR ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_1_APBmslave0_PRDATA ) 
        );

//--------TOP_CoreUARTapb_1_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
TOP_CoreUARTapb_1_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 18 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 0 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 0 ) )
CoreUARTapb_1(
        // Inputs
        .PCLK        ( Webserver_0_FAB_CLK ),
        .PRESETN     ( Webserver_0_M2F_RESET_N ),
        .PSEL        ( CoreAPB3_1_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_1_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_1_APBmslave0_PWRITE ),
        .RX          ( VCC_net ),
        .PADDR       ( CoreAPB3_1_APBmslave0_PADDR_1 ),
        .PWDATA      ( CoreAPB3_1_APBmslave0_PWDATA_1 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_1_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_1_APBmslave1_PSLVERR ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_1_APBmslave1_PRDATA ) 
        );

//--------motor_apb_interface
motor_apb_interface motor_apb_interface_0(
        // Inputs
        .PCLK                        ( Webserver_0_FAB_CLK ),
        .PRESERN                     ( Webserver_0_M2F_RESET_N ),
        .PSEL                        ( CoreAPB3_1_APBmslave2_PSELx ),
        .PENABLE                     ( CoreAPB3_1_APBmslave0_PENABLE ),
        .PWRITE                      ( CoreAPB3_1_APBmslave0_PWRITE ),
        .global_reset                ( global_reset ),
        .PADDR                       ( CoreAPB3_1_APBmslave0_PADDR_2 ),
        .PWDATA                      ( CoreAPB3_1_APBmslave0_PWDATA ),
        .updated_num_step_movement_x ( stepper_motor_control_0_updated_num_step_movements_0 ),
        .updated_global_position_x   ( stepper_motor_control_0_updated_global_position_0 ),
        .updated_num_step_movement_y ( stepper_motor_control_1_updated_num_step_movements_0 ),
        .updated_global_position_y   ( stepper_motor_control_1_updated_global_position_0 ),
        // Outputs
        .PREADY                      ( CoreAPB3_1_APBmslave2_PREADY ),
        .PSLVERR                     ( CoreAPB3_1_APBmslave2_PSLVERR ),
        .GO                          ( motor_apb_interface_0_GO ),
        .FAB_INT                     ( motor_apb_interface_0_FAB_INT ),
        .PRDATA                      ( CoreAPB3_1_APBmslave2_PRDATA ),
        .num_step_movement_x         ( motor_apb_interface_0_num_step_movement_x_0 ),
        .step_movement_period_x      ( motor_apb_interface_0_step_movement_period_x ),
        .global_position_x           ( motor_apb_interface_0_global_position_x_0 ),
        .num_step_movement_y         ( motor_apb_interface_0_num_step_movement_y_0 ),
        .step_movement_period_y      ( motor_apb_interface_0_step_movement_period_y ),
        .global_position_y           ( motor_apb_interface_0_global_position_y_0 ),
        .pen_write                   ( motor_apb_interface_0_pen_write_1 ) 
        );

//--------servo_pwm
servo_pwm servo_pwm_0(
        // Inputs
        .fab_clk    ( Webserver_0_FAB_CLK ),
        .reset      ( Webserver_0_M2F_RESET_N ),
        .write_pen  ( motor_apb_interface_0_pen_write_1 ),
        // Outputs
        .pwm_output ( pwm_output_net_0 ) 
        );

//--------stepper_motor_control
stepper_motor_control stepper_motor_control_0(
        // Inputs
        .fab_clk                    ( Webserver_0_FAB_CLK ),
        .reset                      ( Webserver_0_M2F_RESET_N ),
        .GO                         ( motor_apb_interface_0_GO ),
        .num_step_movements         ( motor_apb_interface_0_num_step_movement_x_0 ),
        .step_movement_period       ( motor_apb_interface_0_step_movement_period_x ),
        .global_position            ( motor_apb_interface_0_global_position_x_0 ),
        // Outputs
        .updated_num_step_movements ( stepper_motor_control_0_updated_num_step_movements_0 ),
        .updated_global_position    ( stepper_motor_control_0_updated_global_position_0 ),
        .motor_output               ( motor_output_net_0 ) 
        );

//--------stepper_motor_control
stepper_motor_control stepper_motor_control_1(
        // Inputs
        .fab_clk                    ( Webserver_0_FAB_CLK ),
        .reset                      ( Webserver_0_M2F_RESET_N ),
        .GO                         ( motor_apb_interface_0_GO ),
        .num_step_movements         ( motor_apb_interface_0_num_step_movement_y_0 ),
        .step_movement_period       ( motor_apb_interface_0_step_movement_period_y ),
        .global_position            ( motor_apb_interface_0_global_position_y_0 ),
        // Outputs
        .updated_num_step_movements ( stepper_motor_control_1_updated_num_step_movements_0 ),
        .updated_global_position    ( stepper_motor_control_1_updated_global_position_0 ),
        .motor_output               ( motor_output_0_net_0 ) 
        );

//--------uart_irq_delay
uart_irq_delay uart_irq_delay_0(
        // Inputs
        .rx            ( RX ),
        .fab_clk       ( Webserver_0_FAB_CLK ),
        .reset         ( Webserver_0_M2F_RESET_N ),
        // Outputs
        .int           ( int_net_0 ),
        .edge_detected ( edge_detected_net_0 ) 
        );

//--------Webserver
Webserver Webserver_0(
        // Inputs
        .UART_0_RXD  ( UART_0_RXD ),
        .MSS_RESET_N ( MSS_RESET_N ),
        .MAC_CRSDV   ( MAC_CRSDV ),
        .MAC_RXER    ( MAC_RXER ),
        .MAINXIN     ( MAINXIN ),
        .F2M_GPI_9   ( F2M_GPI_9 ),
        .SPI_0_DI    ( SPI_0_DI ),
        .FABINT      ( motor_apb_interface_0_FAB_INT ),
        .F2M_GPI_1   ( int_net_0 ),
        .MSSPREADY   ( Webserver_0_MSS_MASTER_APB_PREADY ),
        .MSSPSLVERR  ( Webserver_0_MSS_MASTER_APB_PSLVERR ),
        .MAC_RXD     ( MAC_RXD ),
        .MSSPRDATA   ( Webserver_0_MSS_MASTER_APB_PRDATA ),
        // Outputs
        .UART_0_TXD  ( UART_0_TXD_net_0 ),
        .MAC_TXEN    ( MAC_TXEN_net_0 ),
        .MAC_MDC     ( MAC_MDC_net_0 ),
        .GLC         ( GLC_net_0 ),
        .M2F_GPO_10  ( M2F_GPO_10_net_0 ),
        .SPI_0_DO    ( SPI_0_DO_net_0 ),
        .FAB_CLK     ( Webserver_0_FAB_CLK ),
        .M2F_RESET_N ( Webserver_0_M2F_RESET_N ),
        .MSSPSEL     ( Webserver_0_MSS_MASTER_APB_PSELx ),
        .MSSPENABLE  ( Webserver_0_MSS_MASTER_APB_PENABLE ),
        .MSSPWRITE   ( Webserver_0_MSS_MASTER_APB_PWRITE ),
        .MAC_TXD     ( MAC_TXD_net_0 ),
        .MSSPADDR    ( Webserver_0_MSS_MASTER_APB_PADDR ),
        .MSSPWDATA   ( Webserver_0_MSS_MASTER_APB_PWDATA ),
        // Inouts
        .MAC_MDIO    ( MAC_MDIO ),
        .SPI_0_CLK   ( SPI_0_CLK ),
        .SPI_0_SS    ( SPI_0_SS ),
        .I2C_1_SCL   ( I2C_1_SCL ),
        .I2C_1_SDA   ( I2C_1_SDA ) 
        );


endmodule
