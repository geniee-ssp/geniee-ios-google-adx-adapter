// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeGoogleAdxAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeGoogleAdxAdapter",
            targets: ["GenieeGoogleAdxAdapterTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.4.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeGoogleAdxAdapterTarget",
            dependencies: [
                "GenieeGoogleAdxAdapter",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/GenieeGoogleAdxAdapterTarget"
        ),
        .binaryTarget(
            name: "GenieeGoogleAdxAdapter",
            url: "https://github.com/geniee-ssp/geniee-ios-google-adx-adapter/releases/download/13.4.0/GenieeGoogleAdxAdapter.13.4.0.0.zip",
            checksum: "9e23ae6c18a33a96300561e3608ea5466a4625f9afd866536c174ca2e8677ef4"
        )
    ]
)
