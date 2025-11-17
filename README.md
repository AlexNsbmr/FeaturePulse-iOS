# FeaturePulse iOS SDK

Binary distribution of the FeaturePulse iOS SDK for Swift Package Manager.

## Installation

### Swift Package Manager

Add FeaturePulse to your project:

```swift
dependencies: [
    .package(url: "https://github.com/AlexNsbmr/FeaturePulse-iOS", from: "1.0.0")
]
```

## Usage

Import FeaturePulse in your Swift files:

```swift
import FeaturePulse

// Configure with your API key
FeaturePulseConfiguration.shared.apiKey = "your-api-key"

// Display the feature request view
FeaturePulseView()
```

## Requirements

- iOS 17.0+ / macOS 14.0+
- Swift 6.0+
- Xcode 15.0+

## Features

- ✅ SwiftUI-only architecture
- ✅ Feature request management
- ✅ Voting system
- ✅ Multi-language support
- ✅ Customizable UI

## Note

This package includes StableID as a dependency for device identification. It will be automatically resolved by Swift Package Manager.

## License

Proprietary - Binary distribution only.
