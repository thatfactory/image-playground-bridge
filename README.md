<p align="center">
  <a href="https://developer.apple.com/swift/"><img alt="Swift Version" src="https://img.shields.io/badge/Swift-6.4-ea7a50.svg?logo=swift&logoColor=white"></a>
  <a href="https://developer.apple.com/xcode/"><img alt="Xcode Version" src="https://img.shields.io/badge/Xcode-27-50ace8.svg?logo=xcode&logoColor=white"></a>
  <a href="https://developer.apple.com/documentation/imageplayground"><img alt="Platforms" src="https://img.shields.io/badge/iOS%20%7C%20macOS%20%7C%20visionOS-26%2B-lightgrey.svg?logo=apple&logoColor=white"></a>
  <a href="https://developer.apple.com/documentation/xcode/swift-packages"><img alt="SPM" src="https://img.shields.io/badge/SPM-ready-b68f6a.svg?logo=gitlfs&logoColor=white"></a>
  <a href="https://thatfactory.github.io/image-playground-bridge/documentation/imageplaygroundbridge/"><img alt="DocC" src="https://img.shields.io/badge/DocC-documentation-0288D1.svg?logo=bookstack&logoColor=white"></a>
  <a href="https://en.wikipedia.org/wiki/MIT_License"><img alt="License" src="https://img.shields.io/badge/License-MIT-67ac5b.svg?logo=googledocs&logoColor=white"></a>
  <a href="https://github.com/thatfactory/image-playground-bridge/actions/workflows/ci.yml"><img alt="CI" src="https://github.com/thatfactory/image-playground-bridge/actions/workflows/ci.yml/badge.svg"></a>
  <a href="https://github.com/thatfactory/image-playground-bridge/actions/workflows/release.yml"><img alt="Release" src="https://github.com/thatfactory/image-playground-bridge/actions/workflows/release.yml/badge.svg"></a>
</p>

# ImagePlaygroundBridge

ImagePlaygroundBridge is a reusable Apple-platform integration layer for the system-managed Image Playground experience. It centralizes availability checks, concept setup, SwiftUI presentation wiring, cancellation, and temporary result handling while leaving persistence to the host application.

```swift
let request = ImagePlaygroundBridgeRequest(concepts: [.text("a small red house")])

content
    .imagePlaygroundBridgeSheet(
        isPresented: $isPresented,
        request: request,
        onCompletion: { result in
            // Copy result.temporaryURL into host-owned storage here.
        }
    )
```

The presentation API is available on Apple platforms that support Image Playground. The package also compiles on tvOS so shared multiplatform application targets can resolve it, while ``ImagePlaygroundBridgeAvailability/current`` reports unavailable there.

## Documentation

API documentation is published with DocC after a GitHub release. See the [ImagePlaygroundBridge documentation](https://thatfactory.github.io/image-playground-bridge/documentation/imageplaygroundbridge/).

## Requirements

- Swift 6.4
- Xcode 27
- Apple platform versions shown in the badge above
- Swift Package Manager
