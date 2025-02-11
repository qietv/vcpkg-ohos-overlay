## 
## PROJECT:   The vcpkg overlay ports and triplets for OpenHarmony Native SDK
## FILE:      ohos-sdk-native.cmake
## PURPOSE:   The OpenHarmony Native SDK CMake toolchain redirection script.
## 
## LICENSE:   The MIT License
## 
## MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
## 

if (VCPKG_TARGET_ARCHITECTURE STREQUAL "arm64")
    set(OHOS_ARCH arm64-v8a)
elseif (VCPKG_TARGET_ARCHITECTURE STREQUAL "x64")
    set(OHOS_ARCH x86_64)
else ()
    message(FATAL_ERROR "Unsupported architecture for OpenHarmony Native SDK: ${VCPKG_TARGET_ARCHITECTURE}")
endif()

if (DEFINED ENV{OHOS_SDK_NATIVE_HOME})
    set(OHOS_SDK_NATIVE_HOME $ENV{OHOS_SDK_NATIVE_HOME})
else ()
    if(DEFINED ENV{DEVECO_SDK_HOME})
        set(OHOS_SDK_NATIVE_HOME "$ENV{DEVECO_SDK_HOME}/default/openharmony/native")
    else ()
        set(OHOS_SDK_NATIVE_HOME "$ENV{ProgramFiles}/Huawei/DevEco Studio/sdk/default/openharmony/native")
    endif ()
endif()

if (NOT EXISTS "${OHOS_SDK_NATIVE_HOME}/build/cmake/ohos.toolchain.cmake")
    message(FATAL_ERROR "Could not find OpenHarmony Native SDK. Searched at OHOS_SDK_NATIVE_HOME environment variable: ${OHOS_SDK_NATIVE_HOME}")
endif()

include("${OHOS_SDK_NATIVE_HOME}/build/cmake/ohos.toolchain.cmake")
