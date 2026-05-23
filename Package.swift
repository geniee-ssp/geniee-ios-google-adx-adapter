// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GNAdGoogleMediationAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GNAdGoogleMediationAdapter",
            targets: ["GNAdGoogleMediationAdapterTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "11.13.0"
        )
    ],
    targets: [
        .target(
            name: "GNAdGoogleMediationAdapterTarget",
            dependencies: [
                "GNAdGoogleMediationAdapter",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/GNAdGoogleMediationAdapterTarget"
        ),
        .binaryTarget(
            name: "GNAdGoogleMediationAdapter",
            url: "https://github.com/unigeniee/geniee-ios-google-adx-adapter/releases/download/11.13.0/GNAdGoogleMediationAdapter.11.13.0.0.zip",
            checksum: "aa013bc6251fd8d3828bd85cb2f55284345224e1099a9c90bf9e36c58753fd4c"
        )
    ]
)
