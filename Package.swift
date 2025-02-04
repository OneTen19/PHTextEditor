// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PHTextEditor",
    platforms: [.iOS(.v15), .macOS(.v11)], // SwiftUI 지원을 위한 최소 버전 지정
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PHTextEditor",
            targets: ["PHTextEditor"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PHTextEditor"),
        .testTarget(
            name: "PHTextEditorTests",
            dependencies: ["PHTextEditor"]
        ),
    ]
)
