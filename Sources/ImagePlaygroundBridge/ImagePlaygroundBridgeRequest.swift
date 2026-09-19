import Foundation

/// Input for an interactive Image Playground presentation.
public struct ImagePlaygroundBridgeRequest: Equatable, Sendable {
    /// Concepts that seed the system-managed experience.
    public var concepts: [ImagePlaygroundBridgeConcept]

    /// Creates a request from one or more concepts.
    public init(concepts: [ImagePlaygroundBridgeConcept]) {
        self.concepts = concepts
    }
}
