// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-17"

let package = Package(
    name: "BNBSkin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBSkin",
            type: .dynamic,
            targets: [
                "BNBSkin",
                "BNBSkin_BNBSdkCore",
                "BNBSkin_BNBEffectPlayer",
                "BNBSkin_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBSkin",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBSkin.zip",
            checksum: "0758db5deaa62dc5e75b24ff6e3ac1d4a46798a5e7b4decfd8462c88a2bbcee6"
        ),
        .target(
            name: "BNBSkin_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBSkin_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBSkin_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
