// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Zip2WithNilPadding",
    products: [
        .library(
            name: "Zip2WithNilPadding",
            targets: ["Zip2WithNilPadding"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Zip2WithNilPadding",
            dependencies: []),
        .testTarget(
            name: "Zip2WithNilPaddingTests",
            dependencies: ["Zip2WithNilPadding"]),
    ]
)
