#!/bin/bash

git submodule update --recursive --init --remote

cd JUCE
if ! [ -d "cmake-build" ]; then
    cmake . -B cmake-build -DJUCE_BUILD_EXTRAS=ON
    cmake --build cmake-build --target AudioPluginHost
fi

cd ..