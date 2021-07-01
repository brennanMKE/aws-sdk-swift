// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdatePublishingDestinationInputBody: Equatable {
    public let destinationProperties: DestinationProperties?
}

extension UpdatePublishingDestinationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case destinationProperties = "destinationProperties"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationPropertiesDecoded = try containerValues.decodeIfPresent(DestinationProperties.self, forKey: .destinationProperties)
        destinationProperties = destinationPropertiesDecoded
    }
}