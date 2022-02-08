#!/bin/bash

#tsc -p tsconfig.json
sass src/css/chargy.scss src/css/chargy.css
webpack -c webpack.config.cjs

electron-builder --linux --x64
electron-builder --macos --arm64
electron-builder --macos --x64
electron-builder --windows --arm64
electron-builder --windows --x64

