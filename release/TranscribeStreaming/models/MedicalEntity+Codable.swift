// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MedicalEntity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case category = "Category"
        case confidence = "Confidence"
        case content = "Content"
        case endTime = "EndTime"
        case startTime = "StartTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let category = category {
            try encodeContainer.encode(category, forKey: .category)
        }
        if let confidence = confidence {
            try encodeContainer.encode(confidence, forKey: .confidence)
        }
        if let content = content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if endTime != 0.0 {
            try encodeContainer.encode(endTime, forKey: .endTime)
        }
        if startTime != 0.0 {
            try encodeContainer.encode(startTime, forKey: .startTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let startTimeDecoded = try containerValues.decode(Double.self, forKey: .startTime)
        startTime = startTimeDecoded
        let endTimeDecoded = try containerValues.decode(Double.self, forKey: .endTime)
        endTime = endTimeDecoded
        let categoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .category)
        category = categoryDecoded
        let contentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .content)
        content = contentDecoded
        let confidenceDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .confidence)
        confidence = confidenceDecoded
    }
}