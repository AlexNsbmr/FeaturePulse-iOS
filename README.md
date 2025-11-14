# FeaturePulse iOS SDK

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-iOS%2017+-lightgrey.svg)](https://www.apple.com/ios/)

FeaturePulse is a powerful iOS SDK that enables developers to easily collect and manage feature requests from users directly within their apps.

## ✨ Features

- 🎯 **Native SwiftUI Integration** - Beautiful, native UI that fits seamlessly into your app
- 🗳️ **Voting System** - Let users vote on feature requests they care about
- 💬 **Rich Feedback** - Collect detailed feature requests with descriptions
- 📱 **Device Information** - Automatically capture device context for better insights
- 🔒 **Privacy-Focused** - Respects user privacy with configurable data collection
- 🎨 **Customizable UI** - Match your app's design with flexible theming options

## 📦 Installation

### Swift Package Manager (Recommended)

Add FeaturePulse to your project using Swift Package Manager:

1. In Xcode, go to **File > Add Package Dependencies**
2. Enter the repository URL: `https://github.com/AlexNsbmr/FeaturePulse-iOS`
3. Select the version you want to use
4. Click **Add Package**

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/AlexNsbmr/FeaturePulse-iOS", from: "1.0.0")
]
```

### Manual Installation (XCFramework)

1. Download the latest `FeaturePulse-1.0.0.xcframework.zip` from [Releases](https://github.com/AlexNsbmr/FeaturePulse-iOS/releases)
2. Unzip the file
3. Drag `FeaturePulse.xcframework` into your Xcode project
4. In your target's settings, under **Frameworks, Libraries, and Embedded Content**, ensure FeaturePulse is set to **Embed & Sign**

**Binary Checksum for SPM:**
```
d18f177034e7013a458a72640eb9bcf05ee4f88af0b08b07fff51940166bac04
```

## 🚀 Quick Start

### 1. Configure FeaturePulse

Configure FeaturePulse in your App initialization:

```swift
import SwiftUI
import FeaturePulse

@main
struct YourApp: App {
    init() {
        FeaturePulse.configure(
            apiKey: "your-api-key",
            baseURL: "https://your-api-url.com"
        )
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

### 2. Present the Feature Request View

Use the FeaturePulseView in your SwiftUI views:

```swift
import SwiftUI
import FeaturePulse

struct ContentView: View {
    @StateObject private var viewModel = FeaturePulseViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Button("Request a Feature") {
                    viewModel.isPresented = true
                }
            }
            .sheet(isPresented: $viewModel.isPresented) {
                FeaturePulseView(viewModel: viewModel)
            }
        }
    }
}
```

### 3. Get Your API Key

1. Sign up at [FeaturePulse Dashboard](https://your-app-url.com)
2. Create a new project
3. Copy your API key from the project settings

## 📖 Documentation

### Configuration Options

```swift
// Basic configuration
FeaturePulse.configure(
    apiKey: "your-api-key",
    baseURL: "https://your-api-url.com"
)

// Advanced configuration with custom user info
let config = FeaturePulseConfig(
    apiKey: "your-api-key",
    baseURL: "https://your-api-url.com",
    user: FeaturePulseUser(
        deviceID: "custom-device-id",  // Optional: defaults to device UUID
        userID: "user-123",              // Optional: your app's user ID
        email: "user@example.com"        // Optional: user's email
    )
)
FeaturePulse.configure(with: config)
```

### Customizing the UI

The FeaturePulse UI automatically adapts to your app's color scheme (light/dark mode). Future versions will support more customization options.

### Viewing Feature Requests

```swift
struct FeatureRequestsView: View {
    @StateObject private var viewModel = FeaturePulseViewModel()

    var body: some View {
        FeaturePulseView(viewModel: viewModel)
            .onAppear {
                viewModel.loadFeatureRequests()
            }
    }
}
```

## 🎯 Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## 🔐 Privacy

FeaturePulse is designed with privacy in mind:

- Only collects data explicitly provided by the user
- Device information is anonymized
- No tracking or analytics beyond feature request data
- Full control over what user information is sent

## 📝 Example App

Check out the [Examples](Examples/) directory for a complete example app demonstrating all features.

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## 📄 License

FeaturePulse is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

## 🆘 Support

- 💬 GitHub Issues: [Create an issue](https://github.com/AlexNsbmr/FeaturePulse-iOS/issues)
- 📚 Documentation: [Full Documentation](https://your-app-url.com/docs)

## 🗺️ Roadmap

- [ ] Improved theming and customization options
- [ ] Offline support with sync
- [ ] Rich text formatting for feature descriptions
- [ ] Image attachments
- [ ] Push notifications for feature updates
- [ ] Analytics dashboard integration

## 📊 Changelog

See [CHANGELOG.md](CHANGELOG.md) for details about changes in each version.

---

Made with ❤️ by the FeaturePulse team
