// swift-tools-version:6.4

import PackageDescription

let package = Package(
    name: "ImageForgeKit",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .tvOS(.v27),
        .visionOS(.v26),
    ],
    products: [
        .library(
            name: "ImageForgeKit",
            targets: ["ImageForgeKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/thatfactory/applogger", from: "1.1.1"),
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.5.0"),
    ],
    targets: [
        .target(
            name: "ImageForgeKit",
            dependencies: [
                .product(name: "AppLogger", package: "applogger")
            ]
        ),
        .testTarget(
            name: "ImageForgeKitTests",
            dependencies: ["ImageForgeKit"]
        ),
    ]
)
