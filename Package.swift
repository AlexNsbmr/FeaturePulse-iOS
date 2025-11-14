// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FeaturePulse",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "FeaturePulse",
            targets: ["FeaturePulse"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FeaturePulse",
            url: "https://github.com/AlexNsbmr/FeaturePulse-iOS/releases/download/v1.0.0/FeaturePulse-1.0.0.xcframework.zip",
            checksum: "d18f177034e7013a458a72640eb9bcf05ee4f88af0b08b07fff51940166bac04"
        )
    ]
)
