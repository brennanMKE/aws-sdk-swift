// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePlatformEndpointOutputResponseBody: Equatable {
    public let endpointArn: String?
}

extension CreatePlatformEndpointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpointArn = "EndpointArn"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("CreatePlatformEndpointResult"))
        let endpointArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointArn)
        endpointArn = endpointArnDecoded
    }
}