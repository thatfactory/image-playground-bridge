import Foundation

#if canImport(ImagePlayground) && !os(tvOS)
    import ImagePlayground
#endif

/// Describes whether the current device can present Image Playground.
public enum ImagePlaygroundBridgeAvailability: Equatable, Sendable {
    /// Image Playground can be presented.
    case available

    /// Image Playground is unavailable on this device or platform.
    case unavailable

    /// The current device's Image Playground capability.
    public static var current: Self {
        #if canImport(ImagePlayground) && !os(tvOS)
            ImagePlaygroundViewController.isAvailable ? .available : .unavailable
        #else
            .unavailable
        #endif
    }
}
