#if canImport(ImagePlayground) && !os(tvOS)
    import ImagePlayground
    import SwiftUI

    extension View {
        /// Presents Image Playground and maps its temporary result into ImageForgeKit values.
        ///
        /// Copy ``ImageForgeResult/temporaryURL`` into host-owned storage synchronously from
        /// `onCompletion`. The system may remove the temporary file after the callback returns.
        public func imageForgeSheet(
            isPresented: Binding<Bool>,
            request: ImageForgeRequest,
            onCompletion: @escaping (ImageForgeResult) -> Void,
            onCancellation: (() -> Void)? = nil
        ) -> some View {
            imagePlaygroundSheet(
                isPresented: isPresented,
                concepts: request.concepts.map(\.imagePlaygroundConcept),
                onCompletion: { temporaryURL in
                    ImageForgeLogging.emit(.completed)
                    onCompletion(ImageForgeResult(temporaryURL: temporaryURL))
                },
                onCancellation: {
                    ImageForgeLogging.emit(.cancelled)
                    onCancellation?()
                }
            )
        }
    }

    extension ImageForgeConcept {
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
