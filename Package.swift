// swift-tools-version:5.3
// This comment is necessary, and every Package.swift file
// must start with it.
// It tells SPM which version to use.
// It doesn't have to be the same version as your code, 
// but it should be compatible.
import PackageDescription
let package = Package(
    name: "WCLShineButton",
    // Which platforms and minimum deployment targets are supported
    // See: https://docs.swift.org/package-manager/PackageDescription/PackageDescription.html#supportedplatform
    platforms: [
        .iOS(.v12),
    ],
    // The externaly visible build artifacts
    // See: https://docs.swift.org/package-manager/PackageDescription/PackageDescription.html#product
    products: [
        // The library that you can actually import
        .library(
            name: "WCLShineButton",
            targets: ["WCLShineButton"]
        )
    ],
    // Your package might need other packages.
    // Due to being decentralized you have to tell SPM where to look.
    dependencies: [
        
    ],
    // The basic building blocks.s
    // See: https://docs.swift.org/package-manager/PackageDescription/PackageDescription.html#target
    targets: [
        // Our package contains two targets, one for our library
        // code, and one for our tests:
        .target(name: "WCLShineButton",
                path: "WCLShineButton",
                exclude: ["Info.plist"],
                resources: [.copy("WCLShineButton.bundle")]
               ) // Where the actual code is
        
    ]
)
