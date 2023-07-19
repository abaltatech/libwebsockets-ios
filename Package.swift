// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "v3.2.1"
let checksum = "ddb153695b0e2e85d65387932b690455dc94203fab6bb39cd6072cc317191ace"

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
