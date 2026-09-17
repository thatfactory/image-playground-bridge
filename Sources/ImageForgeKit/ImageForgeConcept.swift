import Foundation

/// A portable concept used to seed the system Image Playground experience.
public enum ImageForgeConcept: Equatable, Sendable {
    /// Lets Image Playground extract useful concepts from prose.
    case extracted(text: String, title: String? = nil)

    /// Supplies a concise text concept directly.
    case text(String)
}
