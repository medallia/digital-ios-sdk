// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "MedalliaDigitalSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "MedalliaDigitalSDK", targets: ["MedalliaDigitalSDKWrapper"])
    ],
    dependencies: [
        .package(name: "MedalliaBridgeSDK", url: "https://github.com/medallia/mobile-ios-bridge-sdk.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .binaryTarget(name: "MedalliaDigitalSDK", path: "MedalliaDigitalSDK.xcframework"),
        .target(name: "MedalliaDigitalSDKWrapper", dependencies: [
            .target(name: "MedalliaDigitalSDK"),
            .product(name: "medallia-mobile-bridge-ios-sdk", package: "MedalliaBridgeSDK")
        ], path: "MedalliaDigitalSDKWrapper")
    ]
)
