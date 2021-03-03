// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "FrontendStack",
  products: [
    .library(name: "FrontendStack", targets: ["FrontendStack"]),
  ],
  targets: [
    .target(
      name: "FrontendStack",
      dependencies: [],
      resources: [.process("Resources")]
    ),
    .testTarget(
      name: "FrontendStackTests",
      dependencies: ["FrontendStack"]
    ),
  ]
)
