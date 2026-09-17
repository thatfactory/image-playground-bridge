import Foundation
import Testing

@testable import ImageForgeKit

@Test("The package namespace is available")
func packageNamespaceIsAvailable() {
    _ = ImageForgeKit.self
}

@Test("Requests preserve portable concepts")
func requestsPreservePortableConcepts() {
    let request = ImageForgeRequest(
        concepts: [
            .text("a small red house"),
            .extracted(text: "A welcoming home", title: "House"),
        ]
    )

    #expect(
        request.concepts == [
            .text("a small red house"),
            .extracted(text: "A welcoming home", title: "House"),
        ]
    )
}

@Test("Results preserve the temporary URL")
func resultsPreserveTemporaryURL() {
    let url = URL(filePath: "/tmp/generated-image")

    #expect(ImageForgeResult(temporaryURL: url).temporaryURL == url)
}

@Test("Logging messages do not contain generated content")
func loggingMessagesArePrivacySafe() {
    #expect(ImageForgeLogging.Event.cancelled.message == "🎨 playground | result=cancelled")
    #expect(ImageForgeLogging.Event.completed.message == "🎨 playground | result=completed")
}
