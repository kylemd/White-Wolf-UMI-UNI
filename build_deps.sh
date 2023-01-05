#!/bin/bash

# Build system vars
BUILD_USER=""
BASE_DIR="/home/$BUILD_USER/AndroidBuilds"

# Build dirs
KERNELFLASHER_DIR="$BASE_DIR/Kernel_Flasher"

# Toolchain paths
TOOLCHAIN_DIR="$BASE_DIR/Toolchains"
CLANG_DIR="$TOOLCHAIN_DIR/clang"
GCC_DIR="$TOOLCHAIN_DIR/gcc"

git clone --depth=1 https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 -b android13-release $CLANG_DIR
git clone --depth=1 https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9.git $GCC_DIR
git clone --depth=1 https://github.com/Zackptg5/MMT-Extended.git $KERNELFLASHER_DIR
