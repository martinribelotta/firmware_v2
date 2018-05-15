#ifndef __FREERTOS_CONFIG_EXTRA_H__
#define __FREERTOS_CONFIG_EXTRA_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

extern int _getch();
extern int rand();
extern void vPortGenerateSimulatedInterrupt( uint32_t ulInterruptNumber );
extern void vPortSetInterruptHandler( uint32_t ulInterruptNumber, uint32_t (*pvHandler)( void ) );

#ifdef __cplusplus
}
#endif

#endif
