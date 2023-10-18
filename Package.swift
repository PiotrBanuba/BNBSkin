// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-64-g951557ebd1"

let package = Package(
    name: "BNBSkin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBSkin",
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-64-g951557ebd1/BNBSkin.zip",
            checksum: "4f9dc81d550973985ed933a61723b44b205b6383223289997615b8321bda63bd"
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
