// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterAdManager",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterAdManager",
            targets: ["REVUPMediaMaxAdapterAdManagerTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-GoogleAdsManager.git", exact: "13110000.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterAdManagerTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterAdManager"),
                .product(name: "AppLovinMediationGoogleAdManagerAdapter", package: "AppLovin-MAX-Swift-Package-GoogleAdsManager"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdManager",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterAdManager.zip",
            checksum: "07dcb131bf6c4ad85bb9f27d283503695723c31ddba4d725066f83681f5f1033"
        ),
    ]
)
