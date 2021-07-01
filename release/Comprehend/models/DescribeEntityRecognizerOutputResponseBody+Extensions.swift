// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeEntityRecognizerOutputResponseBody: Equatable {
    public let entityRecognizerProperties: EntityRecognizerProperties?
}

extension DescribeEntityRecognizerOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case entityRecognizerProperties = "EntityRecognizerProperties"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let entityRecognizerPropertiesDecoded = try containerValues.decodeIfPresent(EntityRecognizerProperties.self, forKey: .entityRecognizerProperties)
        entityRecognizerProperties = entityRecognizerPropertiesDecoded
    }
}