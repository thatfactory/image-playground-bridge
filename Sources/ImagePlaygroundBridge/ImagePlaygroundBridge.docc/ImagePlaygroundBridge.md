# ``ImagePlaygroundBridge``

Integrate Apple's system-managed Image Playground experience while keeping generated-image persistence in the host application.

## Overview

Use ``ImagePlaygroundBridgeAvailability/current`` to decide whether to offer generation, build an ``ImagePlaygroundBridgeRequest`` from portable ``ImagePlaygroundBridgeConcept`` values, and apply `SwiftUI/View/imagePlaygroundBridgeSheet(isPresented:request:onCompletion:onCancellation:)` to a host view.

Image Playground supplies ``ImagePlaygroundBridgeResult/temporaryURL`` only as temporary output. The completion callback is the host application's ownership boundary: copy the file into durable, application-owned storage before returning. ImagePlaygroundBridge never persists images, reads a photo library, or synchronizes media.

## Topics

### Availability and requests

- ``ImagePlaygroundBridgeAvailability``
- ``ImagePlaygroundBridgeConcept``
- ``ImagePlaygroundBridgeRequest``

### Presentation results

- ``ImagePlaygroundBridgeResult``
