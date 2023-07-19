// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "v3.2.1"
let checksum = "725faadfc05d17359ad2183f82ed9ea5d5ae85445f2f39692a4001bff6b607ac"

let package = Package(
    name: "Libwebsockets",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "Libwebsockets",
            targets: ["libwebsockets"])
    ],
    targets: [
        .binaryTarget(name: "libwebsockets",
                      url: "https://github.com/abaltatech/libwebsockets-ios/releases/download/\(version)/libwebsockets.xcframework.zip",
                      checksum: checksum)
    ]
)
