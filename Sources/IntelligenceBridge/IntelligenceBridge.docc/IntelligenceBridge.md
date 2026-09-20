# ``IntelligenceBridge``

Integrate focused Apple intelligence capabilities while keeping product policy and persistence in the host application.

## Overview

Image Playground is the package's first capability. Use ``ImagePlaygroundBridgeAvailability/current`` to decide whether to offer generation, build an ``ImagePlaygroundBridgeRequest`` from portable ``ImagePlaygroundBridgeConcept`` values, and apply `SwiftUI/View/imagePlaygroundBridgeSheet(isPresented:request:onCompletion:onCancellation:)` to a host view.

Image Playground supplies ``ImagePlaygroundBridgeResult/temporaryURL`` only as temporary output. The completion callback is the host application's ownership boundary: copy the file into durable, application-owned storage before returning. IntelligenceBridge never persists images, reads a photo library, synchronizes media, or owns product-specific prompts.

## Topics

### Availability and requests

- ``ImagePlaygroundBridgeAvailability``
- ``ImagePlaygroundBridgeConcept``
- ``ImagePlaygroundBridgeRequest``

### Presentation results

- ``ImagePlaygroundBridgeResult``
