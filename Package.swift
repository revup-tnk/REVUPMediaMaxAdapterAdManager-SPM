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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.6.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterAdManagerTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterAdManager"),
                .target(name: "AppLovinMediationGoogleAdManagerAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdManager",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterAdManager.zip",
            checksum: "76bdd989b45486cdbaa5edb4b6ee7b7ba8e133cf1b017a4ae73649ec292cf0b7"
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdManagerAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/googleadmanager-adapter/AppLovinMediationGoogleAdManagerAdapter-13.6.0.0.zip",
            checksum: "b2530c3a0c6dc8422a9efa71680ba39448cb4369dd5281181541c4da1c4f13c1"
        )
    ]
)
