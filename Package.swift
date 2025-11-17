// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "FeaturePulse",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v17),
    .macOS(.v14),
  ],
  products: [
    .library(
      name: "FeaturePulse",
      targets: ["FeaturePulseBinary", "FeaturePulseWrapper"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/codykerns/StableID", from: "0.4.1")
  ],
  targets: [
    .target(
      name: "FeaturePulseWrapper",
      dependencies: [
        "FeaturePulseBinary",
        .product(name: "StableID", package: "StableID"),
      ]
    ),
    .binaryTarget(
      name: "FeaturePulseBinary",
      path: "Sources/FeaturePulse.xcframework"
    ),
  ]
)
