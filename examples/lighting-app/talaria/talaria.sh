echo linking
arm-none-eabi-ld -Map out/wifi_connect.map -L/home/unni/work/git/freertos_sdk_test/libs -L/home/unni/work/git/freertos_sdk_test/libs/arm \
    -L/home/unni/work/git/freertos_sdk_test/build -T/home/unni/work/git/freertos_sdk_test/build/standalone.lds --entry _start \
    -zmax-page-size=256 /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/out/test/obj/chip-lighting-app_sl.main.cpp.o \
    --start-group -lwifi -lrfdrv -llwip2 -lsupplicant -lfreertos -lc -linnos -lfs -losal --end-group \
    /usr/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/thumb/v7-m/nofp/libgcc.a \
    /home/unni/work/hub/matter/connectedhomeip/examples/lighting-app/talaria/out/test/chip-lighting-app_sl.a \
    -o chip-lighting-app_exe
