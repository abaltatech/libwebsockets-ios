// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "v3.2.1"
let checksum = "45c0a78f0590a4a8e731b29cdeac8d2b80858cb9fcf2e9861b732a15eb529f83"

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
