import AppLogger

enum ImagePlaygroundBridgeLogging {
    static let emoji = "🎨"
    static let subsystem = "com.thatfactory.imageplaygroundbridge"

    enum Event: Equatable {
        case cancelled
        case completed

        var message: String {
            switch self {
            case .cancelled:
                "\(emoji) playground | result=cancelled"
            case .completed:
                "\(emoji) playground | result=completed"
            }
        }
    }

    static func emit(_ event: Event) {
        AppLogger(subsystem: subsystem, category: "presentation")
            .log(level: .debug, event.message)
    }
}
