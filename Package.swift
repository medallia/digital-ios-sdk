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
            targets: ["MedalliaDigitalSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(
            name: "MedalliaBridgeSDK",
            url: "https://github.com/medallia/mobile-ios-bridge-sdk.git",
            .upToNextMajor(from: "1.0.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "MedalliaDigitalSDK",
            path: "artifacts/MedalliaDigitalSDK.xcframework"
        ),
        .target(
            name: "MedalliaDigitalSDKWrapper",
            dependencies: [
                .target(
                    name: "MedalliaDigitalSDK"
                ),
                .product(
                    name: "medallia-mobile-bridge-ios-sdk",
                    package: "MedalliaBridgeSDK"
                )
            ],
            path: "MedalliaDigitalSDKWrapper"
        )
    ]
)
