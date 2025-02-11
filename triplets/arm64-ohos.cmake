﻿## 
## PROJECT:   The vcpkg overlay ports and triplets for OpenHarmony Native SDK
## FILE:      arm64-ohos.cmake
## PURPOSE:   The vcpkg overlay triplet for ARM64 OpenHarmony Native SDK.
## 
## LICENSE:   The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE "${CMAKE_CURRENT_LIST_DIR}/ohos-sdk-native.cmake")
