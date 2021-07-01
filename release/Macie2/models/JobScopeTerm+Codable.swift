// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension JobScopeTerm: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case simpleScopeTerm = "simpleScopeTerm"
        case tagScopeTerm = "tagScopeTerm"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let simpleScopeTerm = simpleScopeTerm {
            try encodeContainer.encode(simpleScopeTerm, forKey: .simpleScopeTerm)
        }
        if let tagScopeTerm = tagScopeTerm {
            try encodeContainer.encode(tagScopeTerm, forKey: .tagScopeTerm)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let simpleScopeTermDecoded = try containerValues.decodeIfPresent(SimpleScopeTerm.self, forKey: .simpleScopeTerm)
        simpleScopeTerm = simpleScopeTermDecoded
        let tagScopeTermDecoded = try containerValues.decodeIfPresent(TagScopeTerm.self, forKey: .tagScopeTerm)
        tagScopeTerm = tagScopeTermDecoded
    }
}