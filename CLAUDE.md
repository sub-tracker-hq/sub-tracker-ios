# Sub-tracker iOS

Native iOS app. Swift + SwiftUI. Consumes sub-tracker-api.

## Stack
- SwiftUI, MVVM (View + ViewModel per feature), Swift Package Manager
- Networking: URLSession wrapper in Core/Network/
- Auth: Clerk iOS SDK. Tokens in Keychain. Biometric (Face ID/Touch ID).

## Conventions
- Money as Decimal, never Double
- Models in Core/Models/ match the API contract
- Push via APNs

## The contract
- API source of truth: ../sub-tracker-api/api/openapi.yaml

## Workflow
- Branch off `dev`, PR into `dev`. feature/ios-*, fix/ios-*
- Build/test via Xcode or xcodebuild