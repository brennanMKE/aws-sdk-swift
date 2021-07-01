// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdatePlacementInputBody: Equatable {
    public let attributes: [String:String]?
}

extension UpdatePlacementInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attributesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .attributes)
        var attributesDecoded0: [String:String]? = nil
        if let attributesContainer = attributesContainer {
            attributesDecoded0 = [String:String]()
            for (key0, attributevalue0) in attributesContainer {
                if let attributevalue0 = attributevalue0 {
                    attributesDecoded0?[key0] = attributevalue0
                }
            }
        }
        attributes = attributesDecoded0
    }
}