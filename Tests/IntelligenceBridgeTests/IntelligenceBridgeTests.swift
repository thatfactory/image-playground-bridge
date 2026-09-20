import Foundation
import Testing

@testable import IntelligenceBridge

@Test("The package namespace is available")
func packageNamespaceIsAvailable() {
    _ = IntelligenceBridge.self
}

@Test("Requests preserve portable concepts")
func requestsPreservePortableConcepts() {
    let request = ImagePlaygroundBridgeRequest(
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

    #expect(ImagePlaygroundBridgeResult(temporaryURL: url).temporaryURL == url)
}

@Test("Logging messages do not contain generated content")
func loggingMessagesArePrivacySafe() {
    #expect(IntelligenceBridgeLogging.Event.cancelled.message == "🧠 playground | result=cancelled")
    #expect(IntelligenceBridgeLogging.Event.completed.message == "🧠 playground | result=completed")
}
