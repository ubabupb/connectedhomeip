clear
echo removing exisiting files
rm main.elf main.o main.d test.map

echo compiling
# arm-none-eabi-g++ \
#     -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
#     -mthumb -mcpu=cortex-m3 -MD -MMD -nostdinc -Wno-address-of-packed-member -ffunction-sections -fdata-sections -fno-common \
#     -c /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/main.cpp -o main.o \
#     -Wshadow -Wnull-dereference -Warray-bounds=2 -Os -Wall -Werror -Wno-unused-variable -Wno-unused-function -fno-exceptions \
#     -I/home/unni/work/git/freertos_sdk_test/include/libc/include \
#     -I/home/unni/work/git/freertos_sdk_test/include \
#     -I/home/unni/work/git/freertos_sdk_test/include/arm \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 \
#     -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include
# --verbose

# echo linking
# sleep 2
# arm-none-eabi-g++ \
#     main.o \
#     -o main.elf # -Wl,/usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a \
# -Wl,-Map out/wifi_connect.map \
# -Wl,-L/home/unni/work/git/freertos_sdk_test/libs \
# -Wl,-L/home/unni/work/git/freertos_sdk_test/libs/arm \
# -Wl,-L/home/unni/work/git/freertos_sdk_test/build \
# -Wl,-T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \
# -Wl,--entry _start \
# -Wl,-zmax-page-size=256 main.o \
# -Wl,--start-group -Wl,-lwifi -Wl,-lrfdrv -Wl,-llwip2 -Wl,-lsupplicant -Wl,-lfreertos -Wl,-lc -Wl,-linnos -Wl,-lfs -Wl,-losal -Wl,--end-group \
# -Wl,-lc -Wl,-lm -Wl,-lapp \
# -Wl,-flto -Wl,-ffreestanding -Wl,-nostdlib \

# arm-none-eabi-ld \
#     -Map out/wifi_connect.map \
#     -L/home/unni/work/git/freertos_sdk_test/libs \
#     -L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -L/home/unni/work/git/freertos_sdk_test/build \
#     -T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \
#     --entry _start \
#     -zmax-page-size=256 main.o \
#     --start-group -lwifi -lrfdrv -llwip2 -lsupplicant -lfreertos -linnos -losal \
#     -lc -lfs \
#     --end-group \
#     /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a \
#     -o main.elf
# --verbose

# --specs=nosys.specs

# arm-none-eabi-g++ main.cpp -o main.o
# arm-none-eabi-g++ main.o -o main.elf --specs=nosys.specs
# -c main.cpp -o main.o

arm-none-eabi-g++ \
    main.cpp -o main.elf \
    -I./TEST/inc \
    -L./TEST/lib -ltest \
    -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
    -I/home/unni/work/git/freertos_sdk_test/include/libc/include \
    -I/home/unni/work/git/freertos_sdk_test/include \
    -I/home/unni/work/git/freertos_sdk_test/include/arm \
    -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
    -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 \
    -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
    -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include \
    -Wl,-Map,test.map \
    -L/home/unni/work/git/freertos_sdk_test/build \
    \
    --specs=nosys.specs \
    -nostdinc # -Wl,-T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \

# -L/home/unni/work/git/freertos_sdk_test/libs \
#     -L/home/unni/work/git/freertos_sdk_test/libs/arm \
# -lwifi -lrfdrv -llwip2 -lsupplicant -lfreertos -linnos -losal \
# /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a
# __exidx_start

echo END
# __libc_init_array
# arm-none-eabi-g++ \
#     main.cpp -o main.elf --specs=nosys.specs \
#     -mthumb -mcpu=cortex-m3 -MD -MMD -nostdinc -Wno-address-of-packed-member -ffunction-sections -fdata-sections -fno-common \
#     -Wshadow -Wnull-dereference -Warray-bounds=2 -Os -Wall -Werror -Wno-unused-variable -Wno-unused-function -fno-exceptions \
#     -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/libc/include \
#     -I/home/unni/work/git/freertos_sdk_test/include \
#     -I/home/unni/work/git/freertos_sdk_test/include/arm \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 \
#     -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/libs \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/build \
#     -Wl,--entry _start \
#     -Wl,-zmax-page-size=256 \
#     -Wl,-lwifi -Wl,-lrfdrv -Wl,-llwip2 -Wl,-lsupplicant -Wl,-lfreertos -Wl,-linnos -Wl,-losal \
#     -Wl,-lc -Wl,-lfs \
#     -Wl,/usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a
# -Wl,-T/home/unni/work/git/freertos_sdk_test/build/standalone.lds

# arm-none-eabi-g++ main.o -o main.elf --specs=nosys.specs

# echo ***********************************

# arm-none-eabi-g++ --verbose -mthumb -mcpu=cortex-m3 -MD -MMD -g -nostdinc -Wno-address-of-packed-member -ffunction-sections -fdata-sections -fno-common \
#     -Wshadow -Wnull-dereference -Warray-bounds=2 -Os -Wall -Werror -Wno-unused-variable -Wno-unused-function -fno-exceptions \
#     -I/home/unni/work/git/freertos_sdk_test/include/libc/include \
#     -I/home/unni/work/git/freertos_sdk_test/include \
#     -I/home/unni/work/git/freertos_sdk_test/include/arm \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/include \
#     -I/home/unni/work/git/freertos_sdk_test/FreeRTOS-Kernel/portable/GCC/ARM_CM3 \
#     -I/home/unni/work/git/freertos_sdk_test/include/innos_osal/inc \
#     -I/home/unni/work/git/freertos_sdk_test/include/lwip2/include \
#     -I/home/unni/work/git/freertos_sdk_test/core/innos_osal/inc \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/libs \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/libs/arm \
#     -Wl,-L/home/unni/work/git/freertos_sdk_test/build \
#     -Wl,-T/home/unni/work/git/freertos_sdk_test/build/standalone.lds \
#     -Wl,--entry _start \
#     -Wl,-zmax-page-size=256 \
#     -Wl,-lwifi -Wl,-lrfdrv -Wl,-llwip2 -Wl,-lsupplicant -Wl,-lfreertos -Wl,-lc -Wl,-linnos -Wl,-lfs -Wl,-losal \
#     -Wl,/usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a \
#     -Wl,-o,main.elf

# echo ***********************************
