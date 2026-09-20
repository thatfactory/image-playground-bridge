#if canImport(FoundationModels) && !os(tvOS)
    @_exported import FoundationModels
#endif

/// Describes whether Apple's on-device foundation model is available.
public enum FoundationModelBridgeAvailability: Equatable, Sendable {
    /// The on-device foundation model is available.
    case available

    /// The on-device foundation model is unavailable for the associated reason.
    case unavailable(Reason)

    /// A reason the on-device foundation model is unavailable.
    public enum Reason: Equatable, Sendable {
        /// Apple Intelligence is disabled in system settings.
        case appleIntelligenceNotEnabled

        /// The current device does not support Apple Intelligence.
        case deviceNotEligible

        /// The on-device model is not ready yet.
        case modelNotReady

        /// The framework is unavailable on the current platform.
        case unsupportedPlatform

        /// The framework reported an unavailable reason unknown to this version of the package.
        case other
    }

    /// The current device's on-device foundation-model capability.
    public static var current: Self {
        #if canImport(FoundationModels) && !os(tvOS)
            Self(SystemLanguageModel.default.availability)
        #else
            unsupportedPlatform
        #endif
    }

    #if canImport(FoundationModels) && !os(tvOS)
        /// Creates a bridge availability value from Apple's model availability.
        ///
        /// - Parameter availability: The availability reported by a system language model.
        public init(_ availability: SystemLanguageModel.Availability) {
            switch availability {
            case .available:
                self = .available
            case .unavailable(let reason):
                self = .unavailable(Self.bridgeReason(for: reason))
            }
        }
    #endif

    static var unsupportedPlatform: Self {
        .unavailable(.unsupportedPlatform)
    }

    #if canImport(FoundationModels) && !os(tvOS)
        static func bridgeReason(
            for reason: SystemLanguageModel.Availability.UnavailableReason
        ) -> Reason {
            switch reason {
            case .appleIntelligenceNotEnabled:
                .appleIntelligenceNotEnabled
            case .deviceNotEligible:
                .deviceNotEligible
            case .modelNotReady:
                .modelNotReady
            @unknown default:
                .other
            }
        }
    #endif
}
