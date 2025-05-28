#!/bin/bash
set -ex

echo "Building binaries and libs..."
cmake -S . -B cmake-build -DCMAKE_BUILD_TYPE=Release
cmake --build cmake-build --config Release

echo "Installing the Project"

cmake -S . -B cmake-build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/projectMFrontend
sudo cmake --build cmake-build --config Release --target install

echo "Done!"
