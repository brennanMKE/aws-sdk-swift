// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SearchResourcesSortCriteria: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributeName = "attributeName"
        case orderBy = "orderBy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributeName = attributeName {
            try encodeContainer.encode(attributeName.rawValue, forKey: .attributeName)
        }
        if let orderBy = orderBy {
            try encodeContainer.encode(orderBy.rawValue, forKey: .orderBy)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attributeNameDecoded = try containerValues.decodeIfPresent(SearchResourcesSortAttributeName.self, forKey: .attributeName)
        attributeName = attributeNameDecoded
        let orderByDecoded = try containerValues.decodeIfPresent(OrderBy.self, forKey: .orderBy)
        orderBy = orderByDecoded
    }
}