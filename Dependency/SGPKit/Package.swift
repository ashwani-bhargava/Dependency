// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SGPKit",
    products: [
        .library(name: "SGPKit", targets: ["Features"]),
    ],
    targets: [
        .target(name: "Features", dependencies: ["BusinessLogic"]),
        .target(name: "BusinessLogic", dependencies: []),
        .testTarget(name: "FeaturesTests", dependencies: ["Features"]),
    ]
)
