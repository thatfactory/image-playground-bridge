import IntelligenceBridge
import Testing

#if canImport(FoundationModels) && !os(tvOS)
    @Generable
    private struct GeneratedValue {
        @Guide(description: "A short value")
        var value: String
    }

    @Test("Foundation Models APIs are re-exported to consumers")
    func foundationModelsAPIsAreReexportedToConsumers() {
        _ = SystemLanguageModel.self
        _ = LanguageModelSession.self
        _ = GeneratedValue.self
    }
#endif
