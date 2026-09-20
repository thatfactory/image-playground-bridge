import Testing

@testable import IntelligenceBridge

#if canImport(FoundationModels) && !os(tvOS)
    import FoundationModels

    @Test("Foundation Models availability maps to available")
    func foundationModelsAvailabilityMapsToAvailable() {
        #expect(
            FoundationModelBridgeAvailability(.available) == .available
        )
    }

    @Test(
        "Foundation Models unavailable reasons map deterministically",
        arguments: [
            (
                SystemLanguageModel.Availability.UnavailableReason.appleIntelligenceNotEnabled,
                FoundationModelBridgeAvailability.Reason.appleIntelligenceNotEnabled
            ),
            (
                SystemLanguageModel.Availability.UnavailableReason.deviceNotEligible,
                FoundationModelBridgeAvailability.Reason.deviceNotEligible
            ),
            (
                SystemLanguageModel.Availability.UnavailableReason.modelNotReady,
                FoundationModelBridgeAvailability.Reason.modelNotReady
            ),
        ]
    )
    func foundationModelsUnavailableReasonsMapDeterministically(
        reason: SystemLanguageModel.Availability.UnavailableReason,
        expectedReason: FoundationModelBridgeAvailability.Reason
    ) {
        #expect(
            FoundationModelBridgeAvailability(.unavailable(reason))
                == .unavailable(expectedReason)
        )
    }
#endif

@Test("Unsupported platforms use a deterministic fallback")
func unsupportedPlatformsUseDeterministicFallback() {
    #expect(
        FoundationModelBridgeAvailability.unsupportedPlatform
            == .unavailable(.unsupportedPlatform)
    )
}
