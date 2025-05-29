#!/usr/bin/env bash

progen generate -t cmake_gcc_arm -o generator=ninja -p nrf52840_if -b
progen generate -t cmake_gcc_arm -o generator=ninja -p nrf52840_bl -b

mergehex -m projectfiles/cmake_gcc_arm/nrf52840_bl/build/nrf52840_bl.hex projectfiles/cmake_gcc_arm/nrf52840_if/build/nrf52840_if.hex -o merged.hex
