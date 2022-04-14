#!/usr/bin/swift

/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

import Foundation

struct VersionDeps: Codable {
    var awsCRTSwiftVersion: String
    var clientRuntimeVersion: String
}
let plistFile = "versionDependencies.plist"

func getVersionsOfDependencies() -> VersionDeps? {
    guard let versionsPlist = FileManager.default.contents(atPath: plistFile),
          let deps = try? PropertyListDecoder().decode(VersionDeps.self, from: versionsPlist)
          else {
        return nil
    }
    return deps
}

func loadTemplate() throws -> String? {
    let fileManager = FileManager.default
    let templateFileURL = URL(fileURLWithPath: #file)
        .deletingLastPathComponent()
        .appendingPathComponent("Template-Package.swift")

    guard fileManager.fileExists(atPath: templateFileURL.path) else {
        print("File not found: \(templateFileURL.absoluteString)")
        return nil
    }
    guard let data = try? Data(contentsOf: templateFileURL) else {
            print("Failed to load template file: \(templateFileURL.absoluteString)")
            return nil
        }
    guard let template = String(data: data, encoding: .utf8) else {
            print("Failed to load string from template data")
            return nil
        }

    return template
}

func loadFilter() -> [String]? {
    let fileManager = FileManager.default
    let filterFileURL = URL(fileURLWithPath: #file)
        .deletingLastPathComponent()
        .deletingLastPathComponent()
        .appendingPathComponent("filter.json")

    guard fileManager.fileExists(atPath: filterFileURL.path),
          let data = try? Data(contentsOf: filterFileURL),
          let filter = try? JSONDecoder().decode([String].self, from: data) else {
              return nil
          }

    return ["AWSClientRuntime"] + filter
}

func loadReleasedSDKs() throws -> [String] {
    let sdks = try FileManager.default.contentsOfDirectory(atPath: "release")

    guard let filter = loadFilter() else {
        return sdks
    }
    let filtered = sdks.filter {
        filter.contains($0)
    }

    return filtered
}

func generateProducts(_ releasedSDKs: [String]) -> String {
    let result: [String] = releasedSDKs.reduce(into: []) {
        $0.append("    .library(name: \"\($1)\", targets: [\"\($1)\"]),")
    }

    return result.joined(separator: "\n")
}

func generateTargets(_ releasedSDKs: [String]) -> String {
    let result: [String] = releasedSDKs.reduce(into: []) {
        $0.append("    .target(name: \"\($1)\", dependencies: [.product(name: \"ClientRuntime\", package: \"ClientRuntime\"), \"AWSClientRuntime\"], path: \"release/\($1)\"),")
    }

    return result.joined(separator: "\n")
}

let releasedSDKs = try loadReleasedSDKs().sorted()
guard let versions = getVersionsOfDependencies() else {
    print("Failed to get version dependencies")
    print("  Unable to to read: '\(plistFile)'")
    exit(1)
}

if let template = try loadTemplate() {
    let products = generateProducts(releasedSDKs)
    let targets = generateTargets(releasedSDKs)
    let output = template
        .replacingOccurrences(of: "<% Products %>", with:products)
        .replacingOccurrences(of: "<% Targets %>", with: targets)
        .replacingOccurrences(of: "<% AwsCrtVersion %>", with: "\(versions.awsCRTSwiftVersion)")
        .replacingOccurrences(of: "<% ClientRuntimeVersion %>", with: "\(versions.clientRuntimeVersion)")
    print(output)
} else {
    print("// Failed to load template")
}
