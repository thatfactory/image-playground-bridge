#if canImport(ImagePlayground) && !os(tvOS)
    import ImagePlayground
    public import SwiftUI

    extension View {
        /// Presents Image Playground and maps its temporary result into ImagePlaygroundBridge values.
        ///
        /// Copy ``ImagePlaygroundBridgeResult/temporaryURL`` into host-owned storage synchronously from
        /// `onCompletion`. The system may remove the temporary file after the callback returns.
        public func imagePlaygroundBridgeSheet(
            isPresented: Binding<Bool>,
            request: ImagePlaygroundBridgeRequest,
            onCompletion: @escaping (ImagePlaygroundBridgeResult) -> Void,
            onCancellation: (() -> Void)? = nil
        ) -> some View {
            imagePlaygroundSheet(
                isPresented: isPresented,
                concepts: request.concepts.map(\.imagePlaygroundConcept),
                onCompletion: { temporaryURL in
                    IntelligenceBridgeLogging.emit(.completed)
                    onCompletion(ImagePlaygroundBridgeResult(temporaryURL: temporaryURL))
                },
                onCancellation: {
                    IntelligenceBridgeLogging.emit(.cancelled)
                    onCancellation?()
                }
            )
        }
    }

    extension ImagePlaygroundBridgeConcept {
        fileprivate var imagePlaygroundConcept: ImagePlaygroundConcept {
            switch self {
            case .extracted(let text, let title):
                .extracted(from: text, title: title)
            case .text(let text):
                .text(text)
            }
        }
    }
#endif
