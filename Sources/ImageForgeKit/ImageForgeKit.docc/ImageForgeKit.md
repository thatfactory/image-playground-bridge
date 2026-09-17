# ``ImageForgeKit``

Integrate Apple's system-managed Image Playground experience while keeping generated-image persistence in the host application.

## Overview

Use ``ImageForgeAvailability/current`` to decide whether to offer generation, build an ``ImageForgeRequest`` from portable ``ImageForgeConcept`` values, and apply `SwiftUI/View/imageForgeSheet(isPresented:request:onCompletion:onCancellation:)` to a host view.

Image Playground supplies ``ImageForgeResult/temporaryURL`` only as temporary output. The completion callback is the host application's ownership boundary: copy the file into durable, application-owned storage before returning. ImageForgeKit never persists images, reads a photo library, or synchronizes media.

## Topics

### Availability and requests

- ``ImageForgeAvailability``
- ``ImageForgeConcept``
- ``ImageForgeRequest``

### Presentation results

- ``ImageForgeResult``
