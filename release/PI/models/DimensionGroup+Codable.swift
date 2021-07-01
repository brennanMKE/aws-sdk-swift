// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DimensionGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dimensions = "Dimensions"
        case group = "Group"
        case limit = "Limit"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dimensions = dimensions {
            var dimensionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .dimensions)
            for requeststringlist0 in dimensions {
                try dimensionsContainer.encode(requeststringlist0)
            }
        }
        if let group = group {
            try encodeContainer.encode(group, forKey: .group)
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .group)
        group = groupDecoded
        let dimensionsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .dimensions)
        var dimensionsDecoded0:[String]? = nil
        if let dimensionsContainer = dimensionsContainer {
            dimensionsDecoded0 = [String]()
            for string0 in dimensionsContainer {
                if let string0 = string0 {
                    dimensionsDecoded0?.append(string0)
                }
            }
        }
        dimensions = dimensionsDecoded0
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
    }
}