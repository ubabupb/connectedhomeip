# echo compiling
# arm-none-eabi-gcc -c main.cpp
# echo linking
# arm-none-eabi-ld -Map out/hello_world.map -L/home/osboxes/InnoPhase/t2/freertos_t2/freertos_embedded_apps/components -L/home/unni/work/git/freertos_sdk/libs -L/home/unni/work/git/freertos_sdk/libs/arm -L/home/unni/work/git/freertos_sdk/build -T/home/unni/work/git/freertos_sdk/build/standalone.lds --entry _start -zmax-page-size=256 main.o --start-group -lfreertos -lc -linnos -lfs -losal --end-group /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a -o main.elf

# echo removing exisiting files
# rm main.elf main.o main.d
# echo compiling
# arm-none-eabi-g++ -mthumb -mcpu=cortex-m3 -MD -MMD -g -nostdinc -Wno-address-of-packed-member -ffunction-sections -fdata-sections -fno-common -Wshadow \
#     -Wnull-dereference -Warray-bounds=2 -Os -Wall -Werror -Wno-unused-variable -Wno-unused-function -fno-exceptions \
#     -I/home/unni/work/git/freertos_sdk_test/include/libc/include -I/home/unni/work/git/freertos_sdk_test/include \
#     -I/home/unni/work/git/freertos_sdk_test/include/arm -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
#     -c /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/main.cpp -o main.o

# echo linking
# arm-none-eabi-ld -Map out/wifi_connect.map -L/home/unni/work/git/freertos_sdk_test/libs -L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -L/home/unni/work/git/freertos_sdk_test/build -T/home/unni/work/git/freertos_sdk_test/build/standalone.lds --entry _start \
#     -zmax-page-size=256 main.o --start-group -lwifi -lrfdrv -llwip2 -lsupplicant -lfreertos -lc -linnos -lfs -losal \
#     --end-group /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a -o main.elf

echo removing exisiting files
rm main.elf main.o main.d
# echo sleeping.........
# sleep 1
echo compiling
# arm-none-eabi-g++ -mthumb -mcpu=cortex-m3 -MD -MMD -g -nostdinc -Wno-address-of-packed-member -ffunction-sections -fdata-sections -fno-common -Wshadow \
#     -Wnull-dereference -Warray-bounds=2 -Os -Wall -Werror -Wno-unused-variable -Wno-unused-function -fno-exceptions \
#     -I/home/unni/work/git/freertos_sdk_test/include/libc/include -I/home/unni/work/git/freertos_sdk_test/include \
#     -I/home/unni/work/git/freertos_sdk_test/include/arm -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
#     -c /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/main.cpp -o main.o

# arm-none-eabi-g++ -c /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/main.cpp -o main.o
echo linking
# arm-none-eabi-ld -Map out/wifi_connect.map -L/home/unni/work/git/freertos_sdk_test/libs -L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -L/home/unni/work/git/freertos_sdk_test/build -T/home/unni/work/git/freertos_sdk_test/build/standalone.lds --entry _start \
#     -zmax-page-size=256 main.o --start-group -lwifi -lrfdrv -llwip2 -lsupplicant -lfreertos -lc -linnos -lfs -losal \
#     --end-group /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a -o main.elf

# arm-none-eabi-ld main.o -o main.elf \
#     -L/home/unni/work/git/freertos_sdk_test/libs \
#     -L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -L/home/unni/work/git/freertos_sdk_test/build \
#     -T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \
#     --entry _start \
#     -zmax-page-size=256 \
#     --start-group -lwifi -lrfdrv -llwip2 -lsupplicant -lfreertos -lc -linnos -lfs -losal --end-group \
#     /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a

arm-none-eabi-g++ -c /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/main.cpp -o main.elf \
    -I/home/unni/work/git/freertos_sdk_test/include/libc/include -I/home/unni/work/git/freertos_sdk_test/include \
    -I/home/unni/work/git/freertos_sdk_test/include/arm -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
    -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
    -Wl,-L/home/unni/work/git/freertos_sdk_test/libs \
    -Wl,-L/home/unni/work/git/freertos_sdk_test/libs/arm \
    -Wl,-L/home/unni/work/git/freertos_sdk_test/build \
    -Wl,-T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \
    --entry _start \
    -Wl,-zmax-page-size=256 \
    -Wl,-lwifi -Wl,-lrfdrv -Wl,-llwip2 -Wl,-lsupplicant -Wl,-lfreertos -Wl,-lc -Wl,-linnos -Wl,-lfs -Wl,-losal \
    -Wl,/usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a

# echo removing exisiting files
# rm main.elf main.o main.d
# # sleep 1
# echo compiling and linking
# arm-none-eabi-g++ -v -mthumb -mcpu=cortex-m3 -MD -MMD -g -nostdinc -Wno-address-of-packed-member -ffunction-sections -fdata-sections -fno-common -Wshadow \
#     -Wnull-dereference -Warray-bounds=2 -Os -Wall -Werror -Wno-unused-variable -Wno-unused-function -fno-exceptions \
#     -I/home/unni/work/git/freertos_sdk_test/include/libc/include -I/home/unni/work/git/freertos_sdk_test/include \
#     -I/home/unni/work/git/freertos_sdk_test/include/arm -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
#     -Wl,-Map out/wifi_connect.map -Wl,-L/home/unni/work/git/freertos_sdk_test/libs -Wl,-L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/build -Wl,-T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \
#     -Wl,-zmax-page-size=256 -Wl,-lwifi -Wl,-lrfdrv -Wl,-llwip2 -Wl,-lsupplicant -Wl,-lfreertos -Wl,-lc -Wl,-linnos -Wl,-lfs -Wl,-losal \
#     -Wl,/usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a -o main.elf main.cpp
