import Foundation

/// A generated image accepted by the user.
public struct ImageForgeResult: Equatable, Sendable {
    /// A temporary file URL that the host must copy before returning from its callback.
    public let temporaryURL: URL

    /// Creates a result for a temporary Image Playground output.
    public init(temporaryURL: URL) {
        self.temporaryURL = temporaryURL
    }
}
