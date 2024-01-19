#!/usr/bin/env bash

platform=$(uname)

if [[ "$platform" == "Linux" ]]; then
    # Delegate to Linux install script
    ./ubuntu.sh
elif [[ "$platform" == "Darwin" ]]; then
    # Delegate to macOS install script
    ./macos.sh
else
    echo "Unsupported platform: $platform"
    exit 1
fi
