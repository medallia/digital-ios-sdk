// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MedalliaPackage",
    products: [
        .library(
            name: "MedalliaPackage",
            targets: ["MedalliaPackage"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
                            name: "MedalliaPackage",
                            path: "artifacts/MedalliaDigitalSDK.xcframework"
                        ),
        .testTarget(
            name: "MedalliaPackageTests",
            dependencies: ["MedalliaPackage"]),
    ]
)
