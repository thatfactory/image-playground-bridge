# ``IntelligenceBridge``

Integrate focused Apple intelligence capabilities while keeping product policy and persistence in the host application.

## Overview

Image Playground is the package's first capability. Use ``ImagePlaygroundBridgeAvailability/current`` to decide whether to offer generation, build an ``ImagePlaygroundBridgeRequest`` from portable ``ImagePlaygroundBridgeConcept`` values, and apply `SwiftUI/View/imagePlaygroundBridgeSheet(isPresented:request:onCompletion:onCancellation:)` to a host view.

Image Playground supplies ``ImagePlaygroundBridgeResult/temporaryURL`` only as temporary output. The completion callback is the host application's ownership boundary: copy the file into durable, application-owned storage before returning. IntelligenceBridge never persists images, reads a photo library, synchronizes media, or owns product-specific prompts.

For Foundation Models, use ``FoundationModelBridgeAvailability/current`` to decide whether to offer model-backed behavior.
On supported platforms, importing IntelligenceBridge also exposes Apple's
[`FoundationModels`](https://developer.apple.com/documentation/foundationmodels) APIs, including `SystemLanguageModel`,
`LanguageModelSession`, `@Generable`, and `@Guide`. The host application owns prompts, sessions, generated values, and
product policy; IntelligenceBridge does not wrap Apple's session API or define a generic language-model abstraction.

## Topics

### Availability and requests

- ``ImagePlaygroundBridgeAvailability``
- ``ImagePlaygroundBridgeConcept``
- ``ImagePlaygroundBridgeRequest``

### Presentation results

- ``ImagePlaygroundBridgeResult``

### Foundation Models

- ``FoundationModelBridgeAvailability``
- ``FoundationModelBridgeAvailability/Reason``
