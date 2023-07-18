// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "v3.2.1"
let checksum = "8ce642a9fa7253196db10cc3beae92afcd56d7cba65af6a606c862ab3b79bd5b"

let package = Package(
    name: "LibWebSockets",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "LibWebSockets",
            targets: ["libwebsockets"])
    ],
    targets: [
        .binaryTarget(name: "libwebsockets",
                      url: "https://github.com/abaltatech/libwebsockets-ios/releases/download/\(version)/libwebsockets.xcframework.zip",
                      checksum: checksum)
    ]
)
