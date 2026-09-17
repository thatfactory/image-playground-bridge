import Foundation

/// Input for an interactive Image Playground presentation.
public struct ImageForgeRequest: Equatable, Sendable {
    /// Concepts that seed the system-managed experience.
    public var concepts: [ImageForgeConcept]

    /// Creates a request from one or more concepts.
    public init(concepts: [ImageForgeConcept]) {
        self.concepts = concepts
    }
}
