
#ifndef __LWIPLIB_H__
#define __LWIPLIB_H__

//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//*****************************************************************************
//
// lwIP Options
//
//*****************************************************************************
#include "../lwip-1.3.0/src/include/lwip/opt.h"

//*****************************************************************************
//
// Ensure that AUTOIP COOP option is configured correctly.
//
//*****************************************************************************
#undef LWIP_DHCP_AUTOIP_COOP
#define LWIP_DHCP_AUTOIP_COOP   ((LWIP_DHCP) && (LWIP_AUTOIP))

//*****************************************************************************
//
// lwIP API Header Files
//
//*****************************************************************************
#include "../lwip-1.3.0/src/include/lwip/api.h"
#include "../lwip-1.3.0/src/include/lwip/netifapi.h"
#include "../lwip-1.3.0/src/include/lwip/tcp.h"
#include "../lwip-1.3.0/src/include/lwip/udp.h"
#include "../lwip-1.3.0/src/include/lwip/tcpip.h"
#include "../lwip-1.3.0/src/include/lwip/sockets.h"
#include "../lwip-1.3.0/src/include/lwip/mem.h"

//*****************************************************************************
//
// IP Address Acquisition Modes
//
//*****************************************************************************
#define IPADDR_USE_STATIC       0
#define IPADDR_USE_DHCP         1
#define IPADDR_USE_AUTOIP       2

//*****************************************************************************
//
// lwIP Abstraction Layer API
//
//*****************************************************************************
extern void lwIPInit(const unsigned char *pucMac, unsigned long ulIPAddr,
                     unsigned long ulNetMask, unsigned long ulGWAddr,
                     unsigned long ulIPMode);
extern void lwIPTimer(unsigned long ulTimeMS);
extern void lwIPEthernetIntHandler(void);
extern unsigned long lwIPLocalIPAddrGet(void);
extern unsigned long lwIPLocalNetMaskGet(void);
extern unsigned long lwIPLocalGWAddrGet(void);
extern void lwIPLocalMACGet(unsigned char *pucMac);
extern void lwIPNetworkConfigChange(unsigned long ulIPAddr,
                                    unsigned long ulNetMask,
                                    unsigned long ulGWAddr,
                                    unsigned long ulIPMode);

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif // __LWIPLIB_H__
