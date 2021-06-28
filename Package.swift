// swift-tools-version:5.4
import PackageDescription

let package = Package(name: "GRPCServer")

package.platforms = [
    .macOS(.v11)
]

package.dependencies = [
    .package(url: "https://github.com/vapor/vapor", .exact("4.47.0")),
    .package(url: "https://github.com/grpc/grpc-swift", .exact("1.1.0")),
]

package.targets = [
    .target(name: "GRPCServer", dependencies: [
        .product(name: "Vapor", package: "vapor"),
        .product(name: "GRPC", package: "grpc-swift"),
    ]),
]

package.products = [
    .library(name: "GRPCServer", targets: ["GRPCServer"]),
]
