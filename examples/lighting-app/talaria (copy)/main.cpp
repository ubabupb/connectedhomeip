// #include <stdio.h>
// #include "test.h"

#ifdef __cplusplus
    extern "C" {
#endif

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include <talaria_two.h>

int main()
{
	int i;

	for(i = 0; i < 1000; i++)
		os_printf("Hello world !!!");
	// i = sum(1,2);
	return 0;
}

#ifdef __cplusplus
    }
#endif
