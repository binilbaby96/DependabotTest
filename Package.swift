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
        .package(
            url: "https://github.com/pusher/NWWebSocket.git",
            exact: "0.5.7"
        ),
        .package(
            url: "https://github.com/pusher/pusher-websocket-swift.git",
            exact: "10.1.5"
        ),
        .package(
            url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap",
            exact: "1.1.0"
        )
    ],
    targets: [
        .target(
            name: "AppDependencies",
            dependencies: [
                .product(name: "NWWebSocket", package: "nwwebsocket"),
                .product(name: "PusherSwift", package: "pusher-websocket-swift"),
                .product(name: "TweetNacl", package: "tweetnacl-swiftwrap")
            ],
            path: "."
        )
    ]
)
