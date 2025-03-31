// swift-tools-version:6.0
import PackageDescription

let package = Package(
  name: "Framework",
  platforms: [
    .iOS(.v16)
  ],
  products: [
    .library(name: "Framework", targets: ["Framework"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Framework",
      path: "Framework/Sources"
    )
  ]
)
