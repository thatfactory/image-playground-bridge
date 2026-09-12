<p align="center">
  <a href="https://developer.apple.com/swift/"><img alt="Swift Version" src="https://img.shields.io/badge/Swift-6.4-ea7a50.svg?logo=swift&logoColor=white"></a>
  <a href="https://developer.apple.com/xcode/"><img alt="Xcode Version" src="https://img.shields.io/badge/Xcode-27-50ace8.svg?logo=xcode&logoColor=white"></a>
  <a href="https://developer.apple.com/documentation/imageplayground"><img alt="Platforms" src="https://img.shields.io/badge/iOS%20%7C%20macOS%20%7C%20visionOS-26%2B-lightgrey.svg?logo=apple&logoColor=white"></a>
  <a href="https://developer.apple.com/documentation/xcode/swift-packages"><img alt="SPM" src="https://img.shields.io/badge/SPM-ready-b68f6a.svg?logo=gitlfs&logoColor=white"></a>
  <a href="https://thatfactory.github.io/imageforgekit/documentation/imageforgekit/"><img alt="DocC" src="https://img.shields.io/badge/DocC-documentation-0288D1.svg?logo=bookstack&logoColor=white"></a>
  <a href="https://en.wikipedia.org/wiki/MIT_License"><img alt="License" src="https://img.shields.io/badge/License-MIT-67ac5b.svg?logo=googledocs&logoColor=white"></a>
  <a href="https://github.com/thatfactory/imageforgekit/actions/workflows/ci.yml"><img alt="CI" src="https://github.com/thatfactory/imageforgekit/actions/workflows/ci.yml/badge.svg"></a>
  <a href="https://github.com/thatfactory/imageforgekit/actions/workflows/release.yml"><img alt="Release" src="https://github.com/thatfactory/imageforgekit/actions/workflows/release.yml/badge.svg"></a>
</p>

# ImageForgeKit

ImageForgeKit is a reusable Apple-platform integration layer for the system-managed Image Playground experience. It will centralize availability checks, presentation wiring, cancellation and result handling, and safe transfer of temporary generated files into host-owned storage.

The package is currently a bootstrapped foundation. Its public API is intentionally limited to a namespace while the first consumer establishes the smallest useful contract.

## Documentation

API documentation is published with DocC after a GitHub release. See the [ImageForgeKit documentation](https://thatfactory.github.io/imageforgekit/documentation/imageforgekit/).

## Requirements

- Swift 6.4
- Xcode 27
- Apple platform versions shown in the badge above
- Swift Package Manager
