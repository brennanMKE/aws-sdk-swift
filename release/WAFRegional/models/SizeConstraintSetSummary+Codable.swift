// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SizeConstraintSetSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case sizeConstraintSetId = "SizeConstraintSetId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let sizeConstraintSetId = sizeConstraintSetId {
            try encodeContainer.encode(sizeConstraintSetId, forKey: .sizeConstraintSetId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sizeConstraintSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sizeConstraintSetId)
        sizeConstraintSetId = sizeConstraintSetIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
    }
}