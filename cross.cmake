# cross.cmake文件
# 设置为1则表示交叉编译，设置为0则表示x86 gcc编译
SET(CROSS_COMPILE 1)

IF(CROSS_COMPILE)
SET(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR loongson)
SET(TOOLCHAIN_DIR "/home/ilikara/loongson/loongson-gnu-toolchain-8.3-x86_64-loongarch64-linux-gnu-rc1.3-1/")
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_DIR}/bin/loongarch64-linux-gnu-g++)
set(CMAKE_C_COMPILER ${TOOLCHAIN_DIR}/bin/loongarch64-linux-gnu-gcc)

SET(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_DIR})
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

ENDIF(CROSS_COMPILE)