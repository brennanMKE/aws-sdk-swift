// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AssociateHostedConnectionInputBody: Equatable {
    public let connectionId: String?
    public let parentConnectionId: String?
}

extension AssociateHostedConnectionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectionId
        case parentConnectionId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .connectionId)
        connectionId = connectionIdDecoded
        let parentConnectionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parentConnectionId)
        parentConnectionId = parentConnectionIdDecoded
    }
}