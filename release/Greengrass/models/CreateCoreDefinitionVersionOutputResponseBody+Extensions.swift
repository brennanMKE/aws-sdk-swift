// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateCoreDefinitionVersionOutputResponseBody: Equatable {
    public let arn: String?
    public let creationTimestamp: String?
    public let id: String?
    public let version: String?
}

extension CreateCoreDefinitionVersionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationTimestamp = "CreationTimestamp"
        case id = "Id"
        case version = "Version"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let creationTimestampDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationTimestamp)
        creationTimestamp = creationTimestampDecoded
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
    }
}