// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DependencyRevision: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id
        case revisionNumber
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let revisionNumber = revisionNumber {
            try encodeContainer.encode(revisionNumber, forKey: .revisionNumber)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let revisionNumberDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .revisionNumber)
        revisionNumber = revisionNumberDecoded
    }
}