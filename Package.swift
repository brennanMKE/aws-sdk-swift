// swift-tools-version:5.5
import PackageDescription
import class Foundation.FileManager
import class Foundation.JSONDecoder
import struct Foundation.URL
import struct Foundation.Data

let allProducts: [Product] = [
    .library(name: "AWSClientRuntime", targets: ["AWSClientRuntime"]),
    .library(name: "AWSCognitoIdentity", targets: ["AWSCognitoIdentity"]),
    .library(name: "AWSCognitoIdentityProvider", targets: ["AWSCognitoIdentityProvider"]),
    .library(name: "AWSS3", targets: ["AWSS3"]),
]

let allTargets: [Target] = [
    .target(
        name: "AWSClientRuntime",
        dependencies: [
            .product(name: "ClientRuntime", package: "ClientRuntime"),
            .product(name: "AwsCommonRuntimeKit", package: "AwsCrt")
        ]
    ),
    .testTarget(
        name: "AWSClientRuntimeTests",
        dependencies: [
            "AWSClientRuntime",
            .product(name: "SmithyTestUtil", package: "ClientRuntime"),
            .product(name: "ClientRuntime", package: "ClientRuntime")
        ]
    ),
    .target(name: "AWSCognitoIdentity", dependencies: [.product(name: "ClientRuntime", package: "ClientRuntime"), "AWSClientRuntime"], path: "release/AWSCognitoIdentity"),
    .target(name: "AWSCognitoIdentityProvider", dependencies: [.product(name: "ClientRuntime", package: "ClientRuntime"), "AWSClientRuntime"], path: "release/AWSCognitoIdentityProvider"),
    .target(name: "AWSS3", dependencies: [.product(name: "ClientRuntime", package: "ClientRuntime"), "AWSClientRuntime"], path: "release/AWSS3"),
]

var filter: [String]? {
    let fileManager = FileManager.default
    let filterFileURL = URL(fileURLWithPath: #file)
        .deletingLastPathComponent()
        .appendingPathComponent("filter.json")

    guard fileManager.fileExists(atPath: filterFileURL.path),
          let data = try? Data(contentsOf: filterFileURL),
          let filter = try? JSONDecoder().decode([String].self, from: data) else {
              return nil
          }

    return ["AWSClientRuntime"] + filter
}

var products: [Product] {
    guard let filter = filter else {
        return allProducts
    }
    let products = allProducts.filter {
        filter.contains($0.name)
    }
    return products
}

var targets: [Target] {
    guard let filter = filter else {
        return allTargets
    }
    let targets = allTargets.filter {
        filter.contains($0.name)
    }
    return targets
}

let package = Package(
    name: "AWSSwiftSDK",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: products,
    dependencies: [
        .package(name: "AwsCrt", url: "https://github.com/awslabs/aws-crt-swift.git", from: "0.2.2"),
        .package(name: "ClientRuntime", url: "https://github.com/awslabs/smithy-swift.git", from: "0.2.3")
    ],
    targets: targets
)

