// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterAdManager",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterAdManager",
            targets: ["REVUPMediaMaxAdapterAdManagerTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterAdManagerTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterAdManager"),
                .target(name: "REVUPMediaMaxAdapterAdManagerMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdManager",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterAdManager.zip",
            checksum: "e41c6d2ab43ee5e99447ea4df9bc536612e27e0226a4533d3009b6254a2041fc"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "94242eff8ca8600a1a76bbbe43534967c8cd9054a5199ebcfa8de4cfabf6f499"
        ),
    ]
)
