// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libopus",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(name: "Libopus", targets: ["_Libopus"]),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libopus",
            dependencies: ["Libopus"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libopus",
            url: "https://github.com/onepiece-studio/libopus-build/releases/download/1.5.2/Libopus.xcframework.zip",
            checksum: "e92c45262a65503532345990488217bdeef18bc461fa2cf3f0f314c9353889d5"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)