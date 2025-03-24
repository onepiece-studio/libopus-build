import Foundation

do {
    let options = try ArgumentOptions.parse(CommandLine.arguments)
    try Build.performCommand(options)

    try BuildLibopus().buildALL()
} catch {
    print("ERROR: \(error.localizedDescription)")
    exit(1)
}


enum Library: String, CaseIterable {
    case libopus 

    var version: String {
        switch self {
        case .libopus:
            return "v1.5.2"
        }
    }

    var url: String {
        switch self {
        case .libopus:
            return "https://github.com/xiph/opus.git"
        }
    }

    // for generate Package.swift
    var targets : [PackageTarget] {
        switch self {
        case .libopus:
            return  [
                .target(
                    name: "Libopus",
                    url: "https://github.com/onepiece-studio/libopus-build/releases/download/\(BaseBuild.options.releaseVersion)/Libopus.xcframework.zip",
                    checksum: "https://github.com/onepiece-studio/libopus-build/releases/download/\(BaseBuild.options.releaseVersion)/Libopus.xcframework.checksum.txt"
                ),
            ]
        }
    }
}


private class BuildLibopus: BaseBuild {
    init() {
        super.init(library: .libopus)
    }
}
