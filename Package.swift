// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenAPIHummingbirdApp",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .executable(name: "MyApp", targets: ["MyApp"]),
    ],
    dependencies: [
        // Add dependencies here
    ],
    targets: [
        .executableTarget(
            name: "MyApp",
            dependencies: []
        ),
    ]
)
