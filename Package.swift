// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MedalliaDigitalSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MedalliaDigitalSDK",
            targets: ["MedalliaDigitalSDK"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "MedalliaDigitalSDK",
            path: "artifacts/MedalliaDigitalSDK.xcframework"
        ),
    ]
)
