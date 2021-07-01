// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Artifact: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case location
        case name
        case revision
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let location = location {
            try encodeContainer.encode(location, forKey: .location)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let revision = revision {
            try encodeContainer.encode(revision, forKey: .revision)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let revisionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revision)
        revision = revisionDecoded
        let locationDecoded = try containerValues.decodeIfPresent(ArtifactLocation.self, forKey: .location)
        location = locationDecoded
    }
}