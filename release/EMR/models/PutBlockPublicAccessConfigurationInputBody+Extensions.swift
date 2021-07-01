// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutBlockPublicAccessConfigurationInputBody: Equatable {
    public let blockPublicAccessConfiguration: BlockPublicAccessConfiguration?
}

extension PutBlockPublicAccessConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case blockPublicAccessConfiguration = "BlockPublicAccessConfiguration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let blockPublicAccessConfigurationDecoded = try containerValues.decodeIfPresent(BlockPublicAccessConfiguration.self, forKey: .blockPublicAccessConfiguration)
        blockPublicAccessConfiguration = blockPublicAccessConfigurationDecoded
    }
}