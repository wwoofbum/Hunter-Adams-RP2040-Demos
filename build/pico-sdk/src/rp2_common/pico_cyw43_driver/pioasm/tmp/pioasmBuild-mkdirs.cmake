# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/gerard/pico/pico-sdk/tools/pioasm"
  "/home/gerard/Hunter-Adams-RP2040-Demos/build/pioasm"
  "/home/gerard/Hunter-Adams-RP2040-Demos/build/pioasm-install"
  "/home/gerard/Hunter-Adams-RP2040-Demos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/tmp"
  "/home/gerard/Hunter-Adams-RP2040-Demos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp"
  "/home/gerard/Hunter-Adams-RP2040-Demos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src"
  "/home/gerard/Hunter-Adams-RP2040-Demos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/gerard/Hunter-Adams-RP2040-Demos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/gerard/Hunter-Adams-RP2040-Demos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/pioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
