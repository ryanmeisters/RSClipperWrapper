// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "RSClipperWrapper",
    products: [
        .library(
            name: "RSClipperWrapper",
            targets: ["RSClipperWrapper"]//, "SwiftFastText"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ClipperWrapper",
            path: "RSClipperWrapper/Sources/ObjC"
        ),
        .target(
            name: "RSClipperWrapper",
            dependencies: ["ClipperWrapper"],
            path: "RSClipperWrapper/Sources/Swift"
        )
    ],
    cxxLanguageStandard: .cxx17
)
