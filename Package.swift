// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StyliticsSPM",
    platforms: [
            .iOS(.v13)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "StyliticsSPM",
            targets: ["StyliticsSPM", "StyliticsData", "StyliticsUI"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
                   name: "StyliticsSPM"
               ),
        .binaryTarget(name: "StyliticsData",
                      url: "https://github.com/parimalmodi/StyliticsFrameworks/blob/v1.1.0/StyliticsData.xcframework.zip",
                      checksum: "a7c13ee5dd59951d781b218c1431565d5cd3ff74949529148f6c567a24d2ca9a"
                     ),
        .binaryTarget(name: "StyliticsUI",
                      url: "https://github.com/parimalmodi/StyliticsFrameworks/blob/v1.1.0/StyliticsUI.xcframework.zip",
                      checksum: "e531b4e644cdc0e0479a972a92b6a9ab4e5649d389f07d673dfbe1a72ee42746"
                     ),
    ]
)
