// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SubTrackerCore",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "SubTrackerCore", targets: ["SubTrackerCore"])
    ],
    targets: [
        .target(name: "SubTrackerCore", path: "Sources/SubTrackerCore"),
        .testTarget(
            name: "SubTrackerCoreTests",
            dependencies: ["SubTrackerCore"],
            path: "Tests/SubTrackerCoreTests"
        ),
    ]
)
