// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EquipmentDetection: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case boundingBox = "BoundingBox"
        case confidence = "Confidence"
        case coversBodyPart = "CoversBodyPart"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let boundingBox = boundingBox {
            try encodeContainer.encode(boundingBox, forKey: .boundingBox)
        }
        if let confidence = confidence {
            try encodeContainer.encode(confidence, forKey: .confidence)
        }
        if let coversBodyPart = coversBodyPart {
            try encodeContainer.encode(coversBodyPart, forKey: .coversBodyPart)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let boundingBoxDecoded = try containerValues.decodeIfPresent(BoundingBox.self, forKey: .boundingBox)
        boundingBox = boundingBoxDecoded
        let confidenceDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .confidence)
        confidence = confidenceDecoded
        let typeDecoded = try containerValues.decodeIfPresent(ProtectiveEquipmentType.self, forKey: .type)
        type = typeDecoded
        let coversBodyPartDecoded = try containerValues.decodeIfPresent(CoversBodyPart.self, forKey: .coversBodyPart)
        coversBodyPart = coversBodyPartDecoded
    }
}