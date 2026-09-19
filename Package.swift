// swift-tools-version:6.4

import PackageDescription

let strictSwiftSettings: [SwiftSetting] = [
    .treatAllWarnings(as: .error),
    .enableUpcomingFeature("ExistentialAny"),
    .enableUpcomingFeature("InferIsolatedConformances"),
    .enableUpcomingFeature("InternalImportsByDefault"),
    .enableUpcomingFeature("MemberImportVisibility"),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
]

let package = Package(
    name: "ImagePlaygroundBridge",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .tvOS(.v27),
        .visionOS(.v26),
    ],
    products: [
        .library(
            name: "ImagePlaygroundBridge",
            targets: ["ImagePlaygroundBridge"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/thatfactory/applogger", from: "1.1.1"),
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.5.0"),
    ],
    targets: [
        .target(
            name: "ImagePlaygroundBridge",
            dependencies: [
                .product(name: "AppLogger", package: "applogger")
            ]
        ),
        .testTarget(
            name: "ImagePlaygroundBridgeTests",
            dependencies: ["ImagePlaygroundBridge"]
        ),
    ]
)

package.swiftLanguageModes = [.v6]

for target in package.targets {
    target.swiftSettings = strictSwiftSettings
}
