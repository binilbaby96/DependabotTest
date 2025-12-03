// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "iOSAppDependencies",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "iOSAppDependencies", targets: ["AppDependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/google/abseil-cpp-binary.git", exact: "1.2024011602.0"),
        .package(url: "https://github.com/amplitude/Amplitude-Swift.git", branch: "main"),
        .package(url: "https://github.com/amplitude/analytics-connector-ios.git", exact: "1.3.1"),
        .package(url: "https://github.com/smartlook/analytics-swift-package.git", exact: "2.2.15"),
        .package(url: "https://github.com/google/app-check.git", exact: "11.2.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "11.6.0"),
        .package(url: "https://github.com/googleanalytics/google-tag-manager-ios-sdk.git", exact: "8.0.0"),
        .package(url: "https://github.com/google/GoogleAppMeasurement.git", exact: "11.4.0"),
        .package(url: "https://github.com/google/GoogleDataTransport.git", exact: "10.1.0"),
        .package(url: "https://github.com/google/GoogleUtilities.git", exact: "8.0.2"),
        .package(url: "https://github.com/google/grpc-binary.git", exact: "1.65.1"),
        .package(url: "https://github.com/google/gtm-session-fetcher.git", exact: "4.5.0"),
        .package(url: "https://github.com/google/interop-ios-for-google-sdks.git", exact: "100.0.0"),
        .package(url: "https://github.com/googlemaps/ios-maps-sdk.git", exact: "9.2.0"),
        .package(url: "https://github.com/firebase/leveldb.git", exact: "1.22.5"),
        .package(url: "https://github.com/firebase/nanopb.git", exact: "2.30910.0"),
        .package(url: "https://github.com/pusher/NWWebSocket.git", exact: "0.5.4"),
        .package(url: "https://github.com/pusher/pusher-websocket-swift.git", exact: "10.1.5"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", exact: "5.20.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImageSwiftUI.git", exact: "3.1.3"),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", exact: "8.43.0"),
        .package(url: "https://github.com/apple/swift-protobuf.git", exact: "1.28.2"),
        .package(url: "https://github.com/tus/TUSKit", exact: "3.4.1"),
        .package(url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap", exact: "1.1.0")
    ],
    targets: [
        .target(
            name: "AppDependencies",
            dependencies: [],
            path: "Sources/AppDependencies"
        )
    ]
)
