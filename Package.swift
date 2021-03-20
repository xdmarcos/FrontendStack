// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "FrontendStackStyle",
  platforms: [
    .iOS(.v11), .tvOS(.v11),
  ],
  products: [
    .library(name: "FrontendStackStyle", targets: ["FrontendStackStyle"]),
  ],
  targets: [
    .target(
      name: "FrontendStackStyle",
      dependencies: [],
      resources: [.process("Resources")]
    ),
    .testTarget(
      name: "FrontendStackStyleTests",
      dependencies: ["FrontendStackStyle"]
    ),
  ]
)
