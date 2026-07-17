# sub-tracker-ios
iOS app for subtracker built with Swift and SwiftUI. Subscription tracking, bank linking, biometric auth via Face ID/Touch ID, and APNs push notifications.

## Getting started

Shared logic lives in the local `SubTrackerCore` Swift package (`Package.swift`).
Open the package in Xcode, or run `swift build` / `swift test` from this
directory to build and test it directly. The app itself (`App/`) needs an
Xcode app project wrapping this package — not yet created.
