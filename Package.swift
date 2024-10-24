// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "RSClipperWrapper",
  products: [
    .library(name: "RSClipperWrapper", targets: ["RSClipperWrapper"])
  ],
  targets: [
    .target(
      name: "RSClipperWrapper",
      dependencies: ["Clipper"],
      path: "RSClipperWrapper/RSClipperWrapper",
      exclude: [
        "Clipper 6.2.1",
        "_Clipper.h",
        "_Clipper.mm",
      ]
    ),
    .target(
      name: "Clipper",
      path: "RSClipperWrapper/RSClipperWrapper",
      exclude: [
        "Clipper.swift"
      ],
      sources: [
        "Clipper 6.2.1/clipper.hpp",
        "Clipper 6.2.1/clipper.cpp",
        "_Clipper.h",
        "_Clipper.mm",
      ],
      cxxSettings: [
        .headerSearchPath("Clipper 6.2.1"),
        .headerSearchPath("."),
      ]
    )
  ]
)
