// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift-fountain",
    platforms: [
        .macOS(.v10_15) // Specify the platform and version if necessary
    ],
    dependencies: [
        // Define the package dependency with the correct URL and version
        .package(url: "https://github.com/apple/swift-openapi-generator.git", from:("1.2.1"))
    ],
    targets: [
        .executableTarget(
            name: "swift-fountain",
            dependencies: [
                // Specify the correct product name here
                .product(name: "OpenAPIGenerator", package: "swift-openapi-generator")
            ]
        )
    ]
)
