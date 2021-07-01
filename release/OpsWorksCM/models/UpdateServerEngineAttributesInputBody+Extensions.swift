// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateServerEngineAttributesInputBody: Equatable {
    public let serverName: String?
    public let attributeName: String?
    public let attributeValue: String?
}

extension UpdateServerEngineAttributesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case attributeValue = "AttributeValue"
        case serverName = "ServerName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serverNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverName)
        serverName = serverNameDecoded
        let attributeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributeName)
        attributeName = attributeNameDecoded
        let attributeValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributeValue)
        attributeValue = attributeValueDecoded
    }
}