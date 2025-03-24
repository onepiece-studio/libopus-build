# libopus-build


[![GitHub Release](https://img.shields.io/github/v/release/onepiece-studio/libopus-build)](https://github.com/onepiece-studio/libopus-build/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

build scripts for [libopus](https://github.com/xiph/opus)

## Installation

### Swift Package Manager

```
.target(
    name: "Libopus",
    url: "https://github.com/onepiece-studio/libopus-build/releases/download/VERSION/Libopus.xcframework.zip",
    checksum: "CHECKSUM"
)
```

## How to build

```bash
make build
# or build specified platforms 
make build platform=ios,macos
# or see help
make help
```
