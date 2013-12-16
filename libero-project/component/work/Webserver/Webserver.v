//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Dec 09 11:49:01 2013
// Version: v11.0 11.0.0.23
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// Webserver
module Webserver(
    // Inputs
    F2M_GPI_1,
    F2M_GPI_9,
    FABINT,
    MAC_CRSDV,
    MAC_RXD,
    MAC_RXER,
    MAINXIN,
    MSSPRDATA,
    MSSPREADY,
    MSSPSLVERR,
    MSS_RESET_N,
    SPI_0_DI,
    UART_0_RXD,
    // Outputs
    FAB_CLK,
    GLC,
    M2F_GPO_10,
    M2F_RESET_N,
    MAC_MDC,
    MAC_TXD,
    MAC_TXEN,
    MSSPADDR,
    MSSPENABLE,
    MSSPSEL,
    MSSPWDATA,
    MSSPWRITE,
    SPI_0_DO,
    UART_0_TXD,
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
input         F2M_GPI_1;
input         F2M_GPI_9;
input         FABINT;
input         MAC_CRSDV;
input  [1:0]  MAC_RXD;
input         MAC_RXER;
input         MAINXIN;
input  [31:0] MSSPRDATA;
input         MSSPREADY;
input         MSSPSLVERR;
input         MSS_RESET_N;
input         SPI_0_DI;
input         UART_0_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        FAB_CLK;
output        GLC;
output        M2F_GPO_10;
output        M2F_RESET_N;
output        MAC_MDC;
output [1:0]  MAC_TXD;
output        MAC_TXEN;
output [19:0] MSSPADDR;
output        MSSPENABLE;
output        MSSPSEL;
output [31:0] MSSPWDATA;
output        MSSPWRITE;
output        SPI_0_DO;
output        UART_0_TXD;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         I2C_1_SCL;
inout         I2C_1_SDA;
inout         MAC_MDIO;
inout         SPI_0_CLK;
inout         SPI_0_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [0:0]   MAC_RXD_slice_0;
wire   [1:1]   MAC_RXD_slice_1;
wire           DSSGEN_MAC_TXD_0;
wire           DSSGEN_MAC_TXD_1;
wire           F2M_GPI_1;
wire           F2M_GPI_9;
wire           FABINT;
wire           GLC_net_0;
wire           I2C_1_SCL;
wire           I2C_1_SDA;
wire           MAC_CRSDV;
wire           MAC_RXER;
wire           MAINXIN;
wire           MSS_ADLIB_INST_EMCCLK;
wire           MSS_ADLIB_INST_FCLK;
wire           MSS_ADLIB_INST_MACCLK;
wire           MSS_ADLIB_INST_MACCLKCCC;
wire           MSS_ADLIB_INST_PLLLOCK;
wire           MSS_ADLIB_INST_SYNCCLKFDBK;
wire           MSS_I2C_1_SCL_E;
wire           MSS_I2C_1_SCL_Y;
wire           MSS_I2C_1_SDA_E;
wire           MSS_I2C_1_SDA_Y;
wire           MSS_MAC_0_CRSDV_Y;
wire           MSS_MAC_0_MDC_D;
wire           MSS_MAC_0_MDIO_D;
wire           MSS_MAC_0_MDIO_E;
wire           MSS_MAC_0_MDIO_Y;
wire           MSS_MAC_0_RXD_0_Y;
wire           MSS_MAC_0_RXD_1_Y;
wire           MSS_MAC_0_RXER_Y;
wire   [0:0]   MSS_MAC_0_TXD_0_D;
wire   [1:1]   MSS_MAC_0_TXD_1_D;
wire           MSS_MAC_0_TXEN_D;
wire           MSS_RESET_0_MSS_RESET_N_Y;
wire           MSS_RESET_N;
wire           MSS_SPI_0_CLK_D;
wire           MSS_SPI_0_CLK_Y;
wire           MSS_SPI_0_DI_Y;
wire           MSS_SPI_0_DO_D;
wire           MSS_SPI_0_DO_E;
wire   [0:0]   MSS_SPI_0_SS_D;
wire           MSS_SPI_0_SS_E;
wire           MSS_SPI_0_SS_Y;
wire           MSS_UART_0_RXD_Y;
wire           MSS_UART_0_TXD_D;
wire           MSSINT_GPI_1_Y;
wire           MSSINT_GPI_9_Y;
wire   [10:10] MSSINT_GPO_10_A;
wire           net_71;
wire           net_72;
wire   [19:0]  net_73_PADDR;
wire           net_73_PENABLE;
wire   [31:0]  MSSPRDATA;
wire           MSSPREADY;
wire           net_73_PSELx;
wire           MSSPSLVERR;
wire   [31:0]  net_73_PWDATA;
wire           net_73_PWRITE;
wire           MAC_MDIO;
wire           PAD_0;
wire           PAD_1;
wire           SPI_0_CLK;
wire           SPI_0_DI;
wire           SPI_0_DO_net_0;
wire           SPI_0_SS;
wire           UART_0_RXD;
wire           UART_0_TXD_net_0;
wire           GLC_net_1;
wire           net_71_net_0;
wire           MSS_ADLIB_INST_SYNCCLKFDBK_net_0;
wire           net_72_net_0;
wire           net_73_PSELx_net_0;
wire           net_73_PENABLE_net_0;
wire           net_73_PWRITE_net_0;
wire   [19:0]  net_73_PADDR_net_0;
wire   [31:0]  net_73_PWDATA_net_0;
wire           UART_0_TXD_net_1;
wire           SPI_0_DO_net_1;
wire   [0:0]   DSSGEN_MAC_TXD_0_net_0;
wire   [1:1]   DSSGEN_MAC_TXD_1_net_0;
wire           PAD_0_net_0;
wire           PAD_1_net_0;
wire   [31:0]  GPI_net_0;
wire   [1:0]   MACRXD_net_0;
wire   [1:0]   MAC_RXD;
wire   [31:0]  GPO_net_0;
wire   [7:0]   SPI0SSO_net_0;
wire   [1:0]   MACTXD_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire           GND_net;
wire           VCC_net;
wire   [1:0]   DMAREADY_const_net_0;
wire   [1:0]   MACF2MRXD_const_net_0;
wire   [15:0]  EMCRDB_const_net_0;
wire   [31:0]  FABPADDR_const_net_0;
wire   [31:0]  FABPWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign DMAREADY_const_net_0  = 2'h0;
assign MACF2MRXD_const_net_0 = 2'h0;
assign EMCRDB_const_net_0    = 16'h0000;
assign FABPADDR_const_net_0  = 32'h00000000;
assign FABPWDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GLC_net_1                        = GLC_net_0;
assign GLC                              = GLC_net_1;
assign net_71_net_0                     = net_71;
assign M2F_GPO_10                       = net_71_net_0;
assign MSS_ADLIB_INST_SYNCCLKFDBK_net_0 = MSS_ADLIB_INST_SYNCCLKFDBK;
assign FAB_CLK                          = MSS_ADLIB_INST_SYNCCLKFDBK_net_0;
assign net_72_net_0                     = net_72;
assign M2F_RESET_N                      = net_72_net_0;
assign net_73_PSELx_net_0               = net_73_PSELx;
assign MSSPSEL                          = net_73_PSELx_net_0;
assign net_73_PENABLE_net_0             = net_73_PENABLE;
assign MSSPENABLE                       = net_73_PENABLE_net_0;
assign net_73_PWRITE_net_0              = net_73_PWRITE;
assign MSSPWRITE                        = net_73_PWRITE_net_0;
assign net_73_PADDR_net_0               = net_73_PADDR;
assign MSSPADDR[19:0]                   = net_73_PADDR_net_0;
assign net_73_PWDATA_net_0              = net_73_PWDATA;
assign MSSPWDATA[31:0]                  = net_73_PWDATA_net_0;
assign UART_0_TXD_net_1                 = UART_0_TXD_net_0;
assign UART_0_TXD                       = UART_0_TXD_net_1;
assign SPI_0_DO_net_1                   = SPI_0_DO_net_0;
assign SPI_0_DO                         = SPI_0_DO_net_1;
assign DSSGEN_MAC_TXD_0_net_0[0]        = DSSGEN_MAC_TXD_0;
assign MAC_TXD[0:0]                     = DSSGEN_MAC_TXD_0_net_0[0];
assign DSSGEN_MAC_TXD_1_net_0[1]        = DSSGEN_MAC_TXD_1;
assign MAC_TXD[1:1]                     = DSSGEN_MAC_TXD_1_net_0[1];
assign PAD_0_net_0                      = PAD_0;
assign MAC_TXEN                         = PAD_0_net_0;
assign PAD_1_net_0                      = PAD_1;
assign MAC_MDC                          = PAD_1_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign MAC_RXD_slice_0[0]   = MAC_RXD[0:0];
assign MAC_RXD_slice_1[1]   = MAC_RXD[1:1];
assign MSS_MAC_0_TXD_0_D[0] = MACTXD_net_0[0:0];
assign MSS_MAC_0_TXD_1_D[1] = MACTXD_net_0[1:1];
assign MSS_SPI_0_SS_D[0]    = SPI0SSO_net_0[0:0];
assign MSSINT_GPO_10_A[10]  = GPO_net_0[10:10];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign GPI_net_0    = { 22'h000000 , MSSINT_GPI_9_Y , 7'h00 , MSSINT_GPI_1_Y , 1'b0 };
assign MACRXD_net_0 = { MSS_MAC_0_RXD_1_Y , MSS_MAC_0_RXD_0_Y };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MSS_APB
MSS_APB #( 
        .ACT_CONFIG ( 32896 ),
        .ACT_DIE    ( "IP4X3M1" ),
        .ACT_FCLK   ( 100000000 ),
        .ACT_PKG    ( "fg484" ) )
MSS_ADLIB_INST(
        // Inputs
        .MSSPRDATA      ( MSSPRDATA ),
        .MSSPREADY      ( MSSPREADY ),
        .MSSPSLVERR     ( MSSPSLVERR ),
        .FABPADDR       ( FABPADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .FABPWDATA      ( FABPWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .FABPWRITE      ( GND_net ), // tied to 1'b0 from definition
        .FABPSEL        ( GND_net ), // tied to 1'b0 from definition
        .FABPENABLE     ( GND_net ), // tied to 1'b0 from definition
        .SYNCCLKFDBK    ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .CALIBIN        ( GND_net ), // tied to 1'b0 from definition
        .FABINT         ( FABINT ),
        .F2MRESETn      ( VCC_net ), // tied to 1'b1 from definition
        .DMAREADY       ( DMAREADY_const_net_0 ), // tied to 2'h0 from definition
        .RXEV           ( GND_net ), // tied to 1'b0 from definition
        .VRON           ( GND_net ), // tied to 1'b0 from definition
        .GPI            ( GPI_net_0 ),
        .UART0CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART0DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART0RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART0DCDn      ( GND_net ), // tied to 1'b0 from definition
        .UART1CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART1DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART1RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART1DCDn      ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C0BCLK       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C1BCLK       ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXD      ( MACF2MRXD_const_net_0 ), // tied to 2'h0 from definition
        .MACF2MCRSDV    ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXER     ( GND_net ), // tied to 1'b0 from definition
        .MACF2MMDI      ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABACETRIG     ( GND_net ), // tied to 1'b0 from definition
        .LVTTL0EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL1EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL2EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL3EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL4EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL5EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL6EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL7EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL8EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL9EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL10EN      ( GND_net ), // tied to 1'b0 from definition
        .LVTTL11EN      ( GND_net ), // tied to 1'b0 from definition
        .FCLK           ( MSS_ADLIB_INST_FCLK ),
        .MACCLKCCC      ( MSS_ADLIB_INST_MACCLKCCC ),
        .RCOSC          ( GND_net ), // tied to 1'b0 from definition
        .MACCLK         ( MSS_ADLIB_INST_MACCLK ),
        .PLLLOCK        ( MSS_ADLIB_INST_PLLLOCK ),
        .MSSRESETn      ( MSS_RESET_0_MSS_RESET_N_Y ),
        .SPI0DI         ( MSS_SPI_0_DI_Y ),
        .SPI0CLKI       ( MSS_SPI_0_CLK_Y ),
        .SPI0SSI        ( MSS_SPI_0_SS_Y ),
        .UART0RXD       ( MSS_UART_0_RXD_Y ),
        .I2C0SDAI       ( GND_net ), // tied to 1'b0 from definition
        .I2C0SCLI       ( GND_net ), // tied to 1'b0 from definition
        .SPI1DI         ( GND_net ), // tied to 1'b0 from definition
        .SPI1CLKI       ( GND_net ), // tied to 1'b0 from definition
        .SPI1SSI        ( GND_net ), // tied to 1'b0 from definition
        .UART1RXD       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SDAI       ( MSS_I2C_1_SDA_Y ),
        .I2C1SCLI       ( MSS_I2C_1_SCL_Y ),
        .MACRXD         ( MACRXD_net_0 ),
        .MACCRSDV       ( MSS_MAC_0_CRSDV_Y ),
        .MACRXER        ( MSS_MAC_0_RXER_Y ),
        .MACMDI         ( MSS_MAC_0_MDIO_Y ),
        .EMCCLKRTN      ( MSS_ADLIB_INST_EMCCLK ),
        .EMCRDB         ( EMCRDB_const_net_0 ), // tied to 16'h0000 from definition
        .ADC0           ( GND_net ), // tied to 1'b0 from definition
        .ADC1           ( GND_net ), // tied to 1'b0 from definition
        .ADC2           ( GND_net ), // tied to 1'b0 from definition
        .ADC3           ( GND_net ), // tied to 1'b0 from definition
        .ADC4           ( GND_net ), // tied to 1'b0 from definition
        .ADC5           ( GND_net ), // tied to 1'b0 from definition
        .ADC6           ( GND_net ), // tied to 1'b0 from definition
        .ADC7           ( GND_net ), // tied to 1'b0 from definition
        .ADC8           ( GND_net ), // tied to 1'b0 from definition
        .ADC9           ( GND_net ), // tied to 1'b0 from definition
        .ADC10          ( GND_net ), // tied to 1'b0 from definition
        .ADC11          ( GND_net ), // tied to 1'b0 from definition
        .ABPS0          ( GND_net ), // tied to 1'b0 from definition
        .ABPS1          ( GND_net ), // tied to 1'b0 from definition
        .ABPS2          ( GND_net ), // tied to 1'b0 from definition
        .ABPS3          ( GND_net ), // tied to 1'b0 from definition
        .ABPS4          ( GND_net ), // tied to 1'b0 from definition
        .ABPS5          ( GND_net ), // tied to 1'b0 from definition
        .ABPS6          ( GND_net ), // tied to 1'b0 from definition
        .ABPS7          ( GND_net ), // tied to 1'b0 from definition
        .ABPS8          ( GND_net ), // tied to 1'b0 from definition
        .ABPS9          ( GND_net ), // tied to 1'b0 from definition
        .ABPS10         ( GND_net ), // tied to 1'b0 from definition
        .ABPS11         ( GND_net ), // tied to 1'b0 from definition
        .TM0            ( GND_net ), // tied to 1'b0 from definition
        .TM1            ( GND_net ), // tied to 1'b0 from definition
        .TM2            ( GND_net ), // tied to 1'b0 from definition
        .TM3            ( GND_net ), // tied to 1'b0 from definition
        .TM4            ( GND_net ), // tied to 1'b0 from definition
        .TM5            ( GND_net ), // tied to 1'b0 from definition
        .CM0            ( GND_net ), // tied to 1'b0 from definition
        .CM1            ( GND_net ), // tied to 1'b0 from definition
        .CM2            ( GND_net ), // tied to 1'b0 from definition
        .CM3            ( GND_net ), // tied to 1'b0 from definition
        .CM4            ( GND_net ), // tied to 1'b0 from definition
        .CM5            ( GND_net ), // tied to 1'b0 from definition
        .GNDTM0         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM1         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM2         ( GND_net ), // tied to 1'b0 from definition
        .VAREF0         ( GND_net ), // tied to 1'b0 from definition
        .VAREF1         ( GND_net ), // tied to 1'b0 from definition
        .VAREF2         ( GND_net ), // tied to 1'b0 from definition
        .GNDVAREF       ( GND_net ), // tied to 1'b0 from definition
        .PUn            ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSSPADDR       ( net_73_PADDR ),
        .MSSPWDATA      ( net_73_PWDATA ),
        .MSSPWRITE      ( net_73_PWRITE ),
        .MSSPSEL        ( net_73_PSELx ),
        .MSSPENABLE     ( net_73_PENABLE ),
        .FABPRDATA      (  ),
        .FABPREADY      (  ),
        .FABPSLVERR     (  ),
        .CALIBOUT       (  ),
        .MSSINT         (  ),
        .WDINT          (  ),
        .M2FRESETn      ( net_72 ),
        .DEEPSLEEP      (  ),
        .SLEEP          (  ),
        .TXEV           (  ),
        .GPO            ( GPO_net_0 ),
        .UART0RTSn      (  ),
        .UART0DTRn      (  ),
        .UART1RTSn      (  ),
        .UART1DTRn      (  ),
        .I2C0SMBUSNO    (  ),
        .I2C0SMBALERTNO (  ),
        .I2C1SMBUSNO    (  ),
        .I2C1SMBALERTNO (  ),
        .MACM2FTXD      (  ),
        .MACM2FTXEN     (  ),
        .MACM2FMDO      (  ),
        .MACM2FMDEN     (  ),
        .MACM2FMDC      (  ),
        .ACEFLAGS       (  ),
        .CMP0           (  ),
        .CMP1           (  ),
        .CMP2           (  ),
        .CMP3           (  ),
        .CMP4           (  ),
        .CMP5           (  ),
        .CMP6           (  ),
        .CMP7           (  ),
        .CMP8           (  ),
        .CMP9           (  ),
        .CMP10          (  ),
        .CMP11          (  ),
        .LVTTL0         (  ),
        .LVTTL1         (  ),
        .LVTTL2         (  ),
        .LVTTL3         (  ),
        .LVTTL4         (  ),
        .LVTTL5         (  ),
        .LVTTL6         (  ),
        .LVTTL7         (  ),
        .LVTTL8         (  ),
        .LVTTL9         (  ),
        .LVTTL10        (  ),
        .LVTTL11        (  ),
        .PUFABn         (  ),
        .VCC15GOOD      (  ),
        .VCC33GOOD      (  ),
        .GPOE           (  ),
        .SPI0DO         ( MSS_SPI_0_DO_D ),
        .SPI0DOE        ( MSS_SPI_0_DO_E ),
        .SPI0CLKO       ( MSS_SPI_0_CLK_D ),
        .SPI0MODE       ( MSS_SPI_0_SS_E ),
        .SPI0SSO        ( SPI0SSO_net_0 ),
        .UART0TXD       ( MSS_UART_0_TXD_D ),
        .I2C0SDAO       (  ),
        .I2C0SCLO       (  ),
        .SPI1DO         (  ),
        .SPI1DOE        (  ),
        .SPI1CLKO       (  ),
        .SPI1MODE       (  ),
        .SPI1SSO        (  ),
        .UART1TXD       (  ),
        .I2C1SDAO       ( MSS_I2C_1_SDA_E ),
        .I2C1SCLO       ( MSS_I2C_1_SCL_E ),
        .MACTXD         ( MACTXD_net_0 ),
        .MACTXEN        ( MSS_MAC_0_TXEN_D ),
        .MACMDO         ( MSS_MAC_0_MDIO_D ),
        .MACMDEN        ( MSS_MAC_0_MDIO_E ),
        .MACMDC         ( MSS_MAC_0_MDC_D ),
        .EMCCLK         ( MSS_ADLIB_INST_EMCCLK ),
        .EMCAB          (  ),
        .EMCWDB         (  ),
        .EMCRWn         (  ),
        .EMCCS0n        (  ),
        .EMCCS1n        (  ),
        .EMCOEN0n       (  ),
        .EMCOEN1n       (  ),
        .EMCBYTEN       (  ),
        .EMCDBOE        (  ),
        .SDD0           (  ),
        .SDD1           (  ),
        .SDD2           (  ),
        .VAREFOUT       (  ) 
        );

//--------Webserver_tmp_MSS_CCC_0_MSS_CCC   -   Actel:SmartFusionMSS:MSS_CCC:2.0.106
Webserver_tmp_MSS_CCC_0_MSS_CCC MSS_CCC_0(
        // Inputs
        .CLKA           ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKB           ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKC           ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADN      ( GND_net ), // tied to 1'b0 from definition
        .MAINXIN        ( MAINXIN ),
        .LPXIN          ( GND_net ), // tied to 1'b0 from definition
        .MAC_CLK        ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .GLA            (  ),
        .GLB            (  ),
        .GLC            ( GLC_net_0 ),
        .FAB_CLK        ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .YB             (  ),
        .YC             (  ),
        .FAB_LOCK       (  ),
        .RCOSC_CLKOUT   (  ),
        .MAINXIN_CLKOUT (  ),
        .LPXIN_CLKOUT   (  ),
        .GLA0           ( MSS_ADLIB_INST_FCLK ),
        .MSS_LOCK       ( MSS_ADLIB_INST_PLLLOCK ),
        .MAC_CLK_CCC    ( MSS_ADLIB_INST_MACCLKCCC ),
        .MAC_CLK_IO     ( MSS_ADLIB_INST_MACCLK ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U20" ) )
MSS_I2C_1_SCL(
        // Inputs
        .E   ( MSS_I2C_1_SCL_E ),
        // Outputs
        .Y   ( MSS_I2C_1_SCL_Y ),
        // Inouts
        .PAD ( I2C_1_SCL ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V22" ) )
MSS_I2C_1_SDA(
        // Inputs
        .E   ( MSS_I2C_1_SDA_E ),
        // Outputs
        .Y   ( MSS_I2C_1_SDA_Y ),
        // Inouts
        .PAD ( I2C_1_SDA ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W4" ) )
MSS_MAC_0_CRSDV(
        // Inputs
        .PAD ( MAC_CRSDV ),
        // Outputs
        .Y   ( MSS_MAC_0_CRSDV_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA3" ) )
MSS_MAC_0_MDC(
        // Inputs
        .D   ( MSS_MAC_0_MDC_D ),
        // Outputs
        .PAD ( PAD_1 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V4" ) )
MSS_MAC_0_MDIO(
        // Inputs
        .D   ( MSS_MAC_0_MDIO_D ),
        .E   ( MSS_MAC_0_MDIO_E ),
        // Outputs
        .Y   ( MSS_MAC_0_MDIO_Y ),
        // Inouts
        .PAD ( MAC_MDIO ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V5" ) )
MSS_MAC_0_RXD_0(
        // Inputs
        .PAD ( MAC_RXD_slice_0 ),
        // Outputs
        .Y   ( MSS_MAC_0_RXD_0_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U5" ) )
MSS_MAC_0_RXD_1(
        // Inputs
        .PAD ( MAC_RXD_slice_1 ),
        // Outputs
        .Y   ( MSS_MAC_0_RXD_1_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA4" ) )
MSS_MAC_0_RXER(
        // Inputs
        .PAD ( MAC_RXER ),
        // Outputs
        .Y   ( MSS_MAC_0_RXER_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA5" ) )
MSS_MAC_0_TXD_0(
        // Inputs
        .D   ( MSS_MAC_0_TXD_0_D ),
        // Outputs
        .PAD ( DSSGEN_MAC_TXD_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W5" ) )
MSS_MAC_0_TXD_1(
        // Inputs
        .D   ( MSS_MAC_0_TXD_1_D ),
        // Outputs
        .PAD ( DSSGEN_MAC_TXD_1 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y4" ) )
MSS_MAC_0_TXEN(
        // Inputs
        .D   ( MSS_MAC_0_TXEN_D ),
        // Outputs
        .PAD ( PAD_0 ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "R1" ) )
MSS_RESET_0_MSS_RESET_N(
        // Inputs
        .PAD ( MSS_RESET_N ),
        // Outputs
        .Y   ( MSS_RESET_0_MSS_RESET_N_Y ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W19" ) )
MSS_SPI_0_CLK(
        // Inputs
        .D   ( MSS_SPI_0_CLK_D ),
        .E   ( MSS_SPI_0_SS_E ),
        // Outputs
        .Y   ( MSS_SPI_0_CLK_Y ),
        // Inouts
        .PAD ( SPI_0_CLK ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V18" ) )
MSS_SPI_0_DI(
        // Inputs
        .PAD ( SPI_0_DI ),
        // Outputs
        .Y   ( MSS_SPI_0_DI_Y ) 
        );

//--------TRIBUFF_MSS
TRIBUFF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U17" ) )
MSS_SPI_0_DO(
        // Inputs
        .D   ( MSS_SPI_0_DO_D ),
        .E   ( MSS_SPI_0_DO_E ),
        // Outputs
        .PAD ( SPI_0_DO_net_0 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y20" ) )
MSS_SPI_0_SS(
        // Inputs
        .D   ( MSS_SPI_0_SS_D ),
        .E   ( MSS_SPI_0_SS_E ),
        // Outputs
        .Y   ( MSS_SPI_0_SS_Y ),
        // Inouts
        .PAD ( SPI_0_SS ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U18" ) )
MSS_UART_0_RXD(
        // Inputs
        .PAD ( UART_0_RXD ),
        // Outputs
        .Y   ( MSS_UART_0_RXD_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y22" ) )
MSS_UART_0_TXD(
        // Inputs
        .D   ( MSS_UART_0_TXD_D ),
        // Outputs
        .PAD ( UART_0_TXD_net_0 ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_1(
        // Inputs
        .A ( F2M_GPI_1 ),
        // Outputs
        .Y ( MSSINT_GPI_1_Y ) 
        );

//--------MSSINT
MSSINT MSSINT_GPI_9(
        // Inputs
        .A ( F2M_GPI_9 ),
        // Outputs
        .Y ( MSSINT_GPI_9_Y ) 
        );

//--------MSSINT
MSSINT MSSINT_GPO_10(
        // Inputs
        .A ( MSSINT_GPO_10_A ),
        // Outputs
        .Y ( net_71 ) 
        );


endmodule
